; Note: This file is used by the ExtractAssets.bat batch script to define where each file is, how large they are, and their filenames.

lorom
;!ROMVer = $0000						; Note: This is set within the batch script
!WAGH_U = $0001
!WAGH_E = $0002

org $008000
MainPointerTableStart:
	dl MainPointerTableStart,MainPointerTableEnd-MainPointerTableStart
	dl UncompressedGFXPointersStart,(UncompressedGFXPointersEnd-UncompressedGFXPointersStart)/$0C
	dl CompressedGFXPointersStart,(CompressedGFXPointersEnd-CompressedGFXPointersStart)/$0C
	dl DefenderUnknownSPCDatStart,(DefenderUnknownSPCDatEnd-DefenderUnknownSPCDatStart)/$0C
	dl JoustUnknownSPCDatStart,(JoustUnknownSPCDatEnd-JoustUnknownSPCDatStart)/$0C
	dl Robotron2084UnknownSPCDatStart,(Robotron2084UnknownSPCDatEnd-Robotron2084UnknownSPCDatStart)/$0C
	dl SinistarUnknownSPCDatStart,(SinistarUnknownSPCDatEnd-SinistarUnknownSPCDatStart)/$0C
	dl SinistarBrrsStart,(SinistarBrrsEnd-SinistarBrrsStart)/$0C
MainPointerTableEnd:

;--------------------------------------------------------------------

UncompressedGFXPointersStart:
	dl $818A00,$828000,GFX_SelectGameScreen,GFX_SelectGameScreenEnd
	dl $828A28,$82FA68,GFX_TitleScreenLogo,GFX_TitleScreenLogoEnd
	dl $85DA24,$85FE64,GFX_Sinistar_EnemyPointsScreen,GFX_Sinistar_EnemyPointsScreenEnd
	dl $868C32,$86CD32,GFX_DeveloperLogos,GFX_DeveloperLogosEnd
	dl $86D6FB,$86E47B,GFX_SelectGameScreen_01,GFX_SelectGameScreen_01End
	dl $898237,$89C237,GFX_Sinistar_HUDAndFont,GFX_Sinistar_HUDAndFontEnd
	dl $8A8000,$8AA000,GFX_Sinistar_LevelTransitionText,GFX_Sinistar_LevelTransitionTextEnd
	dl $8DD9D7,$8DE457,GFX_Robotron2084_TransitionScreen,GFX_Robotron2084_TransitionScreenEnd
	dl $8EDC9D,$8EDE1D,GFX_UnknownTiles,GFX_UnknownTilesEnd
	dl $8EFA8E,$8EFC70,GFX_Robotron2084_ElectrodeTiles,GFX_Robotron2084_ElectrodeTilesEnd
	dl $8EFC80,$8EFE3C,GFX_Robotron2084_UnknownTiles,GFX_Robotron2084_UnknownTilesEnd
UncompressedGFXPointersEnd:

;--------------------------------------------------------------------

CompressedGFXPointersStart:
	dl $80A848,$80B394,GFX_Sprite_Defender,GFX_Sprite_DefenderEnd
	dl $80B394,$80CF01,GFX_Sprite_DefenderII,GFX_Sprite_DefenderIIEnd
	dl $80CF01,$80F6C0,GFX_Sprite_Joust,GFX_Sprite_JoustEnd
	dl $85C6AE,$85D024,GFX_SinistarTitleScreen,GFX_SinistarTitleScreenEnd
	dl $868000,$868232,GFX_DeveloperLogosScreenText,GFX_DeveloperLogosScreenTextEnd
	dl $86CD32,$86D6FB,GFX_CopyrightScreen,GFX_CopyrightScreenEnd
	dl $86E47B,$86E7F3,GFX_Joust_CrumblingPlatform,GFX_Joust_CrumblingPlatformEnd
	dl $86E7F3,$86E88E,GFX_GameSelectArrows,GFX_GameSelectArrowsEnd
	dl $86E88E,$86F72B,GFX_Joust_LevelTiles,GFX_Joust_LevelTilesEnd
	dl $8CD041,$8CE165,GFX_Sinistar_SinistarPieces,GFX_Sinistar_SinistarPiecesEnd
	dl $8D8000,$8DA956,GFX_Sprite_Robotron2084,GFX_Sprite_Robotron2084End
	dl $8DA956,$8DCC06,GFX_Sprite_Sinistar,GFX_Sprite_SinistarEnd
	dl $8DCC0E,$8DD8F7,GFX_JoustLogo,GFX_JoustLogoEnd
	dl $8DE457,$8DECEA,GFX_CreditsScreen,GFX_CreditsScreenEnd
	dl $8F8000,$8F9632,GFX_Robotron2084TitleScreen,GFX_Robotron2084TitleScreenEnd
	dl $8F9A54,$8FB056,GFX_TodaysHighScoreScreen,GFX_TodaysHighScoreScreenEnd
	dl $8FB056,$8FD73B,GFX_Sprite_SinistarDemoTiles,GFX_Sprite_SinistarDemoTilesEnd
CompressedGFXPointersEnd:

;--------------------------------------------------------------------

DefenderUnknownSPCDatStart:
	dl $85AA9F,$85AAD3,DATA_85AA9F,DATA_85AA9FEnd
	dl $85AAD3,$85ABAE,DATA_85AAD3,DATA_85AAD3End
	dl $85ABAE,$85AC4D,DATA_85ABAE,DATA_85ABAEEnd
	dl $85AC4D,$85ACB6,DATA_85AC4D,DATA_85AC4DEnd
	dl $85ACB6,$85AD6E,DATA_85ACB6,DATA_85ACB6End
DefenderUnknownSPCDatEnd:

;--------------------------------------------------------------------

JoustUnknownSPCDatStart:
	dl $85B3D3,$85B401,DATA_85B3D3,DATA_85B3D3End
	dl $85B401,$85B455,DATA_85B401,DATA_85B401End
	dl $85B455,$85B471,DATA_85B455,DATA_85B455End
	dl $85B471,$85B4E7,DATA_85B471,DATA_85B471End
	dl $85B4E7,$85B4FF,DATA_85B4E7,DATA_85B4E7End
	dl $85B4FF,$85B511,DATA_85B4FF,DATA_85B4FFEnd
	dl $85B511,$85B526,DATA_85B511,DATA_85B511End
	dl $85BCF0,$85BDDF,DATA_85BCF0,DATA_85BCF0End
	dl $85BDDF,$85BE72,DATA_85BDDF,DATA_85BDDFEnd
	dl $85BE72,$85BF30,DATA_85BE72,DATA_85BE72End
JoustUnknownSPCDatEnd:

;--------------------------------------------------------------------

Robotron2084UnknownSPCDatStart:
	dl $8FEC6D,$8FECB1,DATA_8FEC6D,DATA_8FEC6DEnd
	dl $8FECB1,$8FED00,DATA_8FECB1,DATA_8FECB1End
	dl $8FED00,$8FEDDB,DATA_8FED00,DATA_8FED00End
	dl $8FEDDB,$8FEEEE,DATA_8FEDDB,DATA_8FEDDBEnd
	dl $8FEEEE,$8FEFAB,DATA_8FEEEE,DATA_8FEEEEEnd
	dl $8FEFAB,$8FF05F,DATA_8FEFAB,DATA_8FEFABEnd
	dl $8FF07A,$8FF0D0,DATA_8FF07A,DATA_8FF07AEnd
Robotron2084UnknownSPCDatEnd:

;--------------------------------------------------------------------

SinistarUnknownSPCDatStart:
	dl $8B8F59,$8B9008,DATA_8B8F59,DATA_8B8F59End
	dl $8B9008,$8B9071,DATA_8B9008,DATA_8B9008End
	dl $8B9071,$8B90E7,DATA_8B9071,DATA_8B9071End
SinistarUnknownSPCDatEnd:

;--------------------------------------------------------------------

SinistarBrrsStart:
	dl $8B9631,$8BCC55,BRR_Sinistar_Roar,BRR_Sinistar_RoarEnd
	dl $8BCC55,$8BD3C0,BRR_Sinistar_I,BRR_Sinistar_IEnd
	dl $8BD3C0,$8BDFFC,BRR_Sinistar_Am,BRR_Sinistar_AmEnd
	dl $8BDFFC,$8C80ED,BRR_Sinistar_Sinistar,BRR_Sinistar_SinistarEnd
	dl $8C80ED,$8C945E,BRR_Sinistar_Coward,BRR_Sinistar_CowardEnd
	dl $8C945E,$8CA0F4,BRR_Sinistar_Run,BRR_Sinistar_RunEnd
	dl $8CA0F4,$8CAFB8,BRR_Sinistar_Live,BRR_Sinistar_LiveEnd
	dl $8CAFB8,$8CBDBF,BRR_Sinistar_Hunger,BRR_Sinistar_HungerEnd
	dl $8CBDBF,$8CD03D,BRR_Sinistar_Beware,BRR_Sinistar_BewareEnd
SinistarBrrsEnd:

;--------------------------------------------------------------------

GFX_SelectGameScreen:
	db "GFX_SelectGameScreen.bin"
GFX_SelectGameScreenEnd:
GFX_TitleScreenLogo:
	db "GFX_TitleScreenLogo.bin"
GFX_TitleScreenLogoEnd:
GFX_Sinistar_EnemyPointsScreen:
	db "GFX_Sinistar_EnemyPointsScreen.bin"
GFX_Sinistar_EnemyPointsScreenEnd:
GFX_DeveloperLogos:
	db "GFX_DeveloperLogos.bin"
GFX_DeveloperLogosEnd:
GFX_SelectGameScreen_01:
	db "GFX_SelectGameScreen_01.bin"
GFX_SelectGameScreen_01End:
GFX_Sinistar_HUDAndFont:
	db "GFX_Sinistar_HUDAndFont.bin"
GFX_Sinistar_HUDAndFontEnd:
GFX_Sinistar_LevelTransitionText:
	db "GFX_Sinistar_LevelTransitionText.bin"
GFX_Sinistar_LevelTransitionTextEnd:
GFX_Robotron2084_TransitionScreen:
	db "GFX_Robotron2084_TransitionScreen.bin"
GFX_Robotron2084_TransitionScreenEnd:
GFX_UnknownTiles:
	db "GFX_UnknownTiles.bin"
GFX_UnknownTilesEnd:
GFX_Robotron2084_ElectrodeTiles:
	db "GFX_Robotron2084_ElectrodeTiles.bin"
GFX_Robotron2084_ElectrodeTilesEnd:
GFX_Robotron2084_UnknownTiles:
	db "GFX_Robotron2084_UnknownTiles.bin"
GFX_Robotron2084_UnknownTilesEnd:

;--------------------------------------------------------------------

GFX_Sprite_Defender:
	db "GFX_Sprite_Defender.bin"
GFX_Sprite_DefenderEnd:
GFX_Sprite_DefenderII:
	db "GFX_Sprite_DefenderII.bin"
GFX_Sprite_DefenderIIEnd:
GFX_Sprite_Joust:
	db "GFX_Sprite_Joust.bin"
GFX_Sprite_JoustEnd:
GFX_SinistarTitleScreen:
	db "GFX_SinistarTitleScreen.bin"
GFX_SinistarTitleScreenEnd:
GFX_DeveloperLogosScreenText:
	db "GFX_DeveloperLogosScreenText.bin"
GFX_DeveloperLogosScreenTextEnd:
GFX_CopyrightScreen:
	db "GFX_CopyrightScreen.bin"
GFX_CopyrightScreenEnd:
GFX_Joust_CrumblingPlatform:
	db "GFX_Joust_CrumblingPlatform.bin"
GFX_Joust_CrumblingPlatformEnd:
GFX_GameSelectArrows:
	db "GFX_GameSelectArrows.bin"
GFX_GameSelectArrowsEnd:
GFX_Joust_LevelTiles:
	db "GFX_Joust_LevelTiles.bin"
GFX_Joust_LevelTilesEnd:
GFX_Sinistar_SinistarPieces:
	db "GFX_Sinistar_SinistarPieces.bin"
GFX_Sinistar_SinistarPiecesEnd:
GFX_Sprite_Robotron2084:
	db "GFX_Sprite_Robotron2084.bin"
GFX_Sprite_Robotron2084End:
GFX_Sprite_Sinistar:
	db "GFX_Sprite_Sinistar.bin"
GFX_Sprite_SinistarEnd:
GFX_JoustLogo:
	db "GFX_JoustLogo.bin"
GFX_JoustLogoEnd:
GFX_CreditsScreen:
	db "GFX_CreditsScreen.bin"
GFX_CreditsScreenEnd:
GFX_Robotron2084TitleScreen:
	db "GFX_Robotron2084TitleScreen.bin"
GFX_Robotron2084TitleScreenEnd:
GFX_TodaysHighScoreScreen:
	db "GFX_TodaysHighScoreScreen.bin"
GFX_TodaysHighScoreScreenEnd:
GFX_Sprite_SinistarDemoTiles:
	db "GFX_Sprite_SinistarDemoTiles.bin"
GFX_Sprite_SinistarDemoTilesEnd:

;--------------------------------------------------------------------

DATA_85AA9F:
	db "DATA_5157.bin"
DATA_85AA9FEnd:
DATA_85AAD3:
	db "DATA_518B.bin"
DATA_85AAD3End:
DATA_85ABAE:
	db "DATA_5266.bin"
DATA_85ABAEEnd:
DATA_85AC4D:
	db "DATA_5305.bin"
DATA_85AC4DEnd:
DATA_85ACB6:
	db "DATA_536E.bin"
DATA_85ACB6End:

;--------------------------------------------------------------------

DATA_85B3D3:
	db "DATA_07F9.bin"
DATA_85B3D3End:
DATA_85B401:
	db "DATA_0827.bin"
DATA_85B401End:
DATA_85B455:
	db "DATA_087B.bin"
DATA_85B455End:
DATA_85B471:
	db "DATA_0897.bin"
DATA_85B471End:
DATA_85B4E7:
	db "DATA_090D.bin"
DATA_85B4E7End:
DATA_85B4FF:
	db "DATA_0925.bin"
DATA_85B4FFEnd:
DATA_85B511:
	db "DATA_0937.bin"
DATA_85B511End:
DATA_85BCF0:
	db "DATA_1116.bin"
DATA_85BCF0End:
DATA_85BDDF:
	db "DATA_1205.bin"
DATA_85BDDFEnd:
DATA_85BE72:
	db "DATA_1298.bin"
DATA_85BE72End:

;--------------------------------------------------------------------

DATA_8FEC6D:
	db "DATA_172E.bin"
DATA_8FEC6DEnd:
DATA_8FECB1:
	db "DATA_1772.bin"
DATA_8FECB1End:
DATA_8FED00:
	db "DATA_17C1.bin"
DATA_8FED00End:
DATA_8FEDDB:
	db "DATA_189C.bin"
DATA_8FEDDBEnd:
DATA_8FEEEE:
	db "DATA_19AF.bin"
DATA_8FEEEEEnd:
DATA_8FEFAB:
	db "DATA_1A6C.bin"
DATA_8FEFABEnd:
DATA_8FF07A:
	db "DATA_1B3B.bin"
DATA_8FF07AEnd:

;--------------------------------------------------------------------

DATA_8B8F59:
	db "DATA_1145.bin"
DATA_8B8F59End:
DATA_8B9008:
	db "DATA_11F4.bin"
DATA_8B9008End:
DATA_8B9071:
	db "DATA_125D.bin"
DATA_8B9071End:

;--------------------------------------------------------------------

BRR_Sinistar_Roar:
	db "Roar.brr"
BRR_Sinistar_RoarEnd:
BRR_Sinistar_I:
	db "I.brr"
BRR_Sinistar_IEnd:
BRR_Sinistar_Am:
	db "Am.brr"
BRR_Sinistar_AmEnd:
BRR_Sinistar_Sinistar:
	db "Sinistar.brr"
BRR_Sinistar_SinistarEnd:
BRR_Sinistar_Coward:
	db "Coward.brr"
BRR_Sinistar_CowardEnd:
BRR_Sinistar_Run:
	db "Run.brr"
BRR_Sinistar_RunEnd:
BRR_Sinistar_Live:
	db "Live.brr"
BRR_Sinistar_LiveEnd:
BRR_Sinistar_Hunger:
	db "Hunger.brr"
BRR_Sinistar_HungerEnd:
BRR_Sinistar_Beware:
	db "Beware.brr"
BRR_Sinistar_BewareEnd:

;--------------------------------------------------------------------
