
#pragma warning( disable : 4730 )
#pragma warning( disable : 4799 )

#define WIN32_LEAN_AND_MEAN
#define WIN32_EXTRA_LEAN
#define VC_LEANMEAN
#define VC_EXTRALEAN
#include <windows.h>
#include <mmsystem.h>
#include <mmreg.h>
#include "../config.h"
#include <GL/gl.h>
#include "../glext.h"
#include "../shader_code.h"
#include "../oidos.h"

#define WRITEBITMAPS 0
#define WRITEWAV 0

#define ENABLE_MUSIC 1
#define BREAK_COMPATIBILITY 0

#if WRITEBITMAPS
#include "../writebitmaps.h"
#endif



#pragma data_seg(".pixelfmt")
static const PIXELFORMATDESCRIPTOR pfd = {
#if BREAK_COMPATIBILITY
	#if TWO_PASS
			0, 0, PFD_DRAW_TO_WINDOW|PFD_SUPPORT_OPENGL|PFD_DOUBLEBUFFER, PFD_TYPE_RGBA,
			0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, PFD_MAIN_PLANE, 0, 0, 0, 0
	#else
			0, 0, PFD_DRAW_TO_WINDOW|PFD_SUPPORT_OPENGL|PFD_DOUBLEBUFFER, PFD_TYPE_RGBA,
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, PFD_MAIN_PLANE, 0, 0, 0, 0
	#endif
#else
	sizeof(pfd), 1, PFD_DRAW_TO_WINDOW|PFD_SUPPORT_OPENGL|PFD_DOUBLEBUFFER, PFD_TYPE_RGBA,
	32, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 32, 0, 0, PFD_MAIN_PLANE, 0, 0, 0, 0
#endif
};

#pragma data_seg(".screensettings")
static DEVMODE screenSettings = { 
	{0}, 0, 0, sizeof(screenSettings), 0, DM_PELSWIDTH|DM_PELSHEIGHT,
	{0}, 0, 0, 0, 0, 0, {0}, 0, 0, XRES, YRES, 0, 0,
	#if(WINVER >= 0x0400)
		0, 0, 0, 0, 0, 0,
			#if (WINVER >= 0x0500) || (_WIN32_WINNT >= 0x0400)
			0, 0
		#endif
	#endif
};

/*
#ifdef __cplusplus
extern "C" 
{
#endif
int  _fltused = 1;
#ifdef __cplusplus
}
#endif
*/

//----------------------------------------------------------------------------

#pragma data_seg(".glfunctions")
static const char *const strs[] = {
	"glCreateShaderProgramv",
	"glGenProgramPipelines",
	"glUseProgramStages",
	"glBindProgramPipeline",
	"glTexStorage3D",
	"glCopyTexSubImage3D",
	"glUseProgram",
	//"glGetUniformLocation",
	"glUniform1i",
//	"glActiveTexture",
//	"glGenerateMipmap",
    };

#define NUMFUNCIONES (sizeof(strs)/sizeof(strs[0]))

#define oglCreateShaderProgramv	      ((PFNGLCREATESHADERPROGRAMVPROC)myglfunc[0])
#define oglGenProgramPipelines        ((PFNGLGENPROGRAMPIPELINESPROC)myglfunc[1])
#define oglUseProgramStages						((PFNGLUSEPROGRAMSTAGESPROC)myglfunc[2])
#define oglBindProgramPipeline	      ((PFNGLBINDPROGRAMPIPELINEPROC)myglfunc[3])
#define oglTexStorage3D								((PFNGLTEXSTORAGE3DPROC)myglfunc[4])
#define oglCopyTexSubImage3D		      ((PFNGLCOPYTEXSUBIMAGE3DPROC)myglfunc[5])
#define oglUseProgram									((PFNGLUSEPROGRAMPROC)myglfunc[6])
//#define oglGetUniformLocation					((PFNGLGETUNIFORMLOCATIONPROC)myglfunc[7])
#define oglUniform1i									((PFNGLUNIFORM1IPROC)myglfunc[7])
//#define oglActiveTexture							((PFNGLACTIVETEXTUREPROC)myglfunc[9])
//#define oglGenerateMipmap							((PFNGLGENERATEMIPMAPPROC)myglfunc[10])

void entrypoint( void )
{
    // full screen
    //if( ChangeDisplaySettings(&screenSettings,CDS_FULLSCREEN)!=DISP_CHANGE_SUCCESSFUL) return;
    ChangeDisplaySettings(&screenSettings,CDS_FULLSCREEN);
    ShowCursor( 0 );
    // create window
//    HWND hWnd = CreateWindow( "edit",0,WS_POPUP|WS_VISIBLE,0,0,XRES,YRES,0,0,0,0);
//    HWND hWnd = CreateWindow( "", (LPCSTR)0x0C018,WS_POPUP|WS_VISIBLE,0,0,XRES,YRES,0,0,0,0);
    HWND hWnd = CreateWindow((LPCSTR)0x0C018, 0, WS_POPUP|WS_VISIBLE,0,0,XRES,YRES,0,0,0,0);
//    if( !hWnd ) return;
    HDC hDC = GetDC(hWnd);
    // initalize opengl
    SetPixelFormat(hDC,ChoosePixelFormat(hDC,&pfd),&pfd);
		wglMakeCurrent(hDC, wglCreateContext(hDC));

	void *myglfunc[NUMFUNCIONES];

    for( int i=0; i<NUMFUNCIONES; i++ )
    {
        myglfunc[i] = wglGetProcAddress( strs[i] );
    }


	GLuint pipeline;
	const char*const vertex_sources[] = { version_glsl,	discfunc_glsl, vertex_glsl };
	const char*const fragment_sources[] = { version_glsl, discfunc_glsl, fragment_glsl };

	oglGenProgramPipelines(1, &pipeline);
	oglBindProgramPipeline(pipeline);
	oglUseProgramStages(pipeline, GL_VERTEX_SHADER_BIT, oglCreateShaderProgramv(GL_VERTEX_SHADER, sizeof(vertex_sources)/sizeof(vertex_sources[0]), vertex_sources));
	GLuint fragprog = oglCreateShaderProgramv(GL_FRAGMENT_SHADER, sizeof(fragment_sources)/sizeof(fragment_sources[0]), fragment_sources);
	oglUseProgramStages(pipeline, GL_FRAGMENT_SHADER_BIT, fragprog);

//	GLint link_status=0;
//	((PFNGLGETPROGRAMIVPROC)wglGetProcAddress("glGetProgramiv"))(fragprog, GL_LINK_STATUS, &link_status);
//	if(link_status!=GL_TRUE)ExitProcess(-1);

	glBindTexture(GL_TEXTURE_3D, 64);
	oglTexStorage3D(GL_TEXTURE_3D, 1, GL_R8, 64, 64, 64);

	glEnable(GL_POINT_SPRITE);
	glPointSize(7);
	glBlendFunc(GL_ONE, GL_ONE);

#if ENABLE_MUSIC
	Oidos_FillRandomData();
	Oidos_GenerateMusic();
	Oidos_StartMusic();
#endif

#if WRITEWAV
{
	Oidos_FillRandomData();
	Oidos_GenerateMusic();

    HANDLE hf = CreateFile("waveout.wav", 
                   GENERIC_READ | GENERIC_WRITE, 
                   (DWORD) 0, 
                    NULL, 
                   CREATE_ALWAYS, 
                   FILE_ATTRIBUTE_NORMAL, 
                   (HANDLE) NULL); 
    DWORD dwTmp; 

    if (!WriteFile(hf, Oidos_WavFileHeader, 44, 
        (LPDWORD) &dwTmp,  NULL)) 
    {
    }

    if (!WriteFile(hf, Oidos_MusicBuffer, Oidos_WavFileHeader[10], 
        (LPDWORD) &dwTmp,  NULL)) 
    {
    }

		ExitProcess(0);
}
#endif


static int frame=0;

    //do {
	loop:

#if ENABLE_MUSIC
	const float musicticks = Oidos_GetPosition();
	const int time = int((musicticks / Oidos_TicksPerSecond) * 1000.0f);
#else
	const float musicticks = 0;//Oidos_GetPosition();
	const int time = 0*1000+int(double(frame)*16.6666667);//musicticks / Oidos_TicksPerSecond;
#endif

		oglUseProgram(0);

		glClear(GL_COLOR_BUFFER_BIT);
		glEnable(GL_BLEND);

		glViewport(0,0,512,512);

		glBegin(GL_POINTS);
		glTexCoord3i(time, 0, 0);
		for(int i=0;i<512*4*7;++i)
			glVertex2i(i, i);
		glEnd();

		for(char i=0;i<64;++i)
		{
			//static const short xtable[64] = { 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7 };
			//static const short ytable[64] = { 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7 };
			//oglCopyTexSubImage3D(GL_TEXTURE_3D, 0, 0, 0, i, xtable[i], ytable[i], 64, 64);
			//const int x=(i&7)*64,y=i>>3;
			//oglCopyTexSubImage3D(GL_TEXTURE_3D, 0, 0, 0, i, (i&7)<<6, (i>>3)<<6, 64, 64);
			oglCopyTexSubImage3D(GL_TEXTURE_3D, 0, 0, 0, i, (i&7)<<6, (i&56)<<3, 64, 64);
		}

		glViewport(0,0,XRES,YRES);

		oglUseProgram(fragprog);
	  oglUniform1i(0,0);

		glTexCoord3i(time, 0, 3);
		glDisable(GL_BLEND);
		glRects(-1,-1,+1,+1);

		glFinish();

#if WRITEBITMAPS
static unsigned char framepixels[XRES*YRES*4];
glReadBuffer(GL_BACK);
glPixelStorei(GL_PACK_ALIGNMENT, 1);
glReadPixels(0,0,XRES,YRES,GL_BGRA,GL_UNSIGNED_BYTE,framepixels);
//for(int i=0;i<sizeof(framepixels);++i)framepixels[i]=255+i;
for(int y=0;y<(YRES+1)/2;++y)for(int x=0;x<XRES;++x)for(int c=0;c<4;++c){auto b=framepixels[(x+y*XRES)*4+c];framepixels[(x+y*XRES)*4+c]=framepixels[(x+(YRES-1-y)*XRES)*4+c];framepixels[(x+(YRES-1-y)*XRES)*4+c]=b;}
HBITMAP bitmap=CreateBitmap(XRES,YRES,1,32,framepixels);
PBITMAPINFO bitmapinfo=CreateBitmapInfoStruct(hWnd, bitmap);
char filename[1024];
wsprintf(filename, "frames\\frame%06d.bmp", frame);
CreateBMPFile(hWnd, filename, bitmapinfo, bitmap, hDC);
DeleteObject(bitmap);
#endif

++frame;

    wglSwapLayerBuffers( hDC, WGL_SWAP_MAIN_PLANE ); //SwapBuffers( hDC );

		PeekMessageA(0, 0, 0, 0, PM_REMOVE); // <-- "fake" message handling.

		if (musicticks < Oidos_MusicLength && !GetAsyncKeyState(VK_ESCAPE)) goto loop;
	//} while (musicticks < Oidos_MusicLength && !GetAsyncKeyState(VK_ESCAPE));

    #ifdef CLEANDESTROY
    sndPlaySound(0,0);
    ChangeDisplaySettings( 0, 0 );
    ShowCursor(1);
    #endif

    ExitProcess(0);
}
