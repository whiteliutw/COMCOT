! comcot1715_sp9 �䭷�ɼ�
! �䭷�ɼ�ݭn�������O�~�����f�ʮ�L���, �j�M'����R5���O'�M'����R3���O' �ۦ��{���X�������O
!
! 1.����1715 120105 131017 mod_z����\��
! 190624
! 1.����ADJUST_BATHYMETRY (LO,LA)��m�A���̤p���`�ȥ����ܭ�Ӧa�έȫ�A��Xlayer��
! 2.�쥻�a��<�̤p���`, ��������-999(��), �{�b�אּ��������̤p���`
! 
!v1 111025 openmp 
!v2 111118 ��X�ɮפ�����U��Ƨ�
!   111118 CREATE 5 BACKUPS DURING THE ENTIRE SIMULATION DURATION
!v3 111212 DATA NUM_GRID / 12 / ! MAX. NUMBER OF SUB-LEVEL GRIDS
!          => DATA NUM_GRID / 13 /  �l�h�̦h��13�h(���޶}�Τ��}�Ӽh)
!v4 120105 �W�[SPG�x�},�w�]�Ȭ�1,�� Z=Z*SPG, ��SPG=0,Z=0 
!1710 120210 �ץ�v2 �ƥ��ɵL�k���T�QHot Start�����D
!1711 120211 �ץ��ϥ�old format�a�ή榡�b�禡READ_COMCOT_BATHYŪ�J��L�^��
!            �禡READ_COMCOT_BATHY TMP�S�Ψ�,H��LO%H���N
!1712 130904 1.�}�ҨI�n���Ҧ��� hotstart �W�[���a����(LO%H)��X�B�J
!            2.111118�����q�ƥ��令comcot1712.ctl�W�[BCACKUP TIME�ܼ�, 
!              �C���jBCACKUP TIME��ƥ��@���B�̫�ɶ���ƥ�
!            3.���� time.dat �M ini_surface.dat �ɮ׿�X
!1713 130911
!     1.���ctl�̭� 120105��SPG �M 130904�� backup_time Ū����m
!     2.SPG�ܼƧ�WCONZ, ��CONZ�}�C�����ܼƭȤ�����99,�� Z=CONZ, (�Y���w�`�ƭ�,���줣�H�ɶ��ܰ�)
!     3.�W�[�ƨ禡SAMEPASS ��l���h������1:1�B�P���y������(�Υd���y��),
!       �l���檽�����������ӰϪ�����M�y�q.
!     4.�Ҧ� ISNAN �禡�Q����
!1714 130912
!     1.�ɶ���X�ܼ�IPRI�MT_INV(��TMIN_INV)�Q���LAYER_PARAMS�Ҳ�,
!       �C�h���U�ۿ�X�ɶ�
!     131014 
!     2.smylie��i�ϥΦh�q�_�h
!1715 131017
!     1.CONZ�ܼƧ�WMOD_Z, 
!       MOD_Z_SWITCH=0 ��MOD_Z�}�C�����ܼƭȤ�����999,�� Z=MOD_Z, (���w�`�ƭ�,���줣�H�ɶ��ܰ�)
!       MOD_Z_SWITCH=1 ���ϥθӥ\��
!       MOD_Z_SWITCH=2 �� Z=Z+MOD_Z
!1715 150402 
!      1.FACTS ��h�d���y�п�J�Ȼs��  xyt�ɴ�����ɱ���  Specify BC  (0-Open;1-Sponge;2-Wall;3-FACTS)   :     3
!       xyt�ɭ쥻��׬O�g�n��, �ثe�令�d���y��
!       ha.xyt�ɤ��찪�ת����cm => m
!       ua.xyt�ɬy�tU����� cm/s => m/s
!       va.xyt�ɬy�tV����� cm/s => m/s
!      2. ctl�ɼW�[ WAVE_INFO%WK_END �ɶ���J(sec) ��W�L�Ӯɶ� wave maker��ɱ��� ��^ �}����ɱ���
!      
!1715 150430
!     1. I6.6 => I7.7 ��X���ɦW�䤤�ɶ��B�J�������h�@���
!     2. Initial Cond. �h�@�� 1+2�P�ɹB�@���ﶵ
!     3. �ϥ�FACTS�ɡAwave maker�ΧQ�Υ~���ɥͦ���l����i�P�ɨϥ� �Y(BC_tybe=3�� �i�fINI_SWITCH=2��5)
!    Ini. Cond.(0:FLT,1:File,2:WM,3:LS,4:0+3,5:1+2) :     2 or 5
!    Specify BC  (0-Open;1-Sponge;2-Wall;3-FACTS)   :     3
!     150504
!    Specify BC  (0-Open;1-Sponge;2-Wall;3-FACTS)   :     4  <=�s�W�ﶵ4, �¥Τ����X�� (�ﶵ3 �y�tX����=�y�q�X��)
!     �u�ΤF����  ha.xyt �ثe���� ua.xyt and va.xyt ���Ӭy�t�Ȥ��|�Ψ�
!     150525
!     friction_layerXX.dat ��X�M��J�q1.6��COMCOT�榡�令
!      DO J = JS,JE !150525
!         WRITE (23,*) LO%FRIC_VCOEF(:,J)
!      ENDDO
!
!1715 150612 
!     1.hotstart ������X�MŪ�J�令
!      DO J = JS,JE
!         WRITE (25,*) LO%Z(:,J,1)
!      ENDDO
!     2.��l���쪺 Ū�J�N1.6��COMCOT�榡�ﶵ�令
!      DO J=JS,JE
!            READ (99,*) Z(:,J) !150612 
!      END DO
!
!1715sp3 170220
!     1.�Ĥ@�h�y���y�аʶq��{���W�[����ʥ~�O�j�����O�M�����O,  
!       ctl�ɪ�Ini. Cond. =6 �ϥθӥ\��
!     2.�����X�ɮ榡F9.4�אּE11.3 �p���I3�쪺��ǰO��
!   
!     180621
!     1. INI_SURF.EQ.1�� �i�MBC_TYPE=3��4�P�ɨϥ�  ��l������+��ɦۭq��
!
!     180702
!     1. 170220�쥻�t�~��CWB�䭷�Ҧ����~�O��pa_wsx_wsy.txt���ѵ�COMCOT�A
!        ���]�ɡB�ŸѪR�שM�O����Ҷq�C
!        �NCWB�Ҧ��g��COMCOT�{���X�C�����ѻ䭷�Ѽ���typhoon_parameter.txt
!******************* MODIFICATION RECORDS *****************************
!
! 1.  COMCOT (CORNELL MULTIGRID COUPLED TSUNAMI MODEL) VERSION 1.4
!     ALL RIGHTS RESERVED.
! 2.  REVISED BY S. N. SEO BASED ON SHUTO'S MODEL (AUG. 10, 1993)
! 3.  VERSION 1.0 ARRANGED BY YONGSIK CHO (SEP. 15, 1993)
! 4.  NONLINEAR MODEL, AUTOMATIC INITIAL SURFACE INTERPOLATION, 
! 5.  GENERAL GRID MATCHING, USER INTERFACE IS INTRODUCED 
!     BY SEUNG-BUHM WOO (1999, 3.)
! 6.  GRID AND FAULT PARAMETER MODULES INTRODUCED BY TOM LOGAN (ARSC, 
!	  NOV., 2002)
!
!.....MODIFICATIONS/IMPROVEMENTS (XIAOMING WANG)
!      1. FIXED BUGS IN CONNECTING BOUNDARY INTERPOLATION 
!		  (ARRAY OVERFLOW), 03/21/2003
!      2. APPLY BOTH CARTESIAN AND SPHERICAL COORDINDATE SYSTEMS (FOR 
!		  OUTEST LAYER), 05/20/2003
!      3. ADD BOTTOM MOTION IN LINEAR MODEL FOR TENTATIVE TRY, JUN20 2003
!      4. FIX ERRORS IN INITIAL SURFACE CALCULATION (SMYLIE'S MODEL) 
!      5. MODIFICATION ON INITIAL SURFACE PROFILE CALCULATION, 
!		  07/13/2003     
!      6. ADD OKADA'S MODEL TO GENERATE INITIAL SURFACE PROFILE, 
!			08/19/2003
!         APPLY MULTIPLE LAYERS OF THE SAME LEVEL (09/04/2003)
!      7. MIGRATION FROM FORTRAN 77 TO FORTRAN 90 (10/07/2003) 
!         MAKE EVERYTHING PARAMETER-DRIVEN 
!      8. COMBINE ALL SIMILAR SUBROUTINES (11/19/2003)
!      9. REORGANIZE NONLINEAR PARTS  (BASED ON IMPROVEMENTS BY 
!			TOM LOGAN, ARSC, 12/29/2003)
!     10. USE ARBITRARY INITIAL SURFACE PROFILE VIA AN EXTERNAL 
!		  FILE (01/23/2004)
!     11. REFINE MOVING BOUNDARY ALGRITHM (02/12/2004)
!     12. TESTING MOVING BOUNDARY AND REMOVE UNNECESSARY VARIABLES 
!		  (02/28/2004)
!     13. ADD WAVE MAKER SUBROUTINE TO GENERATE SINE AND SOLITARY WAVES
!         ADD BOLIQUE INCIDENT WAVE INTO WAVE MAKER 
!     14. ADD ARBITRAY TIME SERIES OF ELEVATION INTO WAVE MAKER 
!		  (FOR BENCHMARK IN CATALINA LONG WAVE WORKSHOP 2004)
!     15. REMOVE SUBROUTINES: PQSTILL,PQTOTAL,INI_MV; 
!		  REFINE CONMOME SUBROUTINE (MAY 29,2004)
!     16. IN SUBROUTINE JNQ, INTERPOLATE FLUX INSTEAD OF VELOCITY 
!		  (VELOCITY DISCONTINUOUS ACROSS INTERFACE!!!)  (NOV 2004)
!     17. INCREASE RUNUP CUTOFF (ELMAX) FROM 20M TO 50M DUE TO 2004 
!		  TSUNAMI (JAN 2005)
!     18. ADD SUBMARINE LANDSLIDE SUBROUTINE INTO COMCOT TO INCLUDE 
!		  TRANSIENT MOTION OF SEAFLOOR, WHICH WAS USED TO SIMULATE 2004
!		  INDIAN OCEAN TSUNAMI BASED ON CHEN JI'S TRANSIENT FAULT MODEL
!		 (MARCH 2005)
!     19. REFINE WAVE MAKER SUBROUTINE, REMOVE BUGS FOUND 
!         AND ADD THE CAPABILITY TO GENERATE FOCUSING WAVES 
!		  (SEPTEMBER 2006)
!     20. IMPROVE THE MAPPING ALGORITHM OF INITIAL DISPLACEMENT FROM 
!		  SPHERICAL COORDINATES TO CARTESIAN COORDINATES. THE ORIGINAL
!		  ONE IS VERY ROUGH AND WILL RESULT IN A LARGE LOCATION 
!		  DISCREPANCY AS LATITUDE INCREASES. 
!         (TOGETHER WITH TSO-REN WU, NCU, OCTOBER 2006)
!.........
!     COMCOT V1.6 WAS CREATED AND MAINTAINED BY XIAOMING WANG. 
!	  FOR ADDITIONAL INFO AND BUGS/ERRORS FOUND, PLEASE CONTACT HIM AT 
!	  XW46@CORNELL.EDU
!.........
!     21. SEVERAL BUGS WERE FOUND IN VERSION 1.6, E.G., IN BOTTOM 
!		  FRICTION CALCULATION AND NONLINEAR SUBROUTINES. (JAN 2007)
!     22. TO ENHANCE THE STABILITY ALONG THE INTERFACE OF TWO GRIDS, 
!		  LINEAR SWE IS ADOPTED TO SOLVE THE FIRST 3 GRIDS INSIDE THE 
!		  INTERFACE BETWEEN THE GRID WITH LINEAR SWE AND THE GRID USING 
!		  NONLINEAR SWE WHEN NESTED GRID IS IMPLEMENTED (MARCH 2007)
!     23. ADD ONE SUBROUTINE FOR COURANT NUMBER CHECK (MARCH, 2007)
!     23A. INCREASE OUTPUT ACCURACY FROM 15F8.2 TO 15F9.3 (MARCH, 2007)
!     24. ADD A NEW FUNCTION - SPATIAL VARIATION OF MANNING'S ROUGHNESS 
!		  COEF.; NOW MANNING'S ROUGNESS CAN BE EITHER A CONSTANT OR 
!		  VARIABLE IN SPACE (AS JANAKA WIJETUNGE REQUIRES, APR. 2007)
!     25. ENABLE AN OPTION FOR LATE START: THE SIMULATION WILL SAVE 
!		  RESUMING SNAPSHOTS EVERY 1000 STEPS; SIMULATION COULD BE 
!		  RESUMED FROM ANY OF THESE SAVED SNAPSHOTS. (APR. 2007)
!     26. ADD MANNING'S FORMULA (BOTTOM FRICTION) TO LINEAR MODEL 
!		  (APR. 2007)
!     27. IT WAS ASSUMED THAT THE GRID CELL WAS A SQUARE AND CLOSE TO A 
!		  SQUQRE WHEN THE MIXING OF SPHERICAL AND CARTESIAN COORD. WERE 
!		  ADOPTED (FOR NESTED GRIDS). HOWEVER, LARGE DISCREPANCY OCCURS 
!		  WHEN LATITUDE IS HIGH. FOR EXAMPLE, ONE ARC SECOND WILL BE 
!		  LONGER IN EAST-WEST THAN IN NORTH-SOUTH AT HIGH LATITUDE.
!         NOW, DX AND DY ARE NO LONGER ASSUMED TO BE EQUAL IN CARTESIAN 
!		  AND CALCULATED BASED ON LATITUDE. (MAY, 2007)

!.....DEC 20 2007: IMPROVE NUMERICAL DISPERSION OVER SLOWLY VARYING 
!	               TOPOGRAPHY (CHO 1995, YOON,2002) 
!.....JAN. 2008, ADD SPONGE LAYER SUPPORT.
!.....
!####### CONFIGURATION FILE COMCOT.CTL CHANGED FOR VERSION 1.7 ########
!####### OCT., 2008 (GNS)                                      ########
!//////////////////////////////////////////////////////////////////////
!
!     COMCOT V1.7 WAS CREATED AND MAINTAINED BY XIAOMING WANG. 
!	  FOR ADDITIONAL INFO AND BUGS/ERRORS FOUND, PLEASE CONTACT HIM 
!	  AT XW46@CORNELL.EDU / X.WANG@GNS.CRI.NZ
!
!//////////////////////////////////////////////////////////////////////
!%%%%%# THIS IS STILL A BETA VERSION UNDER DEVELOPMENT !!!!!!!!!!!
!     #. SOLVERS WERE REPACKAGED, NEW COMCOT.CTL INTRODUCED;
!     #. UP TO 12 LEVELS OF NESTED GRIDS CAN BE IMPLEMENTED;
!     #. AUTOMATIC NESTED-GRID MATCHING, SUB-LEVEL GRID REGION IS 
!		 SPECIFIED BY COORDINATES;
!     #. MORE BATHYMETRY FORMAT INPUT; XYZ FORMAT PREFERRED;
!     #. MORE CONTROL ON BOUNDARY CONDITIONS;
!     #. OUTPUT OF TIMEHISTORY RECORDS AND MAX. FREE SURFACE 
!		 DISPLACEMENT;
!     #. ADJUSTABLE GRID SIZE FOR SPHERICAL COORDINATES 
!		 --> GENERATING SQUARE GRIDS;
!     #. TIME STEP SIZE RATIO OF PARENT TO CHILD GRID IS NO LONGER 
!		 FIXED AS 2,
!        BUT DETERMINED BASED ON WATER DEPTH;
!     #. UP TO 99 FAULT PLANES CAN BE IMPLEMENTED AT DIFFERENT TIMES;
!     #. TSUNAMIS CAN BE GENERATED BY A COMBINATION OF FAULT PLANES AND
!		 SUBMARINE LANDSLIDES;
!     #. IMPROVED THE COUPLING SCHEME BETWEEN SPHERICAL COORDINATES AND 
!		 CARTESIAN COORDINATES, CARTESIAN GRIDS CAN BE IMPLEMENTED IN 
!		 HIGH LATITUDE WITHOUT DISTORTION (LESS EFFICIENT, BUT MORE
!		 ACCURATE IN COMPARISON WITH THE OLD SCHEME);
!
!//////////////////////////////////////////////////////////////////////
!*************************VARIABLE DECLARATION*************************
!*
!* NX   X-DIMENSION OF COMPUTATION DOMAIN
!* NY   Y-DIMENSION OF COMPUTATION DOMAIN
!* DX   GRID SIZE
!* DY   GRID SIZE
!* DT   TIME STEP
!* LAYCORD   - COORDINATES USED FOR CURRENT LAYER : SPHERICAL/CARTESIAN
!* LAYGOV    - GOVERNING EQ USED FOR CURRENT LAYER: LINEAR/NONLINEAR
!* LAYSWITCH - IF GRID LAYER IS INCLUDED IN A SIMULATION; 0:YES,1:NO
!* REL_SIZE  - GRID SIZE RATIO OF PARENT GRID TO ITS CHILD GRID
!* 
!* Z(:,:,2) FREE SURFACE ELEVATION
!* M(:,:,2) VOLUME FLUX (OR DISCHARGE) IN X DIRECTION
!* N(:,:,2) VOLUME FLUX (OR DISCHARGE) IN Y DIRECTION
!* HM(:,:,2) VOLUME FLUX AT DISCHARGE POINT
!* HN(:,:,2) VOLUME FLUX AT DISCHARGE POINT
!*
!* DZ(:,:,2) - TOTAL WATER DEPTH (USED FOR DETERMINING MOVING BOUNDARY)
!* FILE IO-UNIT 23, 25, 666, 999, and 1001-9999 RESERVED.
!**********************************************************************
MODULE  LAYER_PARAMS
TYPE LAYER
    INTEGER         :: ID							! IDENTIFICATION NUMBER OF A GRID LAYER
    INTEGER	        :: PARENT						! ID OF ITS FATHER GRID
	INTEGER         :: LEVEL						! GRID LEVEL
    CHARACTER(120)   :: NAME							! FOR FUTURE USE
    CHARACTER(120) 	:: DEPTH_NAME					! FILENAME OF WATERDEPTH DATA

	INTEGER         :: FS							! OPTION: CONTROLLING FORMAT OF INPUT DATA FILE
    INTEGER         :: NX, NY						! DIMENSION OF GRIDS IN X AND Y DIRECTIONS
	REAL, DIMENSION(:,:),POINTER	:: DEFORM		! SEAFLOOR DEFORMATION IF FAULT MODEL IS IMPLEMENTED
    REAL, DIMENSION(:,:,:),POINTER	:: Z			! FREE SURFACE ELEVATION
    REAL, DIMENSION(:,:,:),POINTER	:: M			! VOLUME FLUX IN X
    REAL, DIMENSION(:,:,:),POINTER	:: N			! VOLUME FLUX IN Y
    REAL, DIMENSION(:,:),POINTER	:: H			! STILL WATER DEPTH AT T = 0.0
    REAL, DIMENSION(:,:,:),POINTER	:: HT			! TRANSIENT WATER DEPTH AT T = N*DT AND T = (N+1)*DT
	REAL, DIMENSION(:,:),POINTER    :: HP			! STILL WATER DEPTH AT DISCHARGE POINT P (I+1/2,J)
	REAL, DIMENSION(:,:),POINTER    :: HQ			! STILL WATER DEPTH AT DISCHARGE POINT Q (I,J+1/2)
	REAL, DIMENSION(:,:,:),POINTER  :: DH			! BEING USED FOR SEDIMENT TRANSPORT
    REAL, DIMENSION(:,:,:),POINTER	:: DZ			! TOTAL WATER DEPTH, FOR MOVING BOUNDARY
    REAL, DIMENSION(:,:),POINTER    :: R1			! R0 TO R6 : COEFFICIENTS FOR SPHERICAL COORD
    REAL, DIMENSION(:,:),POINTER    :: R2
    REAL, DIMENSION(:,:),POINTER    :: R3
    REAL, DIMENSION(:,:),POINTER    :: R4
    REAL, DIMENSION(:,:),POINTER    :: R5
    REAL, DIMENSION(:),POINTER      :: R6
    REAL, DIMENSION(:,:),POINTER    :: R0			! R0 : COEFFICIENTS FOR SPHERICAL COORD
	REAL, DIMENSION(:,:),POINTER    :: R11			! R21: COEFFICIENTS FOR SPHERICAL COORD
	REAL, DIMENSION(:,:),POINTER    :: R21			! R21: COEFFICIENTS FOR SPHERICAL COORD
	REAL, DIMENSION(:,:),POINTER    :: R22			! R21: COEFFICIENTS FOR SPHERICAL COORD
    REAL, DIMENSION(:,:),POINTER    :: XFLUX		! INTERNAL USE, VOLUME FLUX AT CONNECTING INTERFACE, FOR FLUX INTERPOLATION THROUGH NESTING INTERFACE
    REAL, DIMENSION(:,:),POINTER    :: YFLUX		! INTERNAL USE, VOLUME FLUX AT CONNECTING INTERFACE, FOR FLUX INTERPOLATION THROUGH NESTING INTERFACE
!	REAL, ALLOCATABLE	:: XFLUX(:,:)
!	REAL, ALLOCATABLE	:: YFLUX(:,:)
	REAL, DIMENSION(:),POINTER      :: X			! X COORDINATE OF GRIDS
	REAL, DIMENSION(:),POINTER      :: Y			! Y COORDINATE OF GRIDS
	REAL, DIMENSION(:),POINTER      :: XT			! X COORDINATE OF GRIDS (TEMP)
	REAL, DIMENSION(:),POINTER      :: YT			! Y COORDINATE OF GRIDS (TEMP)
    REAL                :: DX						! GRID SIZE IN X DIRECTION
	REAL                :: DY						! GRID SIZE IN Y DIRECTION 
	REAL, DIMENSION(:),POINTER      :: DEL_X		! VARIABLE GRID SIZE IN X DIRECTION
	REAL, DIMENSION(:),POINTER      :: DEL_Y		! VARIABLE GRID SIZE IN Y DIRECTION
    REAL                :: DT						! TIME STEP
    REAL                :: RX						! R=DT/DX
    REAL                :: RY						! R=DT/DY
    REAL                :: GRX						! GR=GRAV*DT/DX
    REAL                :: GRY						! GR=GRAV*DT/DY
	!�ثe�� LO%INI_SWITCH=LA(I)%INI_SWITCH=INI_SURF 
	INTEGER             :: INI_SWITCH				! SWITCH FOR INITIAL CONDITION (0:FLT,1:File,2:WM,3:LS,4:FLT+LS)
	!�ثe�� LO%BC_TYPE=LA(I)%BC_TYPE=BC_TYPE
	INTEGER				:: BC_TYPE					! BOUNDARY CONDITION (FOR LAYER01 ONLY) (0-Open;1-Sponge;2-Wall;3-FACTS)
	INTEGER				:: DIM						! DIMENSION: 1 -- ONE-DIMENSIONAL; 2 -- TWO-DIMENSIONAL
    INTEGER				:: LINCHK					! FOR INTERNAL PURPOSE, 0 - WITHOUT CONVECTION TERMS; 1- WITH CONVECTION TERMS
    INTEGER				:: MODSCM					! FOR INTERNAL PURPOSE, 0 - WITH MODIFIED SCHEME; 1 - WITHOUT MODIFIED SCHEME
	!VARIABLES RELATED TO BOTTOM FRICTION
    INTEGER             :: FRIC_SWITCH				! 0-USE MANNING'S FORMULA,CONST. COEF;1-NO FRICTION; 2-VARIABLE COEF; 3-SEDIMENT TRANS
	REAL                :: FRIC_COEF				! MANNING'S ROUGHNESS COEFFICIENT
	REAL, DIMENSION(:,:),POINTER    :: FRIC_VCOEF   ! VARIABLE MANNING'S ROUGHNESS COEF.
	!VARIABLES RELATED TO NUMERICAL DISPERSION
	INTEGER,DIMENSION(:,:),POINTER  :: MASK
	REAL, DIMENSION(:,:),POINTER    :: ALPHA		! VARIABLE FOR IMPROVEMENT OF NUMERICAL DISPERSION
	REAL, DIMENSION(:,:),POINTER    :: A1X
	REAL, DIMENSION(:,:),POINTER    :: A2X
	REAL, DIMENSION(:,:),POINTER    :: A1Y
	REAL, DIMENSION(:,:),POINTER    :: A2Y
	REAL, DIMENSION(:,:,:),POINTER  :: CF
	REAL, DIMENSION(:,:,:),POINTER  :: CB
	REAL, DIMENSION(:,:),POINTER    :: M0			! VOLUME FLUX IN X AT T=N-1
	REAL, DIMENSION(:,:),POINTER    :: N0			! VOLUME FLUX IN Y AT T=N-1
	REAL, DIMENSION(:,:),POINTER    :: SPONGE_COEFX	!COEFICIENTS USED FOR SPONGE LAYER IMPLEMENTATION
	REAL, DIMENSION(:,:),POINTER    :: SPONGE_COEFY	!COEFICIENTS USED FOR SPONGE LAYER IMPLEMENTATION
	REAL, DIMENSION(:,:),POINTER    :: Z_MAX		! MAXIMUM WATER SURFACE ELEVATION
	REAL, DIMENSION(:,:),POINTER    :: Z_MIN		! MAXIMUM WATER SURFACE DEPRESSION
    REAL                :: SOUTH_LAT !F				! LATTITUDE OF SOUTH BOUNDARY (NOTE: SOUTH EDGE OF BOTTOM GRID CELLS !!!)
    INTEGER             :: LAYCORD					! COORDINATE, 0-SPHERI, 1-CART
    INTEGER             :: LAYGOV					! GOVERNING EQ. 0-LINEAR, 1-NONLINEAR
    INTEGER             :: LAYSWITCH				! SWITCH TO TURN ON/OFF CURRENT GRID
	INTEGER             :: FLUXSWITCH				! FLUX OUTPUT SWITCH: 0-OUTPUT FLUX, 1-NO FLUX OUTPUT
	INTEGER             :: SEDI_SWITCH				! SEDIMENT TRANSPORT: 0-ENABLE, 1-DISABLE
    INTEGER             :: REL_SIZE					! GRID SIZE RATIO OF PARENT GRID TO CHILD GRID
	INTEGER				:: REL_TIME					! TIME STEP RATIO OF PARENT GRID TO CHILD GRID
	INTEGER             :: NUM_CHILD				! # OF CHILDREN GRIDS
    INTEGER, DIMENSION(4)         :: CORNERS		! INDICE OF CURRENT GRID'S FOUR CORNER IN ITS PARENT GRID
													! CORNESR(1)=XS;CORNERS(2)=XE;CORNERS(3)=YS;CORNERS(4)=YE
    REAL                          :: X_START		! X COORDINATE OF THE LOWER-LEFT CORNER GRID
	REAL                          :: Y_START		! Y COORDINATE OF THE LOWER-LEFT CORNER GRID
	REAL                          :: X_END			! X COORDINATE OF THE UPPER-RIGHT CORNER GRID
	REAL                          :: Y_END			! Y COORDINATE OF THE UPPER-RIGHT CORNER GRID

    REAL                          :: XO				! X COORDINATE OF THE LOWER-LEFT CORNER GRID IN DEGREES
	REAL                          :: YO				! Y COORDINATE OF THE LOWER-LEFT CORNER GRID IN DEGREES

	REAL                   H_LIMIT					! WATER DEPTH LIMIT, LOWER THAN THIS VALUE WILL BE TREATED AS LAND
	REAL				   TIDE_LEVEL				! TIDAL CORRECTION TO THE MEAN SEA LEVEL (HIGH TIDE > 0; LOW TIDE < 0)
    LOGICAL                UPZ						! ONLY .TRUE. WHEN CARTESIAN GRID IS NESTED IN SPHERICAL GRIDS
	INTEGER				:: SC_OPTION				! OPTION SWITCH TO SELECT COUPLING METHOD BETWEEN SPHERICAL AND CARTESIAN
	INTEGER, DIMENSION(:,:,:),POINTER :: POS		! USED WHEN CARTESIAN GRID IS NESTED IN SPHERICAL GRIDS
	REAL, DIMENSION(:,:,:), POINTER   :: CXY		! USED WHEN CARTESIAN GRID IS NESTED IN SPHERICAL GRIDS
        
	INTEGER   :: IPRT
	REAL                          :: T_INV          !�Ӽh���ɮ׿�X�ɶ� 130912
	!170220 �W�[
	REAL, DIMENSION(:,:),POINTER    :: R31  ! �j�����O�Y��(SPHERICAL)�p��ʶqP��
	REAL, DIMENSION(:,:),POINTER    :: R32  ! �j�����O�Y��(SPHERICAL)�p��ʶqQ��
	REAL, DIMENSION(:,:),POINTER    :: Pa   ! �j�����O(SPHERICAL)�p��ʶqP�MQ
	REAL, DIMENSION(:,:),POINTER    :: WSX  ! ���ŤO(SPHERICAL)�p��ʶqP�� �g�פ�V
	REAL, DIMENSION(:,:),POINTER    :: WSY  ! ���ŤO(SPHERICAL)�p��ʶqQ�� �n�פ�V
	
END TYPE LAYER
END MODULE LAYER_PARAMS

!//////////////////////////////////////////////////////////////////////
! PARAMETER DEFINITION MODULE FOR WAVE MAKER
!//////////////////////////////////////////////////////////////////////
MODULE WAVE_PARAMS
TYPE WAVE
  INTEGER 	    :: MK_TYPE							! WAVE TYPE  (0:SINE, 1: SOLITARY, 2:GIVEN FORM, 3:FOCUSING SOLITARYWAVE)
  INTEGER 	    :: INCIDENT							! INCIDENT DIRECTION(1:TOP,2:B,3:LF,4:RT,5:OBLIQUE)
  INTEGER 	    :: MK_BC							! B.C. AFTER SENDING WAVE IN (1:SOLID, 0:OPEN)
  REAL    	    :: WK_END							! TIME TO CHANGE BOUNDARY SENDING WAVE IN, (SEC)
  REAL          :: W								! WAVE ANGULAR FREQUENCY
  REAL          :: AMP								! CHARACTERISTIC WAVE HEIGHT (METER)
  REAL          :: DEPTH							! CHARACTERISTIC WATER DEPTH (METER)
  REAL          :: POINT(2)							! FOCUS FOR FOCUSING WAVE (POINT(1)=X0, POINT(2)=Y0)
  REAL          :: ANG								! ANGLE FOR OBLIQUE WAVE (IN DEGREES)
  CHARACTER(120) :: FORM_NAME						! FILENAME OF TIMEHISTORY INPUT FILE, FOR FUTURE USE
  INTEGER	    :: FORM_LEN							! NUMBER OF ENTRIES (LINES) IN A GIVEN TIMEHISTORY INPUT FILE
  REAL, DIMENSION(:),POINTER     :: T				! TIME FOR A GIVEN TIME HISTORY INPUT
  REAL, DIMENSION(:),POINTER     :: FSE				! FREE SURFACE ELEVATION FOR A GIVEN TIME HISTORY INPUT
END TYPE WAVE
END MODULE WAVE_PARAMS

!//////////////////////////////////////////////////////////////////////
! PARAMETER MODULE FOR FAULT MODEL
!//////////////////////////////////////////////////////////////////////
MODULE FAULT_PARAMS
TYPE FAULT
    REAL    :: HH					! FOCAL DEPTH, MEASURED FROM MEAN EARTH SURFACE TO THE TOP EDGE OF FAULT PLANE
    REAL    :: L					! LENGTH OF THE FAULT PLANE
    REAL    :: W					! WIDTH OF THE FAULT PLANE
    REAL    :: D					! DISLOCATION
    REAL    :: TH					! (=THETA) STRIKE DIRECTION
    REAL    :: DL					! (=DELTA) DIP ANGLE
    REAL    :: RD					! (=LAMDA) SLIP ANGLE
    REAL    :: YO					! ORIGIN OF COMPUTATIONAL DOMAIN (LATITUDE IN DEGREES)   
    REAL    :: XO					! ORIGIN OF COMPUTATIONAL DOMAIN (LONGITUDE IN DEGREES)
    REAL    :: Y0					! EPICENTER (LATITUDE)	    
    REAL    :: X0					! EPICENTER (LONGITUDE)
	REAL	:: T0					! TIME WHEN THE RUTPURE STARTS
	INTEGER :: SWITCH				! DEFORMATION CALCULATION SWITCH: 0 - FAULT MODEL; 1 - DATAFILE
	INTEGER :: NUM_FLT				! TOTAL NUMBER OF FAULT PLANES
	INTEGER :: FS					! OPTION: CONTROLLING INPUT DATA FORMAT
	CHARACTER(120) 	:: DEFORM_NAME  ! FILENAME OF DEFORMATION DATA
END TYPE FAULT
END MODULE FAULT_PARAMS

!//////////////////////////////////////////////////////////////////////
! PARAMETER MODULE FOR SUBMARINE LAND SLIDE MODEL
!//////////////////////////////////////////////////////////////////////
MODULE LANDSLIDE_PARAMS
TYPE LANDSLIDE
    INTEGER                :: NX					! TOTAL X GRIDS OF LANDSLIDE REGION IN LAYER 1
	INTEGER                :: NY					! TOTAL Y GRIDS OF LANDSLIDE REGION IN LAYER 1
	INTEGER, DIMENSION(4)  :: CORNERS				! INDICES OF LANDSLIDE REGION IN LAYER 1
	REAL                   :: X_START
    REAL                   :: Y_START
	REAL                   :: X_END
	REAL                   :: Y_END
	REAL				   :: XS					! X COORD.OF STARTING LOCATION OF LANDSLIDE
	REAL				   :: YS					! Y COORD.OF STARTING LOCATION OF LANDSLIDE
	REAL				   :: XE					! X COORD.OF ENDING LOCATION OF LANDSLIDE
	REAL				   :: YE					! Y COORD.OF ENDING LOCATION OF LANDSLIDE
	REAL				   :: DISTANCE				! DISTANCE OF LANDSLIDE MOTION
	REAL				   :: SLOPE					! EFFECTIVE SLOPE OF LANDSLIDE PATH
	REAL				   :: A						! SEMI-MAJOR AXIS
	REAL				   :: B						! SEMI-MINOR AXIS
	REAL				   :: THICKNESS				! THICKNESS OF SLIDING VOLUME
	REAL, DIMENSION(:,:,:), POINTER :: SNAPSHOT		! SNAPSHOTS OF TRANSIENT WATER DEPTH DUE TO LANDSLIDE 
	INTEGER                :: NT					! TOTAL # OF SNAPSHOTS OF LANDSLIDE DATA
    REAL                   :: DURATION				! TOTAL DURATION OF LANDSLIDE
	REAL, DIMENSION(:),POINTER     :: T				! TIME SEQUENCE CORRESPONDS TO WATERDEPTH SNAPSHOTS
	INTEGER                :: OPTION				! OPTION: CONTROLLING INPUT DATA
	CHARACTER(120) 	       :: FILENAME				! FILENAME OF INPUT DATA
END TYPE LANDSLIDE
END MODULE LANDSLIDE_PARAMS
!//////////////////////////////////////////////////////////////////////
! PARAMETER MODULE FOR INPUT BOUNDARY CONDITION (FACTS)
!//////////////////////////////////////////////////////////////////////
MODULE BCI_PARAMS
TYPE BCI
    INTEGER                    :: NX				! 
	INTEGER                    :: NY				! 
	INTEGER                    :: NT				! 
    REAL                       :: DURATION			! 
    REAL, DIMENSION(:),POINTER     :: X
	REAL, DIMENSION(:),POINTER     :: Y
	REAL, DIMENSION(:),POINTER     :: T				! 
	REAL, DIMENSION(:,:,:),POINTER  :: Z_VERT		! 
	REAL, DIMENSION(:,:,:),POINTER  :: Z_HORI		! 
	REAL, DIMENSION(:,:,:),POINTER  :: U_VERT		! 
	REAL, DIMENSION(:,:,:),POINTER  :: U_HORI		! 
	REAL, DIMENSION(:,:,:),POINTER  :: V_VERT		! 
	REAL, DIMENSION(:,:,:),POINTER  :: V_HORI		! 
	REAL, DIMENSION(:,:,:),POINTER  :: SNAPSHOT
	REAL, DIMENSION(:,:,:),POINTER  :: SNAPSHOTU
	REAL, DIMENSION(:,:,:),POINTER  :: SNAPSHOTV
	INTEGER                :: FS					! 
	CHARACTER(120) 	       :: FNAMEH				!
	CHARACTER(120) 	       :: FNAMEU				!
	CHARACTER(120) 	       :: FNAMEV				!
	! 150402   TOP,BOTTOM,LEFT,RIGHT 4�� SIDE(4)=1 �k��ɨϥ�FACTS , SIDE(4)=0 �k��ɤ��ϥ�FACTS 
	INTEGER, DIMENSION(4)  :: SIDE		
END TYPE BCI
END MODULE BCI_PARAMS

!//////////////////////////////////////////////////////////////////////
! PARAMETER MODULE FOR TYPHOON(CWB MODEL) 180702
!//////////////////////////////////////////////////////////////////////
MODULE TYPHOON_PARAMS
TYPE TYPHOON
    REAL, DIMENSION(2)     :: time !�ɶ�
    REAL, DIMENSION(2)     :: lon !�g��
	REAL, DIMENSION(2)     :: lat !�n��
	REAL, DIMENSION(2)     :: Pc  !���߮���(mb)
    REAL, DIMENSION(2)     :: Vmax ! �񤤤̤߳j���t(m)
	REAL ilon,ilat,iPc,iRmax,iVmax ! �ɶ�������
	REAL B !�p�ȰѼ�
	REAL X,Y !UTM X,Y�y��
    REAL DIS,THE !X,Y�y�� �Z�䭷���ߪ��Z���M����
    REAL Vw,Vwx,Vwy !���ŤO, x�V���ŤO,y�V���ŤO
	REAL Cd !�즲�Y��
END TYPE TYPHOON
END MODULE TYPHOON_PARAMS

!----------------------------------------------------------------------
      PROGRAM COMCOT
!----------------------------------------------------------------------

!//////////////////////////////////////////////////////////////////////
! PARAMETER DEFINITION FOR GRID	
!//////////////////////////////////////////////////////////////////////

      USE LAYER_PARAMS
	  USE WAVE_PARAMS
	  USE FAULT_PARAMS
	  USE LANDSLIDE_PARAMS
	  USE BCI_PARAMS
	  USE TYPHOON_PARAMS !180702
      TYPE (LAYER)  :: LO
!	  TYPE (LAYER), DIMENSION(12)  :: LA
	  TYPE (LAYER), ALLOCATABLE  :: LA(:)
	  TYPE (WAVE)       :: WAVE_INFO
!	  TYPE (FAULT), DIMENSION(99)  :: FAULT_INFO
	  TYPE (FAULT), ALLOCATABLE  :: FAULT_INFO(:)
	  TYPE (LANDSLIDE)  :: LANDSLIDE_INFO
	  TYPE (BCI)        :: BCI_INFO
	  TYPE (TYPHOON)    :: TPP !180702
      INTEGER           :: INI_SURF
	  INTEGER           :: BC_TYPE,OUT_OPT
	  INTEGER           :: KEND,STAT
	  INTEGER           :: START_TYPE,START_STEP,ISTART
!      REAL              :: TEND, T_INV, H_LIMIT
      REAL              :: TEND, H_LIMIT
	  REAL, ALLOCATABLE :: TS_LOC(:,:)			! FOR TIMEHISTORY RECORDS
	  INTEGER, ALLOCATABLE :: TS_ID(:)			! FOR TIMEHISTORY RECORDS
	  REAL TS_DAT								! FOR TIMEHISTORY RECORDS
	  CHARACTER(LEN=20),ALLOCATABLE :: FNAME(:)	! FOR TIMEHISTORY RECORDS
	  CHARACTER(LEN=200) JOB							! FOR SIMULATION JOB DESCRIPTION
	  REAL              :: VERSION=1.7	  
	  
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn !180702
      REAL              :: dFtime,qq   ! 170220
!
	  ALLOCATE(LA(NUM_GRID))
	  ALLOCATE(FAULT_INFO(NUM_FLT))
!----------------------------------------------------------------------
      write (*,*) '  '
      write (*,*) '***************** COMCOT *******************'
      write (*,*) '*                                          *'                              
      write (*,*) '*            VERSION=',Version,'      *'
      write (*,*) '*                                          *'  
	  write (*,*) '********************************************'
!----------------------------------------------------------------------

!///// READ USER-DEFINED OPTIONS (NO. OF LAYERS, COORDINATE, GOVERN EQN.)
!      CALL READ_CONFIG (LO,LA,TEND,T_INV,INI_SURF,WAVE_INFO,		&
      CALL READ_CONFIG (LO,LA,TEND,INI_SURF,WAVE_INFO,		        &
	                   FAULT_INFO,LANDSLIDE_INFO,BCI_INFO,			&
					   START_TYPE,START_TIME,BC_TYPE,OUT_OPT,       &
					   JOB,BACKUP_TIME)      

!///// READING BATH/TOPO DATA /////////////////////////////////////////
      CALL READ_BATHYMETRY(LO,LA)

!///// Ū�a�_�Ѽ��� typhoon_parameter.txt 180702 /////////////////////////
      IF (LO%LAYCORD .EQ. 0 .and. INI_SURF .EQ. 6 ) THEN        
		! �t�m�䭷�����M���ŤO�ܼƪ��j�p
        ALLOCATE(LO%Pa(LO%NX,LO%NY))  !170220
        ALLOCATE(LO%WSX(LO%NX,LO%NY)) !170220
        ALLOCATE(LO%WSY(LO%NX,LO%NY)) !170220
	  			
        OPEN(UNIT=6666,FILE='typhoon_parameter.txt',STATUS='OLD',IOSTAT=STAT,FORM='FORMATTED')
        IF (STAT /=0) THEN
          PRINT *,"ERROR:: CAN'T OPEN typhoon_parameter.txt; EXITING."
          STOP
        END IF
	! Ū�J�Y2�Ӯɬq���䭷�Ѽư����� 
	!1.�ɶ� 2.���߸g�� 3.���߽n�� 4.���߮��� 5.�񤤤̤߳j���t
        DO K = 1,2 	
          READ (6666,*) TPP%time(K),TPP%lon(K),TPP%lat(K),TPP%Pc(K),TPP%Vmax(K)
        ENDDO
      END IF

	  
 
!///// READ INITIAL CONDITION /////////////////////////////////////////
	  IF (BC_TYPE.NE.3 .and. BC_TYPE.NE.4) THEN  
	     CALL GET_INI_SURF(LO,LA,INI_SURF,WAVE_INFO,FAULT_INFO,		&
													LANDSLIDE_INFO)
	  ENDIF
	  IF ((BC_TYPE.EQ.3 .or. BC_TYPE.EQ.4) .and. (INI_SURF.EQ.1 .or. INI_SURF.EQ.2 .or. INI_SURF.EQ.5)) THEN   !180621
	     CALL GET_INI_SURF(LO,LA,INI_SURF,WAVE_INFO,FAULT_INFO,		&
													LANDSLIDE_INFO)
	  ENDIF
	  
!///// ADJUST BATHYMETRY, TIME STEP AND CALC DEPENDENT PARAMETERS /////
!	  CALL ADJUST_BATHYMETRY (LO,LA) !original code 190624 move to SUBROUTINE READ_BATHYMETRY

	  CALL CR_CHECK (LO,LA)

	  CALL ALPHA_CALC (LO,LA)

	  !CALCULATE PARAMETERS USED FOR SPHERICAL COORD.
      CALL SPHERICAL_PARAMETERS(LO,LA)

!///// SET UP BOUNDARY CONDITIONS ///////////////////////////////////// 
	  IF (BC_TYPE.EQ.1) CALL SPONGE_COEF (LO)
	  IF (BC_TYPE.EQ.2) CALL BC_WALL (LO,WAVE_INFO)
	  IF (BC_TYPE.EQ.3 .or. BC_TYPE.EQ.4) CALL GET_BC_DATA (BCI_INFO,LO)

!/////DETERMINE STARTING TIME STEP # //////////////////////////////////
!      WRITE(*,*) START_STEP
	  START_STEP = NINT(START_TIME/LO%DT)
	  ISTART = START_STEP
      IF (START_TYPE .EQ. 0) ISTART = 1

!//////// DISPLAY INPUT PARAMETERS ////////////////////////////////////
      CALL SCREEN_DISP (LO,LA,FAULT_INFO,LANDSLIDE_INFO,            &
						WAVE_INFO,INI_SURF,TEND,KEND,               &
						START_TYPE,START_TIME,BC_TYPE,              &
						BCI_INFO,OUT_OPT,JOB,BACKUP_TIME)
       

!//////// CREATE DATA FILES FOR TIME SERIES RECORDS OUTPUT ////////////
!	  OPEN DATA FILE TIME.DAT TO WRITE TIME SEQUENCE
!      OPEN (UNIT=999,FILE='time.dat',STATUS='UNKNOWN') ! 130904
!     TIME HISTORY RECORDS CAN BE CREATED FOR UP TO 9999 LOCATIONS
      write(*,*) '435, OUT_OPT=',OUT_OPT
      IF (OUT_OPT.EQ.1 .OR. OUT_OPT.EQ.2) THEN

        NUM_REC = 0
!        TS_LOC = 0.0  !  bug!!!  set value before allocate
        TS_DAT = 0.0
        OPEN (UNIT=25,FILE='ts_location.dat',STATUS='OLD',IOSTAT=STAT)

        IF (STAT /=0) THEN
           PRINT *,"ERROR:: CAN'T OPEN TS_LOCATION.DAT; EXITING."
           STOP
        END IF

        WRITE (*,*) '    OUTPUT TIME HISTORY RECORDS AT:'
        DO WHILE (STAT ==0)
          NUM_REC = NUM_REC + 1
          READ (25,*,IOSTAT=STAT) TEMP1,TEMP2
        ENDDO
        NUM_REC = NUM_REC - 1
        write(*,*) 'stations number=',NUM_REC

        REWIND(25)
        ALLOCATE(TS_LOC(NUM_REC,2))
        ALLOCATE(TS_ID(NUM_REC))
        ALLOCATE(FNAME(NUM_REC))
        TS_LOC = 0.0
        TS_ID = 0
        FNAME = ' '
        DO K = 1,NUM_REC
          READ (25,*) TS_LOC(K,1),TS_LOC(K,2)
          IF (LO%LAYCORD.EQ.0 .AND. TS_LOC(K,1).LT.0.0) THEN
            TS_LOC(K,1) = 360.0 + TS_LOC(K,1)
          ENDIF
          WRITE (*,*) '       ',TS_LOC(K,1),TS_LOC(K,2)
          CALL GAUGE_LAYERID (ID,TS_LOC(K,1),TS_LOC(K,2),LO,LA)
          TS_ID(K) = ID
       ENDDO	 
       CLOSE(25)
       !OPEN DATA FILES TO WRITE TIME HISTORY DATA
       DO NIC = 1,NUM_REC
            WRITE (FNAME(NIC),1) NIC
 1          FORMAT('ts/ts_record',I4.4,'.dat') !111118
            IO_UNIT = 1000+NIC
            OPEN (IO_UNIT,FILE=FNAME(NIC),STATUS='UNKNOWN')
         ENDDO
      END IF 
!......................................................................  
!         PAUSE	  	  
	   
!////////////////////// SIMULATION BEGINS /////////////////////////////
      WRITE (*,*) '    '
	  WRITE (*,*) '***************** OUTPUT RESULTS ******************'
      WRITE (*,*) 'TIMESTEP          MINUTE'
	  TIME = DBLE(ISTART-1)*LO%DT
!	  T_MINUTES = TIME/60.0

!.....OUTPUT TIME SEQUENCE AND TIME SERIES DATA AT T = 0.0
	  IF (ISTART.EQ.1) THEN
!		 WRITE (999,*) TIME ! 130904
		 CALL ALL_PRT (ISTART-1,LO,LA)
		 IF (OUT_OPT.EQ.1 .OR. OUT_OPT.EQ.2) THEN
            DO NIC = 1,NUM_REC
		       CALL GET_TS (TS_DAT,TS_LOC(NIC,1),TS_LOC(NIC,2),		&
												LO,LA,TS_ID(NIC))
!*			  WRITE(*,*) TS_LOC(NIC,1),TS_LOC(NIC,2),TS_DAT
			   IO_UNIT = 1000+NIC
		       WRITE(IO_UNIT,'(F10.5)') TS_DAT
            ENDDO
		 ENDIF
	  ENDIF
      DO K = ISTART,KEND
         TIME = TIME+LO%DT
		 T_MINUTES = TIME/60.0
         IF (MOD(K,50) .EQ. 0) THEN !150402 �令50�B��X�@��
            WRITE (*,'(I9,8X,F9.3)') K,T_MINUTES
         ENDIF

!.... .. CALL HOT START FUNCTION
!         IF (K .EQ. START_STEP) THEN
!		    CALL HOT_START (LO,LA,START_TYPE,START_STEP)
!		 ENDIF
! 120210  130904
         IF ( (K .EQ. START_STEP) .AND. (START_TYPE .GT. 0) ) THEN ! use hotstart
		    CALL HOT_START (LO,LA,START_TYPE,START_STEP)
			CALL ALL_PRT (ISTART,LO,LA) ! �g�Xhotstart���Ū�J�᪺���
	     ELSE
			! CREATE BACKUP FILES FOR HOTSTART
		    IF (K.GT.1 .AND. MOD(K,floor(BACKUP_TIME/LO%DT)) .EQ. 0) THEN ! backup per BACKUP_TIME(sec)
			   CALL HOT_START (LO,LA,0,K)
			ELSEIF (K .EQ. KEND) THEN ! last step
		       CALL HOT_START (LO,LA,0,K)
		    ENDIF	
		 ENDIF
!....... CALL MULTIPLE FAULT PLANE MODEL
         IF (INI_SURF .EQ. 0 .OR. INI_SURF .EQ. 4) THEN
		    CALL GET_FLOOR_DEFORM (LO,LA,FAULT_INFO,TIME)
		 ENDIF
!... ...CALL LANDSLIDE MODEL 
		 IF ( INI_SURF .EQ. 3 .OR. INI_SURF .EQ. 4 ) THEN
		    IF ( TIME.GE.LANDSLIDE_INFO%T(1) .AND.					&
		         TIME.LE.LANDSLIDE_INFO%T(LANDSLIDE_INFO%NT) ) THEN
		       CALL LAND_SLIDE(LO,LANDSLIDE_INFO,TIME)
		    ENDIF
	     ENDIF

!////////SOLVE MASS CONSERVATION EQN FOR LAYER 1 (THE OUTEST LAYER)
         !!....CALL SEDIMENT TRANSPORT MODEL
         IF (LO%LAYCORD.NE.0 .AND. LO%SEDI_SWITCH .EQ. 0) THEN
		    CALL SED_TRANSPORT (LO) 
         ENDIF

         CALL MASS (LO)
		 
!.......SOLVE RADIATION OPEN BOUNDARY
         CALL OPEN (LO)	

!.......APPLY FACTS INPUT CONDITION
! 150504 =4��, FACT �u�Ψ�ha.txt��ɤ���, �䤤ua.txt�Mva.txt��n���y�q�����|�QCALL MOMENT�~��
         IF (BC_TYPE.EQ.4) THEN
		    IF (TIME.GE.BCI_INFO%T(1) .AND. 						&
							TIME.LT.BCI_INFO%T(BCI_INFO%NT)) THEN
		       CALL BC_INPUT (BCI_INFO,LO,TIME,BC_TYPE) ! 150504
			ENDIF
		 ENDIF

!.......CALL WAVE MAKER TO GENERATE WAVES
!         IF (INI_SURF .EQ. 2) THEN 
         IF (((INI_SURF .EQ. 2) .OR. (INI_SURF .EQ. 5)) .AND. TIME .LE. WAVE_INFO%WK_END ) THEN ! 150402
            CALL WAVE_MAKER (TIME,LO,WAVE_INFO)
		 ENDIF

!//////////////////////////////////////////////////////////////////////
!        CALL SUBLAYER COUPLED MODEL
!//////////////////////////////////////////////////////////////////////
         IF (LO%NUM_CHILD .GE. 1)  CALL ALL_GRID (LO,LA)

		 
!----------  ��CWB�䭷�Ҧ����� �����M���ŤO(C-grid����y�Ъ���) 180702
             IF (INI_SURF .EQ. 6) THEN
         !�p�G�Ҧ��ɶ��W�L�����ɶ��AŪ�U�@�Ӯɶ��q�@����
         IF (TIME .GT. TPP%time(2)) THEN !
			TPP%time(1)=TPP%time(2) !�쥻�s�������ª�
			TPP%lon(1)=TPP%lon(2)
			TPP%lat(1)=TPP%lat(2)
			TPP%Pc(1)=TPP%Pc(2)
			TPP%Vmax(1)=TPP%Vmax(2)
          ! Ū�s�@�q�ɶ����аO
            READ (6666,*) TPP%time(2),TPP%lon(2),TPP%lat(2), &
				TPP%Pc(2),TPP%Vmax(2)		
         ENDIF
          !------�䭷�ѼƮɶ�����------
         dFtime=TPP%time(2)-TPP%time(1)
		 TPP%ilon=(TPP%lon(2)*(TIME-TPP%time(1))+            &
           TPP%lon(1)*(TPP%time(2)-TIME))/dFtime
		 TPP%ilat=(TPP%lat(2)*(TIME-TPP%time(1))+            &
           TPP%lat(1)*(TPP%time(2)-TIME))/dFtime
		 TPP%iPc=(TPP%Pc(2)*(TIME-TPP%time(1))+              &
           TPP%Pc(1)*(TPP%time(2)-TIME))/dFtime
		 TPP%iVmax=(TPP%Vmax(2)*(TIME-TPP%time(1))+          &
           TPP%Vmax(1)*(TPP%time(2)-TIME))/dFtime
		   
		 ! CWB MODEL TPP%iRmax �U���P�_���o�쪺���Okm
		IF (TPP%iPc .GE. 990.0) THEN 
		  TPP%iRmax=42.6-0.86*(TPP%iPc-990.0) 
		ELSEIF (TPP%iPc .GE. 980.0) THEN
		  TPP%iRmax=51.0-0.84*(TPP%iPc-980.0)
		ELSEIF (TPP%iPc .GE. 970.0) THEN
		  TPP%iRmax=58.4-0.74*(TPP%iPc-970.0)
		ELSEIF (TPP%iPc .GE. 960.0) THEN
		  TPP%iRmax=63.0-0.46*(TPP%iPc-960.0)
		ELSEIF (TPP%iPc .GE. 930.0) THEN
		  TPP%iRmax=70.0-0.234*(TPP%iPc-930.0)
		ELSEIF (TPP%iPc .GE. 870.0) THEN
		  TPP%iRmax=80.0-0.167*(TPP%iPc-870.0)
		ELSE          
		  TPP%iRmax=80.0
		ENDIF
		! TPP%iRmax ����ʬOkm => m
		TPP%iRmax=TPP%iRmax*1000.0
		 
		!�p�ȰѼ�B(peakness parameter)
		TPP%B=(TPP%iVmax/5.375)**2.0/(Pn-TPP%iPc)
		DO J=1,LO%NY
          DO I=1,LO%NX
		  !--- �p����� ---  
		    !��a�g�n�׮y��LO%X(I),LO%Y(J)�H�䭷���߸g�n��(TPP%ilon,TPP%ilat)�����I,�p��P�䭷���ߪ��Z��TPP%X,TPP%Y(m)
            CALL SPH_TO_UTM (TPP%X,TPP%Y,LO%X(I),LO%Y(J),TPP%ilon,TPP%ilat)			
			!�y�жZ�䭷���ߪ��Z��			
            TPP%DIS=HYPOT(TPP%X,TPP%Y) !����SQRT(TPP%X**2+TPP%Y**2)
		    !TPP%DIS=TPP%DIS*0.001 !m=>km
			
		    LO%Pa(I,J)=TPP%iPc+(Pn-TPP%iPc)*EXP(-(TPP%iRmax/TPP%DIS)**TPP%B) ! ������
            LO%Pa(I,J)=(LO%Pa(I,J)-Pn)*100 ! ������`������ ���@��(mb)�੬(pa) 1mb=100pa
			
            !�Ѯ�H���ҩw�q���z�Q����vw��
            TPP%Vw=2*TPP%iVmax*TPP%iRmax*TPP%DIS/(TPP%iRmax**2+TPP%DIS**2)
			TPP%THE=ATAN2(TPP%Y,TPP%X)+90.0*PI/180.0 ! �p���a�y�лP�䭷���ߧ��� �A�[90�׬����V��
			TPP%Vwx=TPP%Vw*COS(TPP%THE) !x��V���t
			TPP%Vwy=TPP%Vw*SIN(TPP%THE) !y��V���t
			
        !--- Large and Pond, 1981, Powell, 2003 �U���t�϶�������Cd (drag coefficient)
            IF (TPP%Vw .GE. 26.0) THEN
			  TPP%Cd=2.16
            ELSEIF (TPP%Vw .GE. 10.0) THEN
			  TPP%Cd=0.49+0.065*ABS(TPP%Vw)
            ELSEIF (TPP%Vw .GE. 3.0) THEN
			  TPP%Cd=1.14
            ELSEIF (TPP%Vw .GE. 1.0) THEN
			  TPP%Cd=0.62+1.56/ABS(TPP%Vw)
			ELSE !ELSEIF (TPP%Vw .GE. 0.0) THEN
			  TPP%Cd=2.18
            ENDIF
    
            TPP%Cd=TPP%Cd*1e-3
            !Vwx,Vwy �����W10 ���سBx,y���t
			!x��V���ŤO kg/m^3 * m^/2/T^2 = kg/m^2 * �[�t�� = ��q*�[�t��/���n (N/m^2)
		    LO%WSX(I,J)=RHO_A*TPP%Cd*TPP%Vwx*TPP%Vw
			!y��V���ŤO  kg/m^3 * m^/2/T^2 = kg/m^2 * �[�t�� = ��q*�[�t��/���n (N/m^2)
			LO%WSY(I,J)=RHO_A*TPP%Cd*TPP%Vwy*TPP%Vw
          ENDDO
        ENDDO
             ENDIF
!//////////////////////////////////////////////////////////////////////
!        SOLVE MOMENTUM CONSERVATION EQN FOR LAYER 1
!//////////////////////////////////////////////////////////////////////
         CALL MOMENT (LO)
		 
! 150402 =3��, FACT �Q��ha.txt, ua.txt�Mva.txt �p����ɬy�q
         IF (BC_TYPE.EQ.3) THEN ! 150402
		    IF (TIME.GE.BCI_INFO%T(1) .AND. 						&  ! 150402
							TIME.LT.BCI_INFO%T(BCI_INFO%NT)) THEN  ! 150402
		       CALL BC_INPUT (BCI_INFO,LO,TIME,BC_TYPE)  ! 150402  150504
			ENDIF  !!!!!!150402
		 ENDIF  !!!!!!150402
!.......USE SPONGE LAYER .....
         IF (BC_TYPE.EQ.1) CALL SPONGE_LAYER(LO)
!*!.......WALL BOUNDARY
         IF (BC_TYPE.EQ.2) CALL BC_WALL (LO,WAVE_INFO)		 
!......................................................................
!       OUTPUT RESULTS AT GIVEN TIME INTERVAL (MINUTE)
!......................................................................
!         IF (MOD(K,IPRT) .EQ. 0) THEN
!            CALL ALL_PRT (K,LO,LA)
!         ENDIF
         !130912 �C�h���U�۪���X�ɶ�
         IF (MOD(K,LO%IPRT) .EQ. 0) THEN
            CALL DATA_PRT (K,LO)
         ENDIF

		 DO I=1,NUM_GRID
           IF (LA(I)%LAYSWITCH==0  .AND. MOD(K,LA(I)%IPRT)==0 ) THEN
              CALL DATA_PRT (K,LA(I))
           ENDIF
		 ENDDO
		 
		 IF (OUT_OPT.EQ.0 .OR. OUT_OPT.EQ.2) THEN
		    CALL MAX_AMP (LO,LA,TIME,TEND)
		 ENDIF
!.......UPDATE VARIABLES OF LAYER 01 (LO) FOR NEXT TIME STEP
         CALL CHANGE(LO)
!.......OUTPUT TIME SEQUENCE AND TIME HISTORY RECORDS AT T = K*LO%DT
!         WRITE (999,*) TIME ! 130904
		 IF (OUT_OPT.EQ.1 .OR. OUT_OPT.EQ.2) THEN
            DO NIC = 1,NUM_REC
		       CALL GET_TS (TS_DAT,TS_LOC(NIC,1),TS_LOC(NIC,2),		&
												LO,LA,TS_ID(NIC))
!*			  WRITE(*,*) TS_LOC(NIC,1),TS_LOC(NIC,2),TS_DAT
			   IO_UNIT = 1000+NIC
		       WRITE(IO_UNIT,'(F10.5)') TS_DAT
            ENDDO
		 END IF
      END DO

!..... CLOSE ALL OPENNED DATA FILES
!	  CLOSE(999) ! 130904
	  IF (OUT_OPT.EQ.1 .OR. OUT_OPT.EQ.2) THEN
	     DO NIC = 1,NUM_REC
	        CLOSE(1000+NIC)
	     ENDDO
      END IF
      IF (INI_SURF .EQ. 6) THEN	!170220 ����pa_wsx_wsy.xyt��
        CLOSE(6666) 
      END IF
      END      
!//////////////// END OF MAIN PROGRAM /////////////////////////////////

!//////////////////////////////////////////////////////////////////////
      BLOCK DATA
         COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					   NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
         DATA ELMAX    / -50.0 /			! UPPER LIMIT OF MAXIMUM RUNUP !
         DATA GRAV     / 9.807 /			! GRAVITY
         DATA PI       / 3.14159265358979 /
	     DATA R_EARTH  / 6378000.0 /		! RADIUS OF THE EARTH
	     DATA GX       / 1.0E-5 /			! FOR INUNDATION, DZ=0.0 IF DZ < GX
	     DATA EPS      / 1.0E-13 /			! Z,U,V = 0.0 IF < EPS
	     DATA ZERO     / 0.0 /
	     DATA ONE      / 1.0 /
	     DATA NUM_GRID / 13 /				! MAX. NUMBER OF SUB-LEVEL GRIDS 
		 DATA NUM_FLT  / 999 /				! TOTAL NO. OF FAULT SEGMENTS
	     DATA V_LIMIT  / 20.0 /				! UPPER LIMIT OF MAXIMUM VELOCITY !
	     DATA RAD_DEG  / 0.01745329252 /	! ARC RADIAN OF 1 DEGREE
	     DATA RAD_MIN  / 0.000290888208665721 /  ! ARC RADIAN OF 1 MINUTE
         DATA RHO_W    / 1000.0/             ! density of water (kg/m3) 170220
		 DATA RHO_A    / 1.0/             ! density of air (kg/m3) 180702
		 DATA Pn       / 1013.25/            ! ambient pressure(mb) 180702
      END
!//////////////////////////////////////////////////////////////////////


!----------------------------------------------------------------------
      SUBROUTINE CHANGE(LO)
!.....TRANSFER INFORMATION (FREE SURFACE ELEVATION, VOLUME FLUX IN
!      X, Y DIRECTIONS)FROM LAST STEP TO NEXT STEP (FOR OUTEST LAYER)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER)	:: LO
!OMP 111025 v1
!$omp parallel
!$omp do private(I,J)
      DO J=1,LO%NY
         DO I=1,LO%NX
            LO%Z(I,J,1) = LO%Z(I,J,2)
            LO%M(I,J,1) = LO%M(I,J,2)
            LO%N(I,J,1) = LO%N(I,J,2)
			IF (LO%LAYGOV.GT.1) THEN
		       LO%M0(I,J)  = LO%M(I,J,1)
		       LO%N0(I,J)  = LO%N(I,J,1)
			ENDIF
         END DO
      END DO
!$omp end parallel


!.....UPDATE BATHYMETRY IF TRANSIENT SEAFLOOR MOTION IS ENABLED
	  IF (LO%INI_SWITCH.EQ.3 .OR. LO%INI_SWITCH.EQ.4) THEN
	     LO%HT(:,:,1) = LO%HT(:,:,2)
	     LO%H(:,:) = LO%H(:,:) + LO%HT(:,:,2) - LO%HT(:,:,1)
	  ENDIF

!
      RETURN
      END


!----------------------------------------------------------------------
      SUBROUTINE ALLOC (L,SWITCH)
!     CREATED BY TOM LOGAN, UAF (2005)
!     UPDATED ON SEP 17 2006 (XIAOMING WANG,CORNELL UNIVERSITY)
! SWITCH: 
!       1 -- TOP-LEVEL GRID (OUTEST LAYER)
!       OTHER -- SUB-LEVEL GRID LAYERS
!       ...
! LINCHK:
!		0 -- NONLINEAR TERMS WON'T BE CALCULATED IN NSWE
!		1 -- NONLINEAR TERMS WILL BE CALCULATED IN NSWE
! MODSCM:
!		0 -- MODIFIED SCHEME IS IMPLETMENTED (IMAMURA,1987;CHO,1995)
!		1 -- MODIFIED SCHEME IS NOT IMPLETMENTED
!.....UPDATED ON NOV 03 2008 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  TYPE(LAYER)               :: L
      INTEGER		:: SWITCH	! 1 - TOP LAYER; ELSE - OTHER LAYER
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

      L%RX = L%DT/L%DX
	  L%RY = L%DT/L%DY
      L%GRX = GRAV*L%RX
	  L%GRY = GRAV*L%RY

      IF (SWITCH .EQ. 1) THEN !layer01
	      L%LINCHK = 1
	      L%MODSCM = 0
		  L%CORNERS(1) = 1
		  L%CORNERS(2) = L%NX
		  L%CORNERS(3) = 1
		  L%CORNERS(4) = L%NY
      ELSE
          L%LINCHK = 1
      	  L%MODSCM = 1
      END IF
	  
      IF ( L%LAYSWITCH.EQ.0 ) THEN
		ALLOCATE(L%Z(L%NX,L%NY,2))
		ALLOCATE(L%M(L%NX,L%NY,2))
		ALLOCATE(L%N(L%NX,L%NY,2))
		ALLOCATE(L%H(L%NX,L%NY))
		ALLOCATE(L%XFLUX(L%NX,2))
		ALLOCATE(L%YFLUX(L%NY,2))

		ALLOCATE(L%HP(L%NX,L%NY))
		ALLOCATE(L%HQ(L%NX,L%NY))      
		ALLOCATE(L%DZ(L%NX,L%NY,2))
		ALLOCATE(L%DEFORM(L%NX,L%NY))
		
		IF (L%LAYCORD.EQ.0) THEN
		   ALLOCATE(L%R0(L%NX,L%NY))
		   ALLOCATE(L%R1(L%NX,L%NY))
		   ALLOCATE(L%R11(L%NX,L%NY))
		   ALLOCATE(L%R2(L%NX,L%NY))
		   ALLOCATE(L%R21(L%NX,L%NY))
		   ALLOCATE(L%R22(L%NX,L%NY))
		   ALLOCATE(L%R3(L%NX,L%NY))
		   ALLOCATE(L%R4(L%NX,L%NY))
		   ALLOCATE(L%R5(L%NX,L%NY))
		   ALLOCATE(L%R6(L%NY)) 
           IF (L%INI_SWITCH.EQ.6) THEN
             ALLOCATE(L%R31(L%NX,L%NY)) !170220
             ALLOCATE(L%R32(L%NX,L%NY)) !170220 
           ENDIF
		ENDIF

		IF (L%INI_SWITCH.EQ.3 .OR. L%INI_SWITCH.EQ.4) THEN
		   ALLOCATE(L%HT(L%NX,L%NY,2))
		   L%HT = 0.0
		ENDIF

		IF (L%LAYGOV.GE.1) THEN 
		   ALLOCATE(L%MASK(L%NX,L%NY))
		   L%MASK = 0
		ENDIF   
		IF (L%LAYGOV.GT.1) THEN 
		   ALLOCATE(L%M0(L%NX,L%NY))
		   ALLOCATE(L%N0(L%NX,L%NY))
!		   ALLOCATE(L%MASK(L%NX,L%NY))
		   L%M0 = 0.0
		   L%N0 = 0.0
!		   L%MASK = 0
		ENDIF   

		IF (L%FRIC_SWITCH.EQ.2) THEN
		   ALLOCATE(L%FRIC_VCOEF(L%NX,L%NY))
		   L%FRIC_VCOEF = L%FRIC_COEF
		ENDIF
!*		IF (L%LAYGOV.EQ.1 .OR. L%LAYGOV.EQ.9) L%MODSCM = 1
		IF (MOD(L%LAYGOV,2).NE.0) L%MODSCM = 1

		ALLOCATE(L%Z_MAX(L%NX,L%NY))
		ALLOCATE(L%Z_MIN(L%NX,L%NY))

		
!*		IF (L%UPZ .EQ. .FALSE.) THEN
!*		   ALLOCATE(L%POS(L%NX,L%NY,2))
!*		   ALLOCATE(L%CXY(L%NX,L%NY,4))
!*		   L%POS = 0
!*		   L%CXY = 0.0
!*		ENDIF

		L%Z = 0.0
		L%M = 0.0
		L%N = 0.0
		L%H = 0.0
		L%HP = 0.0
		L%HQ = 0.0
		L%DZ = 0.0

		L%DEFORM = 0.0
		L%XFLUX = 0.0
		L%YFLUX = 0.0
!		L%NAME = ''
!.......UPZ - FLAG TO IDENTIFY COORDINATE SYSTEM
!			  .TRUE. - USE THE SAME COORD. AS ITS PARENT GRID
!			  .FALSE. - USE DIFFERENT COORD.
!		L%UPZ = .TRUE.  

		L%Z_MAX = 0.0
		L%Z_MIN = 0.0
!.......L%X,L%Y,L%DX,L%DY,L%DT ARE ALLOCATED AND 
!		INITIALIZED IN DX_CALC AND SUBGRID_MATCHING
	  END IF
      
	  IF (L%LAYSWITCH.EQ.0 .AND. L%LAYGOV.GE.2) THEN
		ALLOCATE(L%ALPHA(L%NX,L%NY))
		ALLOCATE(L%A1X(L%NX,L%NY))
		ALLOCATE(L%A2X(L%NX,L%NY))
		ALLOCATE(L%A1Y(L%NX,L%NY))
		ALLOCATE(L%A2Y(L%NX,L%NY))
		ALLOCATE(L%CF(L%NX,L%NY,4))
		ALLOCATE(L%CB(L%NX,L%NY,4))
		L%ALPHA  = 1.0
		L%CF = 0.0
		L%CB = 0.0
	  END IF

	  IF (SWITCH .EQ. 1 .AND. L%BC_TYPE.EQ.1) THEN
		 ALLOCATE(L%SPONGE_COEFX(L%NX,L%NY))
	     ALLOCATE(L%SPONGE_COEFY(L%NX,L%NY))
		 L%SPONGE_COEFX = 0.0
		 L%SPONGE_COEFY = 0.0
	  ENDIF

	  IF (L%FRIC_SWITCH.EQ.3) THEN
	     L%SEDI_SWITCH = 0
		 ALLOCATE(L%DH(L%NX,L%NY,2))
		 L%DH = 0.0
	  ELSE
         L%SEDI_SWITCH = 1
	  ENDIF

      RETURN
      END


!----------------------------------------------------------------------
      SUBROUTINE SPHERICAL_PARAMETERS(LO,LA)
!     CREATED BY TOM LOGAN, UAF (2004)
!  ******** PARAMETERS FOR SPHERICAL COORD. *******
!  Updated on Dec21 2008 (Xiaoming Wang, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER)	:: LO 
	  TYPE (LAYER), DIMENSION(NUM_GRID)  :: LA
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

      IF (LO%LAYSWITCH .EQ. 0 .AND. LO%LAYCORD .EQ. 0) THEN
		 WRITE (*,*) '    CALCULATING COEFFICIENTS FOR SPHERICAL COORD.'
		 CALL PARA(LO)
	  ENDIF

	  DO I=1,NUM_GRID
        IF (LA(I)%LAYSWITCH .EQ. 0 .AND. LA(I)%LAYCORD .EQ. 0) THEN
		   CALL PARA(LA(I))
		ENDIF
      END DO
	  
      RETURN
      END

!----------------------------------------------------------------------
      SUBROUTINE PARA(LO)
!......................................................................
!DESCRIPTION:
!	  #. CALCULATE PARAMETERS FOR SPHERICAL COORD.
!NOTE:
!	  #. REVISED SIGNIFICANTLY BY TOM LOGAN, UAF (2005)
!	  #. UPDATED ON NOV.07, 2008 (XIAOMING WANG, GNS)
!               LINES STARTING WITH "!!" ARE REMOVED
!               LINES ENDED WITH "!!"   ARE ADDED
!	  #. UPDATED ON FEB06 2009 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) 	:: LO
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
      DATA CORI_W/7.2722E-5/, OSIXTY/0.016666666667/
	  DATA TWLVTH/0.08333333333333/

!.....PARAMETERS FOR SPHERICAL COORD IN GRID LAYER LO
	  IF (LO%LAYCORD .EQ. 0) THEN
	     IF (LO%LAYGOV.LE.1 .OR. LO%LAYGOV.EQ.9) THEN	
!*          DX = R_EARTH*LO%DX*RAD_MIN
!*          RR = LO%DT/DX  
            RR = LO%DT/R_EARTH   
!*          RS = 0.5*G*RR       
            RS = GRAV*RR             !!
            RT = 0.5*LO%DT*CORI_W
!OMP 111025 v1
!$omp parallel
!$omp do private(J,I) &
!$omp firstprivate(ANG_M,ANG_N,COS_M,COS_N,SIN_M,SIN_N)
            DO J=1,LO%NY
		       ANG_M = LO%Y(J)*RAD_DEG
		       ANG_N = (LO%Y(J)+0.5*LO%DEL_Y(J)*OSIXTY)*RAD_DEG
               COS_M = COS(ANG_M)
               COS_N = COS(ANG_N)
               SIN_M = SIN(ANG_M)
               SIN_N = SIN(ANG_N)
               DO I=1,LO%NX
 		          LO%R0(I,J) = RR/(LO%DEL_Y(J)*RAD_MIN)       !!
			      LO%R1(I,J) = RR/COS_M/(LO%DX*RAD_MIN)
			      LO%R11(I,J) = RR/COS_M/(LO%DEL_Y(J)*RAD_MIN)
			      IF (LO%LAYGOV.EQ.0) THEN
					 LO%R2(I,J) = RS/COS_M/(LO%DX*RAD_MIN)			&
											*AMAX1(LO%HP(I,J),ZERO)
					 LO%R4(I,J) = RS/(LO%DEL_Y(J)*RAD_MIN)			&
											*AMAX1(LO%HQ(I,J),ZERO)
			            IF (LO%INI_SWITCH.EQ.6) THEN
                   !170220 �j�����O�Y�� �ʶq��{�p��y�qP
					 LO%R31(I,J) = LO%DT/(RHO_W*R_EARTH)/COS_M/(LO%DX*RAD_MIN) &  
											*AMAX1(LO%HP(I,J),ZERO)
                   !170220 �j�����O�Y�� �ʶq��{�p��y�qQ
					 LO%R32(I,J) = LO%DT/(RHO_W*R_EARTH)/(LO%DEL_Y(J)*RAD_MIN) &
											*AMAX1(LO%HQ(I,J),ZERO)
			             ENDIF
			      ELSEIF (LO%LAYGOV.EQ.1) THEN
					 LO%R2(I,J) = RS/COS_M/(LO%DX*RAD_MIN)
					 LO%R4(I,J) = RS/(LO%DEL_Y(J)*RAD_MIN)
				  ENDIF
			      LO%R21(I,J) = RR/COS_M/(LO%DX*RAD_MIN)
				  LO%R22(I,J) = RR/COS_N/(LO%DX*RAD_MIN)
                  LO%R3(I,J) = RT*SIN_M
                  LO%R5(I,J) = RT*SIN_N
               END DO
               LO%R6(J) = COS_N
            END DO
!$omp end parallel
		 ELSEIF (LO%LAYGOV.EQ.2 .OR. LO%LAYGOV.EQ.3) THEN
!*          DX = R_EARTH*LO%DX*RAD_MIN
!*          RR = LO%DT/DX  
            RR = LO%DT/R_EARTH   
!*          RS = 0.5*G*RR       
            RS = GRAV*RR             !!
            RT = 0.5*LO%DT*CORI_W
!OMP 111025 v1
!$omp parallel 
!$omp do private(J,I) &
!$omp firstprivate(ANG_M,ANG_N,COS_M,COS_N,SIN_M,SIN_N)
            DO J=1,LO%NY
		       ANG_M = LO%Y(J)*RAD_DEG
		       ANG_N = (LO%Y(J)+0.5*LO%DEL_Y(J)*OSIXTY)*RAD_DEG
               COS_M = COS(ANG_M)
               COS_N = COS(ANG_N)
               SIN_M = SIN(ANG_M)
               SIN_N = SIN(ANG_N)
               DO I=1,LO%NX
				  IF (LO%MASK(I,J).EQ.0) THEN
				     DX = LO%DX
				     DY = LO%DEL_Y(J)
				  ENDIF
				  IF (LO%MASK(I,J).EQ.1) THEN
				     DX = LO%DX*LO%ALPHA(I,J)
				     DY = LO%DEL_Y(J)*LO%ALPHA(I,J)
				  ENDIF
 		          LO%R0(I,J) = RR/(DY*RAD_MIN)       !!
			      LO%R1(I,J) = RR/COS_M/(DX*RAD_MIN)
			      LO%R11(I,J) = RR/COS_M/(DY*RAD_MIN)
			      IF (LO%LAYGOV.EQ.2) THEN
					 LO%R2(I,J) = RS/COS_M/(DX*RAD_MIN)				&
										*AMAX1(LO%HP(I,J),ZERO)
				  ENDIF
				  IF (LO%LAYGOV.EQ.3) THEN
					 LO%R2(I,J) = RS/COS_M/(DX*RAD_MIN)
				  ENDIF
			      LO%R21(I,J) = RR/COS_M/(DX*RAD_MIN)
				  LO%R22(I,J) = RR/COS_N/(DX*RAD_MIN)
                  LO%R3(I,J) = RT*SIN_M
                  IF (LO%LAYGOV.EQ.2) THEN
					 LO%R4(I,J) = RS/(DY*RAD_MIN)					&
										*AMAX1(LO%HQ(I,J),ZERO)
				  ENDIF
				  IF (LO%LAYGOV.EQ.3) THEN
					 LO%R4(I,J) = RS/(DY*RAD_MIN)
				  ENDIF
                  LO%R5(I,J) = RT*SIN_N
               END DO
               LO%R6(J) = COS_N
            END DO
!$omp end parallel
		 ENDIF
      ENDIF	  

      RETURN
      END


!----------------------------------------------------------------------
      SUBROUTINE SED_TRANSPORT (LO)
!.....TENTATIVE TRY TO INCLUDING SEDIMENT TRANSPORT MODEL (APR. 2007)
!     SEDIMENT FLUX IS COMPUTED ACCORDING TO RIBBERINK (1998)
!     Bed-load transport for steady flows and unsteady oscillatory flows
!    (Coastal Engineering)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  TYPE (LAYER) :: LO
	  REAL D, DS, THETA_C, THETA_P,THETA_Q,G,RHO,RHO_S
	  REAL H(LO%NX,LO%NY),DH(LO%NX,LO%NY)
	  REAL QX(LO%NX,LO%NY),QY(LO%NX,LO%NY)
	  CHARACTER(LEN=30) FNAME

	  G = 9.807


	  RHO = 1000.0
	  RHO_S = 2650.0
	  DS = 0.0002
	  POROSITY = 0.3
	  THETA_C = 0.04
	  S = RHO_S/RHO

!	  Q(:,:) = 0.0
	  QX(:,:) = 0.0
	  QY(:,:) = 0.0

!      H(:,:) = -LO%H(:,:)
	  DH(:,:) = LO%H(:,:) + LO%Z(:,:,1)
!OMP 111025 v1
!$omp parallel
!$omp do private(I,J) firstprivate(IM1,IP1,JM1,JP1,HP,HQ,COEF_P,XQQ,FLUX_P,&
!$omp TPX,TPY,TPB,THETA_P,QS_P,COEF_Q,XPP,FLUX_Q,TQX,TQY,TQB,THETA_Q,QS_Q)

	  DO I = 1,LO%NX
	     IM1 = I-1
		 IP1 = I+1
		 IF (IM1.LE.0) IM1=1
		 IF (IP1.GE.LO%NX) IP1=LO%NX

	     DO J = 1,LO%NY
		 	JM1 = J-1
		    JP1 = J+1
		    IF (JM1.LE.1) JM1=1
		    IF (JP1.GE.LO%NY) JP1=LO%NY
			!TOTAL WATER DEPTH AT DISCHARGE LOCATION P
            HP = 0.5*(DH(I,J)+DH(IP1,J))
			!TOTAL WATER DEPTH AT DISCHARGE LOCATION Q  
			HQ = 0.5*(DH(I,J)+DH(I,JP1))  

			!SEDIMENT FLUX AT DISCHARGE LOCATION P
		    IF (HP .GT. 0.05) THEN
		       COEF_P = RHO*G*(LO%FRIC_COEF**2)/(HP**2.33333)
			   !Y COMPONENT OF VOLUME FLUX AT DISCHARGE LOCATION P
			   XQQ = 0.25*(LO%N(I,J,1)+LO%N(IP1,J,1)				&
						+ LO%N(I,JM1,1)+LO%N(IP1,JM1,1)) 
			   !TOTAL VOLUME FLUX AT DISCHARGE LOCATION P
			   FLUX_P = SQRT(LO%M(I,J,1)**2+XQQ**2)  
			   !X COMPONENT OF BOTTOM SHEAR STRESS AT DISCHARGE LOCATION P
               TPX = COEF_P*LO%M(I,J,1)*FLUX_P  
			   !Y COMPONENT OF BOTTOM SHEAR STRESS AT DISCHARGE LOCATION P
               TPY = COEF_P*XQQ*FLUX_P  
			   ! TOTAL SHEAR STRESS AT DISCHARGE LOCATION P  
			   TPB = SQRT(TPX**2+TPY**2)  
			   !SHIELDS PARAMETER AT DISCHARGE LOCATION P
			   THETA_P = TPB/((RHO_S-RHO)*G*DS) 
			   IF (THETA_P .GT. THETA_C) THEN
				  !RIBBERINK (1998)
			      QS_P = 11.0*SQRT((S-1.0)*G*DS**3)					&
							* ((THETA_P-THETA_C)**1.65) 
				  IF (QS_P.GT.0.02) QS_P = 0.02
				  !X COMPONENT OF SAND FLUX AT DISCHARGE LOCATION P
				  IF (FLUX_P .GT. 1.0E-10)							&
							QX(I,J) = QS_P * LO%M(I,J,1)/FLUX_P  
			   ENDIF
			ENDIF

			!SEDIMENT FLUX AT DISCHARGE LOCATION Q
            IF (HQ .GT. 0.05) THEN
		       COEF_Q = RHO*G*(LO%FRIC_COEF**2)/(HQ**2.33333)
			   XPP = 0.25*(LO%M(I,J,1)+LO%M(I,JP1,1)+LO%M(IM1,J,1)	&
							+ LO%M(IM1,JP1,1))
			   FLUX_Q = SQRT(XPP**2+LO%N(I,J,1)**2)
               TQX = COEF_Q*XPP*FLUX_Q
               TQY = COEF_Q*LO%N(I,J,1)*FLUX_Q
			   TQB = SQRT(TQX**2+TQY**2)
			   THETA_Q = TQB/((RHO_S-RHO)*G*DS)
			   IF (THETA_Q .GT. THETA_C) THEN
			      !RIBBERINK (1998)
			      QS_Q = 11.0*SQRT((S-1.0)*G*DS**3)					&
							*((THETA_Q-THETA_C)**1.65) 
				  IF (QS_Q.GT.0.02) QS_Q = 0.02
				  IF (FLUX_Q .GT. 1.0E-10)							&
							QY(I,J) = QS_Q*LO%N(I,J,1)/FLUX_Q				  
			   ENDIF

            ENDIF
         ENDDO
      ENDDO
!$omp barrier
!$omp do private(I,J)
      ! �Ѥջزv�M�b�ǿ�q(�¨I�n����n)�p��a�ΰ��{�ܤ�  �ջزv�V�j���{�ܤƶV�j
	  ! �b�ǿ�q>0 �I�k �a���ܲ`   ! �b�ǿ�q<0 ��n �a���ܲ`
      DO I = 2,LO%NX-1
	     DO J = 2,LO%NY-1 !LO%DH(I,J,1)�@���O0  
		    LO%DH(I,J,2) = LO%DH(I,J,1)-LO%RX*(1/(1-POROSITY))		&
							*(QX(I,J)-QX(I-1,J)+QY(I,J)-QY(I,J-1))
            LO%H(I,J) = LO%H(I,J)-LO%DH(I,J,2) !��a�ΰ��{��I�n���ܤƶq 130904						
         ENDDO
	  ENDDO
!$omp end parallel
!      LO%H(:,:) = LO%H(:,:)-LO%DH(:,:,2) !��a�ΰ��{��I�n���ܤƶq 130904
	  RETURN
	  END


!----------------------------------------------------------------------
      SUBROUTINE ALL_GRID (LO,LA)
!DESCRIPTION:
!	  #. SOLVE CONTINUITY AND MOMENTUM EQUATIONS FOR ALL SUB-LEVEL GRID
!		 LAYERS;
!INPUT:
!	  #. WATER SURFACE DISPLACEMENT AND VOLUME FLUXES OF LO;
!OUTPUT:
!	  #. WATER SURFACE DISPLACEMENT AND VOLUME FLUXES OF LA;
!NOTES:
!     #. NEWQ_S,NEWQ_C COMBINED INTO NEWQ (JUL 2003, XIAOMING WANG)
!     #. UPDATED ON SEP 17 2006 (XIAOMING WANG)
!     #. LEVEL2%DT = LEVEL1%DT/LEVEL2%REL_SIZE
!     #. UPDATED NOV.21 2008 (XIAOMING WANG, GNS)
!        1. UP TO 12 LEVELS OF SUB GRID LAYERS IMPLEMENTED
!     #. UPDATED DEC 22 2008 (XIAOMING WANG, GNS)
!		 1. TIME STEP SIZE RATIO IS NO LONGER FIXED AS 2
!			BUT DETERMINED FROM WATER DEPTH OF EACH GRID LAYER;
!        2. TIME STEP SIZE RATIO OF LO TO LA COULD BE ANY INTEGER;
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) 	:: LO
	  TYPE (LAYER),DIMENSION(NUM_GRID)  :: LA
	  INTEGER K1,K2,K3,K4,K5,K6,K7,K8,K9,K10,K11,K12
	  INTEGER L1,L2,L3,L4,L5,L6,L7,L8,L9,L10,L11,L12
	  INTEGER NHALF
!	  LOGICAL UPZ(NUM_GRID)
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

!<<...START OF LEVEL 2
	  DO L2=1,NUM_GRID  
	     IF (LA(L2)%LAYSWITCH.EQ.0 .AND. LA(L2)%PARENT.EQ.LO%ID) THEN
	        DO K2 = 1,LA(L2)%REL_TIME
			   !130911 �p�G���1:1 �B�l�����Шt�ۦP(SS��CC), �������Ȥ��p��
		       IF (LA(L2)%REL_SIZE.EQ.1 .AND. LA(L2)%SC_OPTION.EQ.0 ) THEN
                  CALL SAMEPASS (LO,LA(L2))
		       ELSE !��ӵ{���X
			      IF (K2 .EQ. 1) THEN
			         CALL JNQ (LO,LA(L2))
			      ELSE
			         CALL NEWQ (LO,LA(L2),K2)
			      ENDIF
                  IF (LA(L2)%SEDI_SWITCH.EQ.0 .AND.					&
                     LA(L2)%LAYCORD.NE.0) CALL SED_TRANSPORT (LA(L2))
			      CALL MASS (LA(L2))
               ENDIF
!<<............START OF LEVEL 3
		       DO L3=1,NUM_GRID
	           IF (LA(L3)%LAYSWITCH.EQ.0 .AND.						&
									LA(L3)%PARENT.EQ.LA(L2)%ID) THEN
			   DO K3 = 1,LA(L3)%REL_TIME
			   !130911 �p�G���1:1 �B�l�����Шt�ۦP(SS��CC), �������Ȥ��p��
		       IF (LA(L3)%REL_SIZE.EQ.1 .AND. LA(L3)%SC_OPTION.EQ.0 ) THEN
                  CALL SAMEPASS (LA(L2),LA(L3))
		       ELSE !��ӵ{���X
			   IF (K3 .EQ. 1) THEN
				  CALL JNQ (LA(L2),LA(L3))
			   ELSE
				  CALL NEWQ (LA(L2),LA(L3),K3)
			   ENDIF
			   IF (LA(L3)%SEDI_SWITCH.EQ.0 .AND.					&
					LA(L3)%LAYCORD.NE.0) CALL SED_TRANSPORT (LA(L3))
			   CALL MASS (LA(L3))
               ENDIF
!<<............START OF LEVEL 4 
               DO L4=1,NUM_GRID
               IF (LA(L4)%LAYSWITCH.EQ.0 .AND.						&
									LA(L4)%PARENT.EQ.LA(L3)%ID) THEN
			   DO K4 = 1,LA(L4)%REL_TIME
			   !130911 �p�G���1:1 �B�l�����Шt�ۦP(SS��CC), �������Ȥ��p��
		       IF (LA(L4)%REL_SIZE.EQ.1 .AND. LA(L4)%SC_OPTION.EQ.0 ) THEN
                  CALL SAMEPASS (LA(L3),LA(L4))
		       ELSE !��ӵ{���X
			   IF (K4 .EQ. 1) THEN
				  CALL JNQ (LA(L3),LA(L4))
			   ELSE
				  CALL NEWQ (LA(L3),LA(L4),K4)
			   ENDIF
			   IF (LA(L4)%SEDI_SWITCH.EQ.0 .AND.					&
					LA(L4)%LAYCORD.NE.0 ) CALL SED_TRANSPORT (LA(L4))
			   CALL MASS (LA(L4))
               ENDIF !130911
!<<........... START OF LEVEL 5 
               DO L5=1,NUM_GRID
               IF (LA(L5)%LAYSWITCH.EQ.0 .AND.						&
									LA(L5)%PARENT.EQ.LA(L4)%ID) THEN
			   DO K5 = 1,LA(L5)%REL_TIME
			   !130911 �p�G���1:1 �B�l�����Шt�ۦP(SS��CC), �������Ȥ��p��
		       IF (LA(L5)%REL_SIZE.EQ.1 .AND. LA(L5)%SC_OPTION.EQ.0 ) THEN
				  CALL SAMEPASS (LA(L4),LA(L5))
		       ELSE !��ӵ{���X
			   IF (K5 .EQ. 1) THEN
				  CALL JNQ (LA(L4),LA(L5))
			   ELSE
			      CALL NEWQ (LA(L4),LA(L5),K5)
			   ENDIF
			   IF (LA(L5)%SEDI_SWITCH.EQ.0 .AND.					&
					LA(L5)%LAYCORD.NE.0 ) CALL SED_TRANSPORT (LA(L5))
			   CALL MASS (LA(L5))
               ENDIF !130911
!<<............START OF LEVEL 6
               DO L6=1,NUM_GRID
               IF (LA(L6)%LAYSWITCH.EQ.0 .AND.						&
									LA(L6)%PARENT.EQ.LA(L5)%ID) THEN
			   DO K6 = 1,LA(L6)%REL_TIME
			   !130911 �p�G���1:1 �B�l�����Шt�ۦP(SS��CC), �������Ȥ��p��
		       IF (LA(L6)%REL_SIZE.EQ.1 .AND. LA(L6)%SC_OPTION.EQ.0 ) THEN
				  CALL SAMEPASS (LA(L5),LA(L6))
		       ELSE !��ӵ{���X
			   IF (K6 .EQ. 1) THEN
			      CALL JNQ (LA(L5),LA(L6))
			   ELSE
			      CALL NEWQ (LA(L5),LA(L6),K6)
			   ENDIF
			   IF (LA(L6)%SEDI_SWITCH.EQ.0 .AND.					&
					LA(L6)%LAYCORD.NE.0 ) CALL SED_TRANSPORT (LA(L6))
			   CALL MASS (LA(L6))
               ENDIF !130911
!<<........... START OF LEVEL 7
               DO L7=1,NUM_GRID
               IF (LA(L7)%LAYSWITCH.EQ.0 .AND.						&
									LA(L7)%PARENT.EQ.LA(L6)%ID) THEN
			   DO K7 = 1,LA(L7)%REL_TIME
			   !130911 �p�G���1:1 �B�l�����Шt�ۦP(SS��CC), �������Ȥ��p��
		       IF (LA(L7)%REL_SIZE.EQ.1 .AND. LA(L7)%SC_OPTION.EQ.0 ) THEN
				  CALL SAMEPASS (LA(L6),LA(L7))
		       ELSE !��ӵ{���X
			   IF (K7 .EQ. 1) THEN
			      CALL JNQ (LA(L6),LA(L7))
			   ELSE
			      CALL NEWQ (LA(L6),LA(L7),K7)
			   ENDIF
			   IF (LA(L7)%SEDI_SWITCH.EQ.0 .AND.					&
					LA(L7)%LAYCORD.NE.0 ) CALL SED_TRANSPORT (LA(L7))
			   CALL MASS (LA(L7))
               ENDIF !130911
!<<........... START OF LEVEL 8
               DO L8=1,NUM_GRID
               IF (LA(L8)%LAYSWITCH.EQ.0 .AND.						&
									LA(L8)%PARENT.EQ.LA(L7)%ID) THEN
			   DO K8 = 1,LA(L8)%REL_TIME
			   !130911 �p�G���1:1 �B�l�����Шt�ۦP(SS��CC), �������Ȥ��p��
		       IF (LA(L8)%REL_SIZE.EQ.1 .AND. LA(L8)%SC_OPTION.EQ.0 ) THEN
				  CALL SAMEPASS (LA(L7),LA(L8))
		       ELSE !��ӵ{���X
			   IF (K8 .EQ. 1) THEN
				  CALL JNQ (LA(L7),LA(L8))
			   ELSE
			      CALL NEWQ (LA(L7),LA(L8),K8)
			   ENDIF
			   IF (LA(L8)%SEDI_SWITCH.EQ.0 .AND.					&
					LA(L8)%LAYCORD.NE.0 ) CALL SED_TRANSPORT (LA(L8))
			   CALL MASS (LA(L8))
               ENDIF !130911
!<<............START OF LEVEL 9
               DO L9=1,NUM_GRID
               IF (LA(L9)%LAYSWITCH.EQ.0 .AND.						&
									LA(L9)%PARENT.EQ.LA(L8)%ID) THEN
			   DO K9 = 1,LA(L9)%REL_TIME
			   !130911 �p�G���1:1 �B�l�����Шt�ۦP(SS��CC), �������Ȥ��p��
		       IF (LA(L9)%REL_SIZE.EQ.1 .AND. LA(L9)%SC_OPTION.EQ.0 ) THEN
				  CALL SAMEPASS (LA(L8),LA(L9))
		       ELSE !��ӵ{���X
			   IF (K9 .EQ. 1) THEN
				  CALL JNQ (LA(L8),LA(L9))
			   ELSE
				  CALL NEWQ (LA(L8),LA(L9),K9)
			   ENDIF
			   IF (LA(L9)%SEDI_SWITCH.EQ.0 .AND.					&
					LA(L9)%LAYCORD.NE.0 ) CALL SED_TRANSPORT (LA(L9))
			   CALL MASS (LA(L9))
               ENDIF !130911
!<<............START OF LEVEL 10
               DO L10=1,NUM_GRID
               IF (LA(L10)%LAYSWITCH.EQ.0 .AND.						&
									LA(L10)%PARENT.EQ.LA(L9)%ID) THEN
			   DO K10 = 1,LA(L10)%REL_TIME
			   !130911 �p�G���1:1 �B�l�����Шt�ۦP(SS��CC), �������Ȥ��p��
		       IF (LA(L10)%REL_SIZE.EQ.1 .AND. LA(L10)%SC_OPTION.EQ.0 ) THEN
				  CALL SAMEPASS (LA(L9),LA(L10))
		       ELSE !��ӵ{���X
			   IF (K10 .EQ. 1) THEN
			      CALL JNQ (LA(L9),LA(L10))
			   ELSE
				  CALL NEWQ (LA(L9),LA(L10),K10)

			   ENDIF
			   IF (LA(L10)%SEDI_SWITCH.EQ.0 .AND.					&
					LA(L10)%LAYCORD.NE.0 ) CALL SED_TRANSPORT (LA(L10))
			   CALL MASS (LA(L10))
               ENDIF !130911
!<<............START OF LEVEL 11
               DO L11=1,NUM_GRID
               IF (LA(L11)%LAYSWITCH.EQ.0 .AND.						&
								LA(L11)%PARENT.EQ.LA(L10)%ID) THEN
			   DO K11 = 1,LA(L11)%REL_TIME
			   !130911 �p�G���1:1 �B�l�����Шt�ۦP(SS��CC), �������Ȥ��p��
		       IF (LA(L11)%REL_SIZE.EQ.1 .AND. LA(L11)%SC_OPTION.EQ.0 ) THEN
				  CALL SAMEPASS (LA(L10),LA(L11))
		       ELSE !��ӵ{���X
			   IF (K11 .EQ. 1) THEN
				  CALL JNQ (LA(L10),LA(L11))
			   ELSE
				  CALL NEWQ (LA(L10),LA(L11),K11)
			   ENDIF
			   IF (LA(L11)%SEDI_SWITCH.EQ.0 .AND.					&
					LA(L11)%LAYCORD.NE.0 ) CALL SED_TRANSPORT (LA(L11))
			   CALL MASS (LA(L11))
               ENDIF !130911
!<<........... START OF LEVEL 12
               DO L12=1,NUM_GRID
               IF (LA(L12)%LAYSWITCH.EQ.0 .AND.						&
								LA(L12)%PARENT.EQ.LA(L11)%ID) THEN
			   DO K12 = 1,LA(L12)%REL_TIME
			   !130911 �p�G���1:1 �B�l�����Шt�ۦP(SS��CC), �������Ȥ��p��
		       IF (LA(L12)%REL_SIZE.EQ.1 .AND. LA(L12)%SC_OPTION.EQ.0 ) THEN
				  CALL SAMEPASS (LA(L11),LA(L12))
		       ELSE !��ӵ{���X
			   IF (K12 .EQ. 1) THEN
			      CALL JNQ (LA(L11),LA(L12))
			   ELSE
				  CALL NEWQ (LA(L11),LA(L12),K12)
			   ENDIF
			   IF (LA(L12)%SEDI_SWITCH.EQ.0 .AND.					&
					LA(L12)%LAYCORD.NE.0 ) CALL SED_TRANSPORT (LA(L12))
			   CALL MASS (LA(L12))
               ENDIF !130911
!<<........... INSERT MORE LEVELS HERE

!>>........... END OF INSERTING MORE LEVLES
		       IF (LA(L12)%REL_SIZE.NE.1 .or. LA(L12)%SC_OPTION.NE.0 ) THEN !130911
			   CALL MOMENT (LA(L12))
			   NHALF = FLOOR(LA(L12)%REL_TIME/2.0)+1
			   IF (K12.EQ.NHALF) THEN
				  CALL JNZ (LA(L11),LA(L12))
			   ENDIF
			   CALL UPDATE (LA(L12))
               ENDIF  !130911
			   ENDDO
			   ENDIF
			   ENDDO
!>>........... END OF LEVEL 12
		       IF (LA(L11)%REL_SIZE.NE.1 .or. LA(L11)%SC_OPTION.NE.0 ) THEN !130911
			   CALL MOMENT (LA(L11))
			   NHALF = FLOOR(LA(L11)%REL_TIME/2.0)+1
			   IF (K11.EQ.NHALF) THEN
				  CALL JNZ (LA(L10),LA(L11))
			   ENDIF
			   CALL UPDATE (LA(L11))
			   ENDIF !130911
			   ENDDO
			   ENDIF
			   ENDDO
!>>........... END OF LEVEL 11
		       IF (LA(L10)%REL_SIZE.NE.1 .or. LA(L10)%SC_OPTION.NE.0 ) THEN !130911
			   CALL MOMENT (LA(L10))
			   NHALF = FLOOR(LA(L10)%REL_TIME/2.0)+1
			   IF (K10 .EQ. NHALF) THEN
				  CALL JNZ (LA(L9),LA(L10))
			   ENDIF
			   CALL UPDATE (LA(L10))
			   ENDIF !130911
			   ENDDO
			   ENDIF
			   ENDDO
!>>........... END OF LEVEL 10
		       IF (LA(L9)%REL_SIZE.NE.1 .or. LA(L9)%SC_OPTION.NE.0 ) THEN !130911
			   CALL MOMENT (LA(L9))
			   NHALF = FLOOR(LA(L9)%REL_TIME/2.0)+1
			   IF (K9 .EQ. NHALF) THEN
				  CALL JNZ (LA(L8),LA(L9))
			   ENDIF
			   CALL UPDATE (LA(L9))
			   ENDIF !130911
			   ENDDO
			   ENDIF
			   ENDDO
!>>........... END OF LEVEL 9
		       IF (LA(L8)%REL_SIZE.NE.1 .or. LA(L8)%SC_OPTION.NE.0 ) THEN !130911
			   CALL MOMENT (LA(L8))
			   NHALF = FLOOR(LA(L8)%REL_TIME/2.0)+1
			   IF (K8 .EQ. NHALF) THEN
				  CALL JNZ (LA(L7),LA(L8))
			   ENDIF
			   CALL UPDATE (LA(L8))
			   ENDIF !130911
			   ENDDO
			   ENDIF
			   ENDDO
!>>........... END OF LEVEL 8
		       IF (LA(L7)%REL_SIZE.NE.1 .or. LA(L7)%SC_OPTION.NE.0 ) THEN !130911
			   CALL MOMENT (LA(L7))
			   NHALF = FLOOR(LA(L7)%REL_TIME/2.0)+1
			   IF (K7 .EQ. NHALF) THEN
				  CALL JNZ (LA(L6),LA(L7))
			   ENDIF
			   CALL UPDATE (LA(L7))
			   ENDIF !130911
			   ENDDO
			   ENDIF
			   ENDDO
!>>........... END OF LEVEL 7
		       IF (LA(L6)%REL_SIZE.NE.1 .or. LA(L6)%SC_OPTION.NE.0 ) THEN !130911
			   CALL MOMENT (LA(L6))
			   NHALF = FLOOR(LA(L6)%REL_TIME/2.0)+1
			   IF (K6 .EQ. NHALF) THEN
				  CALL JNZ (LA(L5),LA(L6))
			   ENDIF
			   CALL UPDATE (LA(L6))
			   ENDIF !130911
			   ENDDO
			   ENDIF
			   ENDDO
!>>........... END OF LEVEL 6
		       IF (LA(L5)%REL_SIZE.NE.1 .or. LA(L5)%SC_OPTION.NE.0 ) THEN !130911
			   CALL MOMENT (LA(L5))
			   NHALF = FLOOR(LA(L5)%REL_TIME/2.0)+1
			   IF (K5 .EQ. NHALF) THEN
				  CALL JNZ (LA(L4),LA(L5))
			   ENDIF
			   CALL UPDATE (LA(L5))
			   ENDIF !130911
			   ENDDO
			   ENDIF
			   ENDDO
!<<........... END OF LEVEL 5
		       IF (LA(L4)%REL_SIZE.NE.1 .or. LA(L4)%SC_OPTION.NE.0 ) THEN !130911
			   CALL MOMENT (LA(L4))
			   NHALF = FLOOR(LA(L4)%REL_TIME/2.0)+1
			   IF (K4 .EQ. NHALF) THEN
				  CALL JNZ (LA(L3),LA(L4))
			   ENDIF
			   CALL UPDATE (LA(L4))
			   ENDIF !130911
			   ENDDO
			   ENDIF
			   ENDDO
!<<........... END OF LEVEL 4
		       IF (LA(L3)%REL_SIZE.NE.1 .or. LA(L3)%SC_OPTION.NE.0 ) THEN !130911
               CALL MOMENT (LA(L3))
			   NHALF = FLOOR(LA(L3)%REL_TIME/2.0)+1
			   IF (K3 .EQ. NHALF) THEN
				  CALL JNZ (LA(L2),LA(L3))
			   ENDIF
               CALL UPDATE (LA(L3))
			   ENDIF !130911
			   ENDDO
			   ENDIF
			   ENDDO
!>>............END OF LEVEL 3
		       IF (LA(L2)%REL_SIZE.NE.1 .or. LA(L2)%SC_OPTION.NE.0 ) THEN !130911
               CALL MOMENT (LA(L2))
			   NHALF = FLOOR(LA(L2)%REL_TIME/2.0)+1
			   IF (K2 .EQ. NHALF) THEN
				  CALL JNZ (LO,LA(L2))
			   ENDIF
               CALL UPDATE (LA(L2))
			   ENDIF !130911
			ENDDO
		 ENDIF
      ENDDO
!>>...END OF LEVEL 2

      RETURN
      END


!-----------------------------------------------------------------------
      SUBROUTINE UPDATE (LO)
!.....TRANSFER INFORMATION FROM LAST STEP TO NEXT STEP (INNER LAYER) 
!     UPDATED ON SEP 17 2006 BY XIAOMING WANG
!-----------------------------------------------------------------------
      USE LAYER_PARAMS
	  TYPE (LAYER)  :: LO
 
    ! OMP 120108
!$omp parallel
!$omp do private(J)
    DO J=1,LO%NY  
        !LO%Z(1,:,2) = LO%Z(2,:,2)
		LO%Z(1,J,2) = LO%Z(2,J,2)
	END DO

!$omp barrier

!$omp do private(I)
    DO I=1,LO%NX  
      !LO%Z(:,1,2) = LO%Z(:,2,2)
	  LO%Z(I,1,2) = LO%Z(I,2,2)
	END DO
!$omp barrier	
!$omp do private(I,J)
    DO J=1,LO%NY
        DO I=1,LO%NX   
      !LO%Z(:,:,1) = LO%Z(:,:,2)
      !LO%M(:,:,1) = LO%M(:,:,2)
      !LO%N(:,:,1) = LO%N(:,:,2)
            LO%Z(I,J,1) = LO%Z(I,J,2)
            LO%M(I,J,1) = LO%M(I,J,2)
            LO%N(I,J,1) = LO%N(I,J,2)
        END DO
    END DO
!$omp end parallel		  
	IF (LO%LAYGOV.GT.1) THEN
!$omp parallel
!$omp do private(I,J)	
        DO J=1,LO%NY
            DO I=1,LO%NX 	  
	            !LO%M0(:,:)  = LO%M(:,:,1)
	  	        !LO%N0(:,:)  = LO%N(:,:,1)
	            LO%M0(I,J)  = LO%M(I,J,1)
	  	        LO%N0(I,J)  = LO%N(I,J,1)	
            END DO
        END DO		 
!$omp end parallel				 
	ENDIF
	IF (LO%INI_SWITCH.EQ.3 .OR. LO%INI_SWITCH.EQ.4) THEN
!$omp parallel
!$omp do private(I,J)	
        DO J=1,LO%NY
            DO I=1,LO%NX 	  
	            !LO%HT(:,:,1) = LO%HT(:,:,2)
	            !LO%H(:,:) = LO%H(:,:) + LO%HT(:,:,2) - LO%HT(:,:,1)
		        LO%HT(I,J,1) = LO%HT(I,J,2)
	            LO%H(I,J) = LO%H(I,J) + LO%HT(I,J,2) - LO%HT(I,J,1)
            END DO
        END DO			 
!$omp end parallel				 
	ENDIF	  
      
      RETURN
      END
      
!----------------------------------------------------------------------
      SUBROUTINE JNZ (LO,LA)
!......................................................................
!DESCRIPTION:
!     #. THIS SUBROUTINE IS USED TO UPDATE FREE SURFACE ELEVATION 
!		 OF LO (LARGER GRIDS) WITH THAT OF LA (SMALLER GRIDS)
!	  #. SC_OPTION: COUPLING SCHEME BETWEEN SPHERICAL AND CARTESIAN
!			 = 0: TRADITIONAL COUPLING SCHEME BETWEEEN SPH AND CART;
!			 = 1: IMPROVED COUPLING SCHEME BETWEEN SPH AND CART;
!NOTE:
!	  #. REVISED SIGNIFICANTLY ON NOV 2004 (XIAOMING WANG,CORNELL)
!     #. UPDATED ON JAN05 2009 (XIAOMING WANG, GNS) 
!	  #. UPDATED ON APR03 2009 (XIAOMING WANG, GNS)
!		 1. IMPROVE COUPLING SCHEME BETWEEN SPHERICAL AND CARTESIAN
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER)		:: LO, LA
	  INTEGER   IS,IE,JS,JE,IR
	  REAL HALF, SUM, COUNT
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

	  IF (LA%SC_OPTION .EQ. 0) THEN
      HALF = (LA%REL_SIZE*LA%REL_SIZE)/2.0
      IR=LA%REL_SIZE
      IS = LA%CORNERS(1)
      IE = LA%CORNERS(2)
      JS = LA%CORNERS(3)
      JE = LA%CORNERS(4)

	  I_SHIFT = -IS*IR+1
	  J_SHIFT = -JS*IR+1

!OMP 111025 v1
!$omp parallel
!$omp do private(I,J,KI,KJ) firstprivate(SUM,COUNT,I0,J0,II,JJ)
      DO I = IS,IE
	     DO J = JS,JE
	        SUM = 0.0
		    COUNT = 0.0
			I0 = I*IR+I_SHIFT
			J0 = J*IR+J_SHIFT
			DO KI = 1,LA%REL_SIZE
			   DO KJ = 1,LA%REL_SIZE
!			      II=(I-IS)*IR+1+KI
!			      JJ=(J-JS)*IR+1+KJ
			      II = I0 + KI
				  JJ = J0 + KJ		
!*			      IF (LA%H(II,JJ) .GT. GX) THEN
			      IF (LA%H(II,JJ)+LA%Z(II,JJ,2) .GT. GX) THEN
					 IF (MOD(LA%REL_TIME,2) .EQ. 0) THEN
						SUM = SUM+0.5*(LA%Z(II,JJ,1)+LA%Z(II,JJ,2))
					 ELSE
					    SUM = SUM+LA%Z(II,JJ,2)
					 ENDIF
!*			         SUM = SUM+LA%Z(IS,JS,2)
				     COUNT = COUNT + 1.0
			      ENDIF
			   ENDDO
		    ENDDO
            IF (COUNT .GT. HALF) THEN
               LO%Z(I,J,2) = SUM/COUNT
            ELSE
               LO%Z(I,J,2) = 0.0
            ENDIF
         ENDDO
      ENDDO
!$omp end parallel
	  ELSE
		CALL JNZ_SC (LO,LA)
	  ENDIF

      RETURN
      END

      
!-----------------------------------------------------------------------
      SUBROUTINE JNQ (LO,LA)
!DESCRIPTION:
!	  #. INTERPOLATE VOLUME FLUXES (HU,HV) FROM OUTER GRID REGION 
!		 (PARENT GRID LAYER, LO) INTO INNER/NESTED GRID LAYER
!		 (CHILD GRID LAYER, LA) ALONG CONNECTING BOUNDARIES AT 
!		  THE BEGINNING OF A TIME STEP;
!	  #. SC_OPTION: COUPLING SCHEME BETWEEN SPHERICAL AND CARTESIAN
!			 = 0: TRADITIONAL COUPLING SCHEME BETWEEEN SPH AND CART;
!			 = 1: IMPROVED COUPLING SCHEME BETWEEN SPH AND CART;
!NOTES:
!     #. REVISED SIGNIFICANTLY ON NOV 2004 (XIAOMING WANG, CORNELL)
!	  #. UPDATED ON JAN05 2009 (XIAOMING WANG, GNS)
!	  #. UPDATED ON APR03 2009 (XIAOMING WANG, GNS)
!		 1. IMPROVE COUPLING SCHEME BETWEEN SPHERICAL AND CARTESIAN
!-----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER)		:: LO, LA

	  IF (LA%SC_OPTION.EQ.0) THEN
		IS = LA%CORNERS(1)
		IE = LA%CORNERS(2)
		JS = LA%CORNERS(3)
		JE = LA%CORNERS(4)
		CALL EDGEINTERP_VERT (LO%M(IS-1,:,1),LO%NY,LA,0) !LEFT BOUNDARY
		CALL EDGEINTERP_VERT (LO%M(IE,:,1),LO%NY,LA,1)   !RIGHT BOUNDARY
		CALL EDGEINTERP_HORI (LO%N(:,JS-1,1),LO%NX,LA,0) !BOTTOM BOUNDARY
		CALL EDGEINTERP_HORI (LO%N(:,JE,1),LO%NX,LA,1)   !TOP BOUNDARY
	  ELSE
		CALL EDGE_INTERP_SC (LO,LA)
	  ENDIF

      RETURN
      END



!-----------------------------------------------------------------------
      SUBROUTINE EDGEINTERP_VERT (FLUX,NY,LA,SIDE)
!.....ADDED BY XIAOMING WANG (JAN 22, 2006)
!.....SIGNIFICANT CHANGE FROM OLD SUB. (BEFORE NOV 2005): 
!	  INTERPOLATE FLUX INSTEAD OF VELOCITY
!.....INTERPOLATING VOLUMN FLUX ALONG HORIZONTAL CONNECTING BOUNDARY
!     FROM COARSE GRIDS INTO FINER GRIDS
!         1 -- TOP CONNECTING BOUNDARY
!.....SIDE:
!         0 -- LEFT CONNECTING BOUNDARY
!         1 -- RIGHT CONNECTING BOUNDARY
!-----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER)		:: LA
	  INTEGER           :: NY,SIDE,NN,IR,XS,XE,YS,YE
!	  REAL, DIMENSION(2*LA%REL_SIZE+1)   :: EDGE
	  REAL, DIMENSION(NY)   :: FLUX
	  REAL C1,C2,FLUX_X,FLUX_E
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

!	  DEGE = 0.0
      
	  NN = 2*LA%REL_SIZE
	  IR = LA%REL_SIZE
	  XS = LA%CORNERS(1)
      XE = LA%CORNERS(2)
	  YS = LA%CORNERS(3)
      YE = LA%CORNERS(4)

	  J_SHIFT = -YS*IR+1
	  IF (SIDE .EQ. 0) II = 1      !FOR LEFT BOUNDARY, SIDE=0
	  IF (SIDE .EQ. 1) II = LA%NX  !FOR RIGHT BOUNDARY, SIDE=1

      !�e����N���D�b����䪺�y�q PS:�l���檺�p��d�� I=2:IE,J=2:JE �̪F��M�̫n��U�@��}�C���p��
!!!	  IF (IR == 1) THEN !130911
!!!!$omp parallel
!!!!$omp do private(J) firstprivate(JJ)
!!!        DO J=YS,YE
!!!		  JJ = J-YS+1+1
!!!	      LA%M(II,JJ,1)=FLUX(J)
!!!		ENDDO
!!!!$omp end parallel
!!!	  ELSE
!OMP 111025 v1
!$omp parallel
!$omp do private(J,K) firstprivate(FLUX_S,FLUX_E,C1,C2,JS,JJ)
        DO J=YS,YE
			FLUX_S = 0.5*(FLUX(J-1)+FLUX(J)) !������ J-0.5�ӥ�����Z����m �y�q
			FLUX_E = 0.5*(FLUX(J+1)+FLUX(J)) !������ J+0.5�ӥ�����Z����m �y�q
			C1 = (FLUX_E-FLUX_S)/DBLE(NN) ! 0.5�Ӥl���� �y�q�ܤ�
			C2 = -C1 + FLUX_S !������ J-0.5�ӥ�����Z-0.5�Ӥl����Z����m
!*		 DO K=1,NN+1
!*		    EDGE(K) = K*C1 + C2 !DBLE(K-1)*(FLUX_E-FLUX_S)/DBLE(NN)+FLUX_S
!*	     ENDDO
			JS = J*IR + J_SHIFT !(J-YS)*IR+1
		    DO K=1,LA%REL_SIZE
				JJ = JS+K
				LA%M(II,JJ,1) = 2.0*K*C1 + C2	!EDGE(2*K) ! �H��ƪ��ܤƭ�(2.0*K*C1)+���I(C2)�@ K�q1�}�l
!*			IF (LA%H(II,JJ) .LE. GX) LA%M(II,JJ,1) = 0.0
		      IF (LA%H(II,JJ)+LA%Z(II,JJ,1) .LE. GX) LA%M(II,JJ,1) = 0.0
            ENDDO
	    ENDDO
!$omp end parallel
!!!	  ENDIF
      RETURN
	  END

!-----------------------------------------------------------------------
      SUBROUTINE EDGEINTERP_HORI (FLUX,NX,LA,SIDE)
!.....ADDED BY XIAOMING WANG (JAN 22, 2006)
!.....SIGNIFICANT CHANGE FROM OLD SUB. (BEFORE NOV 2005): 
!	  INTERPOLATE FLUX INSTEAD OF VELOCITY
!.....INTERPOLATING VOLUMN FLUX ALONG HORIZONTAL CONNECTING BOUNDARY
!     FROM COARSE GRIDS INTO FINER GRIDS
!.....SIDE:
!         0 -- BOTTOM CONNECTING BOUNDARY
!         1 -- TOP CONNECTING BOUNDARY
!-----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER)		:: LO, LA
	  INTEGER           :: SIDE,XS,XE,YS,YE
!	  REAL, DIMENSION(2*LA%REL_SIZE+1)   :: EDGE
	  REAL, DIMENSION(NX)  :: FLUX
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn 
!	  EDGE = 0.0
 
	  NN = 2*LA%REL_SIZE
	  IR = LA%REL_SIZE
	  XS = LA%CORNERS(1)
      XE = LA%CORNERS(2)
	  YS = LA%CORNERS(3)
      YE = LA%CORNERS(4)

	  I_SHIFT = -XS*IR+1
	  IF (SIDE .EQ. 0) JJ = 1      !FOR BOTTOM BOUNDARY, SIDE=0
	  IF (SIDE .EQ. 1) JJ = LA%ny  !FOR TOP BOUNDARY, SIDE=1
!!!	  IF (IR == 1) THEN !130911
!!!!$omp parallel
!!!!$omp do private(I) firstprivate(II)
!!!        DO I=XS,XE
!!!		  II = I-XS+1+1
!!!	      LA%N(II,JJ,1)=FLUX(I)
!!!		ENDDO
!!!!$omp end parallel
!!!	  ELSE
!OMP 111025 v1
!$omp parallel
!$omp do private(I,K) firstprivate(FLUX_S,FLUX_E,C1,C2,IS,II)
        DO I=XS,XE
	     FLUX_S = 0.5*(FLUX(I-1)+FLUX(I))
		 FLUX_E = 0.5*(FLUX(I+1)+FLUX(I))
		 C1 = (FLUX_E-FLUX_S)/DBLE(NN)
		 C2 = -C1+FLUX_S
!*		 DO K=1,NN+1
!*		    EDGE(K) = K*C1+C2 !DBLE(K-1)*(FLUX_E-FLUX_S)/DBLE(NN)+FLUX_S
!*	     ENDDO
		 IS = I*IR+I_SHIFT	  !(I-XS)*IR+1
		 DO K=1,LA%REL_SIZE
			II = IS+K
		    LA%N(II,JJ,1) = 2.0*K*C1+C2	!EDGE(2*K)
!*			IF (LA%H(II,JJ) .LE. 0.0) LA%N(II,JJ,1) = 0.0
			IF (LA%H(II,JJ)+LA%Z(II,JJ,1) .LE. GX) LA%N(II,JJ,1) = 0.0
	     ENDDO
        ENDDO
!$omp end parallel
!!!	  ENDIF
      RETURN
	  END


!-----------------------------------------------------------------------
      SUBROUTINE NEWQ (LO, LA, T)
!.......................................................................
!DESCRIPTION:
!	  #. INTERPOLATING VOLUME FLUX FROM OUTER LAYER INTO INNER LAYER
!		 THROUGH FOUR CONNECTING BOUNDARIES (I.E., FOUR BOUNDARIES OF 
!		 GRID LAYER LA) WHICH SERVE AS THE FLUX  BOUNDARY CONDITION OF LA
!		 AT THE MOMENT BETWEEN N*DT AND (N+1)*DT WHEN TIME STEP SIZE 
!		 RATIO OF LO TO LA IS LARGER THAN 1;
!	  #. SC_OPTION: COUPLING SCHEME BETWEEN SPHERICAL AND CARTESIAN
!			 = 0: TRADITIONAL COUPLING SCHEME BETWEEEN SPH AND CART;
!			 = 1: IMPROVED COUPLING SCHEME BETWEEN SPH AND CART;
!INPUT:
!	  #. LO: PARENT GRID INFO (OUTER GRID)
!	  #. LA: CHILD GRID INFO (INNER GRID)
!	  #. T: AN INTEGER AMONG 1 TO LA%REL_TIME
!NOTES:
!	  #. CREATED BY XIAOMING WANG (CORNELL, 2005)
!	  #. UPDATED ON JAN 25 2006 (XIAOMING WANG, CORNELL UNIVERSITY)
!	  #. UPDATED ON JAN09 2009 (XIAOMING WANG, GNS)
!	  #. UPDATED ON APR03 2009 (XIAOMING WANG, GNS)
!		 1. IMPROVE COUPLING SCHEME BETWEEN SPHERICAL AND CARTESIAN
!-----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER)		:: LO, LA
	  INTEGER T

	  IF (LA%SC_OPTION .EQ. 0) THEN
         CALL NEWQ_VERT(LO,LA,T,0) ! LEFT BOUNDARY
	     CALL NEWQ_VERT(LO,LA,T,1) ! RIGHT BOUNDARY
	     CALL NEWQ_HORI(LO,LA,T,0) ! BOTTOM BOUNDARY
	     CALL NEWQ_HORI(LO,LA,T,1) ! TOP BOUNDARY
	  ELSE
	     CALL NEWQ_SC (LO, LA, T)
	  ENDIF
      write(*,*) 'NEWQ   ',LA%REL_TIME
	  STOP

	  RETURN
	  END


!-----------------------------------------------------------------------
      SUBROUTINE NEWQ_VERT (LO, LA, T, SIDE)
!.......................................................................
!DESCRIPTION:
!	  #. INTERPOLATING VOLUME FLUX FROM OUTER LAYER INTO INNER LAYER
!		 THROUGH LEFT AND RIGHT CONNECTING BOUNDARIES (I.E., LEFT AND 
!		 RIGHT BOUNDARIES OF GRID LAYER LA) WHICH SERVE AS THE FLUX
!		 BOUNDARY CONDITION OF LA AT THE MOMENT BETWEEN N*DT AND (N+1)*DT
!		 WHEN TIME STEP SIZE RATIO OF LO TO LA IS LARGER THAN 1;
!     #. SIDE:
!			0 -- LEFT CONNECTING BOUNDARY
!			1 -- RIGHT CONNECTING BOUNDARY
!NOTES:
!	  #. CREATED BY XIAOMING WANG (CORNELL, 2006)
!	  #. UPDATED ON JAN09 2009 (XIAOMING WANG, GNS) 
!-----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER)		:: LO, LA
	  INTEGER SIDE
	  INTEGER T
	  REAL HM, XM, GRX
	  REAL YFLUX(LO%NY)
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

	  GRX = LO%GRX
	  YFLUX = 0.0
	  XM = 0.0

      IS = LA%CORNERS(1)
      IE = LA%CORNERS(2)
      JS = LA%CORNERS(3)
      JE = LA%CORNERS(4)

	  IF (SIDE .EQ. 0) I = IS-1 !FOR LEFT BOUNDARY, SIDE=0
	  IF (SIDE .EQ. 1) I = IE   !FOR RIGHT BOUNDARY, SIDE=1

	  C1 = (T-1.0)/LA%REL_TIME
	  C2 = 1.0-C1

      IP1 = I+1
!OMP 111025 1b
!$omp parallel
!$omp do private(J) firstprivate(JM1,TOT_N,XM,HM)
      DO J=JS-2,JE+2
         IF ((LO%H(I,J)+LO%Z(I,J,2).GT.GX)							&
					.AND. (LO%H(IP1,J)+LO%Z(IP1,J,2).GT.GX)) THEN
			IF (T.EQ.2) THEN !THIS ENSURES FORECAST CALCULATION ONLY BEING DONE ONCE
		       IF (LO%LAYCORD .EQ. 0) THEN
		          JM1 = J-1
                  TOT_N = LO%N(I,J,1)+LO%N(IP1,J,1)+LO%N(I,JM1,1)	&
													+LO%N(IP1,JM1,1)
                  XM = LO%M(I,J,1)-LO%R2(I,J)*(LO%Z(IP1,J,2)		&
									-LO%Z(I,J,2))+LO%R3(I,J)*TOT_N
			   ELSE
				  HM = LO%HP(I,J)+0.5*(LO%Z(I,J,2)+LO%Z(IP1,J,2))
                  XM = LO%M(I,J,1)-GRX*HM*(LO%Z(IP1,J,2)-LO%Z(I,J,2))
		       ENDIF
               IF (ABS(XM).LT.EPS) XM = ZERO
!*             LO%YFLUX(J) = 0.5*(XM+LO%M(I,J,1))
!              LO%YFLUX(J) = (T-1.0)/LA%REL_TIME*(XM-LO%M(I,J,1))+LO%M(I,J,1)
			   LO%YFLUX(J,SIDE+1) = XM
			ENDIF
		    YFLUX(J) = C1*LO%YFLUX(J,SIDE+1) + C2*LO%M(I,J,1)
         END IF
      END DO
!$omp end parallel	  
      CALL EDGEINTERP_VERT(YFLUX,LO%NY,LA,SIDE)

      RETURN
	  END

!-----------------------------------------------------------------------
      SUBROUTINE NEWQ_HORI (LO, LA, T, SIDE)
!.......................................................................
!DESCRIPTION:
!	  #. INTERPOLATING VOLUME FLUX FROM OUTER LAYER INTO INNER LAYER
!		 THROUGH TOP AND BOTTOM CONNECTING BOUNDARIES (I.E., TOP AND 
!		 BOTTOM BOUNDARIES OF GRID LAYER LA) WHICH SERVE AS THE FLUX

!		 BOUNDARY CONDITION OF LA AT THE MOMENT BETWEEN N*DT AND (N+1)*DT
!		 WHEN TIME STEP SIZE RATIO OF LO TO LA IS LARGER THAN 1;
!     #. SIDE:
!			0 -- BOTTOM CONNECTING BOUNDARY
!			1 -- TOP CONNECTING BOUNDARY
!NOTES:
!	  #. CREATED BY XIAOMING WANG (CORNELL, 2006)
!	  #. UPDATED ON JAN09 2009 (XIAOMING WANG, GNS) 
!-----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER)		:: LO, LA
	  INTEGER SIDE
	  INTEGER T
	  REAL HN, XN, GRY
	  REAL XFLUX(LO%NX)
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

	  GRY = LO%GRY
	  XFLUX = 0.0
	  XN = 0.0

      IS = LA%CORNERS(1)
      IE = LA%CORNERS(2)
      JS = LA%CORNERS(3)
      JE = LA%CORNERS(4)

	  IF (SIDE .EQ. 0) J = JS-1 !FOR BOTTOM BOUNDARY, SIDE=0
	  IF (SIDE .EQ. 1) J = JE   !FOR TOP BOUNDARY, SIDE=1

	  C1 = (T-1.0)/LA%REL_TIME
	  C2 = 1-C1

      JP1 = J+1
!OMP 111025 v1
!$omp parallel
!$omp do private(I) firstprivate(IM1,TOT_M,HN,XN)
      DO I=IS-2,IE+2
         IF ((LO%H(I,J)+LO%Z(I,J,2).GT.GX)							&
					.AND. (LO%H(I,JP1)+LO%Z(I,JP1,2).GT.GX)) THEN
			! THIS ENSURES FORECAST CALCULATION ONLY BEING DONE ONCE
	        IF (T.EQ.2) THEN 
		       IM1 = I-1
		       IF (LO%LAYCORD .EQ. 0) THEN
                  TOT_M = LO%M(IM1,J,1)+LO%M(IM1,JP1,1)+LO%M(I,J,1)	&
													+LO%M(I,JP1,1)
                  XN = LO%N(I,J,1)-LO%R4(I,J)*(LO%Z(I,JP1,2)		&
									-LO%Z(I,J,2))-LO%R5(I,J)*TOT_M	
			   ELSE
				  HN = LO%HQ(I,J)+0.5*(LO%Z(I,J,2)+LO%Z(I,JP1,2))
                  XN = LO%N(I,J,1)-GRY*HN*(LO%Z(I,JP1,2)-LO%Z(I,J,2))
		       ENDIF
               IF (ABS(XN).LT.EPS) XN = ZERO
			   LO%XFLUX(I,SIDE+1) = XN
!*             LO%XFLUX(I) = 0.5*(XN+LO%N(I,J,1))
!              LO%XFLUX(I) = (T-1.0)/LA%REL_TIME*(XN-LO%N(I,J,1))+LO%N(I,J,1)
	        ENDIF
		    XFLUX(I) = C1*LO%XFLUX(I,SIDE+1) + C2*LO%N(I,J,1)
         END IF
      END DO
!$omp end parallel
      CALL EDGEINTERP_HORI(XFLUX,LO%NX,LA,SIDE)

      RETURN
	  END


!----------------------------------------------------------------------
	  SUBROUTINE ININTERP (LO,LA)
!DESCRIPTION:	
!	  #. INTERPOLATE DEFORMATION PROFILE FROM 1ST-LEVEL GRID ALYER 
!	     LO INTO ALL SUB-LEVEL GRID LAYERS, LA;
!	  #. SC_OPTION: COUPLING SCHEME BETWEEN SPHERICAL AND CARTESIAN
!			 = 0: TRADITIONAL COUPLING SCHEME BETWEEEN SPH AND CART;
!			 = 1: IMPROVED COUPLING SCHEME BETWEEN SPH AND CART;
!NOTES:
!	  #. UPDATED ON OCT 28 2004 (XIAOMING WANG)
!	  #. UPDATED ON SEP 17 2006 (XIAOMING WANG)
!	  #. LAST REVISE: JAN.05 2009 (XIAOMING WANG)
!	  #. UPDATED ON FEB03 2009 (XIAOMING WANG, GNS)
!	  #. UPDATED ON APR03 2009 (XIAOMING WANG, GNS)
!		 1. IMPROVE COUPLING SCHEME BETWEEN SPHERICAL AND CARTESIAN
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER)	:: LO
	  TYPE (LAYER),DIMENSION(NUM_GRID)  :: LA
	  INTEGER OPTION
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

!.....INTERPOLATE FROM 1ST-LEVEL GRID REGION LO TO 2ND-LEVEL REGION LA
	  DO I = 1,NUM_GRID
	     IF (LA(I)%LAYSWITCH.EQ.0 .AND. LA(I)%PARENT.EQ.LO%ID) THEN
			IF (LA(I)%SC_OPTION .EQ. 0) THEN
		    CALL CELL_INTERP (LO,LA(I))
			ELSE
			CALL CELL_INTERP_SC (LO,LA(I))
			ENDIF
		 ENDIF
	  ENDDO	  
!.....INTERPOLATE FROM 2ND-LEVEL GRID REGION TO ALL SUB-LEVEL GRIDS            
	  DO L=2,NUM_GRID+1
		 DO J=1,NUM_GRID
		    IF (LA(J)%LAYSWITCH.EQ.0 .AND. LA(J)%LEVEL.EQ.L) THEN
               DO K=1,NUM_GRID
				  IF (LA(K)%LAYSWITCH.EQ.0							&
								.AND. LA(K)%PARENT.EQ.LA(J)%ID) THEN
					 IF (LA(K)%SC_OPTION .EQ. 0) THEN
					 CALL CELL_INTERP (LA(J),LA(K)) 
					 ELSE
					 CALL CELL_INTERP_SC (LA(J),LA(K))
					 ENDIF
				  ENDIF
			   ENDDO
		    ENDIF
		 ENDDO   
	  ENDDO	   	  
      RETURN
      END


!----------------------------------------------------------------------
      SUBROUTINE CELL_INTERP (LO,LA)
!......................................................................
!DESCRIPTION:
!	  #. INTERPOLATE INITIAL SURFACE DEFORMATION FROM OUTER REGION (LO)
!	     INTO INNER REGIONS (LA)
!NOTE: 
!	  #. CREATED ON OCT 28, 2004 (XIAOMING WANG, CORNELL UNIVERSITY)
!        ORIGINAL SUBROUTINE INI_TPL IS REMOVED TO 
!	     SIMPLIFY VARIABLE STRUCTURE
!	  #. UPDATED ON JAN06 2009 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER)	:: LO, LA
      INTEGER       :: IS,JS,IE,JE,NX,IR
	  REAL TL,TR,BL,BR
	  REAL CELL(2*LA%REL_SIZE+1,2*LA%REL_SIZE+1)
	  REAL SMALL(LA%REL_SIZE,LA%REL_SIZE)
	  REAL DEFORM (LA%NX,LA%NY)

	  SMALL = 0.0
	  CELL = 0.0
	  DEFORM = 0.0

	  IS = LA%CORNERS(1)
	  IE = LA%CORNERS(2)
	  JS = LA%CORNERS(3)
	  JE = LA%CORNERS(4)

      NX = 2*LA%REL_SIZE
	  IR = LA%REL_SIZE
!OMP 111025 v1
!$omp parallel
!$omp do private(I,J,K,M) &
!$omp firstprivate(IP1,IM1,JP1,JM1,TL,TR,BL,CELL,SMALL)
      DO I = IS, IE
	     IP1 = I + 1
         IM1 = I - 1
         DO J = JS, JE
			JP1 = J + 1
			JM1 = J - 1
		    !GET DEFORMATION AT FOUR CORNERS OF A LARGE GRID CELL
            TL = (LO%DEFORM(I,J)+LO%DEFORM(I,JP1)+LO%DEFORM(IM1,J)	&
						+LO%DEFORM(IM1,JP1))/4.0 !TOP LEFT CORNER
            TR = (LO%DEFORM(I,J)+LO%DEFORM(I,JP1)+LO%DEFORM(IP1,J)	&
						+LO%DEFORM(IP1,JP1))/4.0 !TOP RIGHT CORNER
            BL = (LO%DEFORM(I,J)+LO%DEFORM(I,JM1)+LO%DEFORM(IM1,J)	&
						+LO%DEFORM(IM1,JM1))/4.0 !BOTTOM LEFT CORNER
            BR = (LO%DEFORM(I,J)+LO%DEFORM(I,JM1)+LO%DEFORM(IP1,J)	&
						+LO%DEFORM(IP1,JM1))/4.0 !BOTTOM RIGHT CORNER
!...........CELL STORES WATERDEPTH VALUES CENTERED AT LARGE GRID (I,J)
!			WHICH ARE INTERPOLATED FROM ITS ADJACENT LARGE GRIDS
!...........GET VALUES ALONG TWO VERTICAL BOUNDARY OF THE LARGE CELL
            DO K=1,NX+1
               CELL(1,K) = (K-1.0)*(TL-BL)/NX + BL
               CELL(NX+1,K) = (K-1.0)*(TR-BR)/NX + BR
            ENDDO
            !INTERPOLATED FROM TWO VERTICAL BOUNDARIES
            DO M=1, NX+1
               DO K=1, NX+1
                  CELL(M,K)=(M-1.)*(CELL(NX+1,K)-CELL(1,K))/NX+CELL(1,K)
               ENDDO
            ENDDO
!...........GET INTERPOLATED WATER DEPTH VALUES FOR NESTED GRIDS 
!			OVERLAPPED BY CELL (LAY1(I,J))
            DO K=1,LA%REL_SIZE
               DO M=1,LA%REL_SIZE
                  SMALL(K,M)=CELL(2*K,2*M)
               ENDDO
            ENDDO
            DEFORM((I-IS)*IR+2:(I-IS+1)*IR+1,						&
						(J-JS)*IR+2:(J-JS+1)*IR+1) = SMALL(:,:)
         ENDDO
      ENDDO 
!$omp end parallel
	  LA%DEFORM(:,:) = DEFORM(:,:) 	  
!	  LA%Z(:,:,1) = LA%Z(:,:,1) + LA%DEFORM(:,:)

!*	  LA%Z((I-XS)*IR+2:(I-XS+1)*IR+1,(J-YS)*IR+2:(J-YS+1)*IR+1,1) = SMALL(:,:)
	   
	  RETURN 
	  END


!----------------------------------------------------------------------
      SUBROUTINE CELL_INTERP_SC (LO,LA)
!......................................................................
!DESCRIPTION:
!	  #. INTERPOLATE INITIAL SURFACE DEFORMATION FROM OUTER REGION (LO)
!	     INTO INNER REGIONS (LA)
!     #. DESIGNED FOR INTERPOLATION FROM SPHERICAL GRID LAYER, LO, TO 
!	     CARTESIAN GRID LAYERS, LA;
!	  #. REVERSE UNIVERSAL TRANSVERSE MERCATOR PROJECTION IS ADOPTED 
!		 TO PROJECT GRIDS IN CARTESIAN COORDINATE SYSTEM ONTO THE 
!		 EARTH SPHERE SURFACE (WGS84 ELLIPSOID);
!	  #. LA%UPZ = 
!			.TRUE. - PARENT GRID, LO, AND CHILD GRID, LA, ADOPT 
!					THE SAME COORDINATE SYSTEM;
!			.FALSE. - PARENT GRID, LO, AND CHILD GRID, LA, ADOPT  
!					DIFFERENT COORDINATE SYSTEM;
!	  #. SC_OPTION: COUPLING SCHEME BETWEEN SPHERICAL AND CARTESIAN
!			 = 0: TRADITIONAL COUPLING SCHEME BETWEEEN SPH AND CART;
!			 = 1: IMPROVED COUPLING SCHEME BETWEEN SPH AND CART;
!NOTE: 
!	  #. CREATED ON JAN05 2009 (XIAOMING WANG, GNS)
!	  #. UPDATED ON JAN05 2009 (XIAOMING WANG, GNS)
!	  #. UPDATED ON APR06 2009 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER)	:: LO, LA
      INTEGER KI,KJ,I,J
	  REAL Z1,Z2,Z3,Z4
	  REAL DEFORM(LA%NX,LA%NY)
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

	  DEFORM = 0.0
!OMP 111025 v1
!$omp parallel
!$omp do private(I,J) &
!$omp firstprivate(KI,KJ,Z1,Z2,Z3,Z4)
	  DO I = 1,LA%NX
		 DO J = 1,LA%NY
			KI = LA%POS(I,J,1)
			KJ = LA%POS(I,J,2)
			IF (KI.GE.1 .AND. KI.LT.LO%NX) THEN
			   IF (KJ.GE.1 .AND. KJ.LT.LO%NY) THEN
                  Z1 = LO%DEFORM(KI,KJ)*LA%CXY(I,J,1)
			      Z2 = LO%DEFORM(KI+1,KJ)*LA%CXY(I,J,2)
			      Z3 = LO%DEFORM(KI,KJ+1)*LA%CXY(I,J,3)
			      Z4 = LO%DEFORM(KI+1,KJ+1)*LA%CXY(I,J,4)
			      DEFORM(I,J) = Z1+Z2+Z3+Z4
			   ENDIF
			ENDIF
         ENDDO
      ENDDO 
!$omp end parallel
!	  LA%Z(:,:,1) = LA%Z(:,:,1) + CELL(:,:)
	  LA%DEFORM(:,:) = DEFORM(:,:)
	  
	  RETURN  
	  END



!----------------------------------------------------------------------
      SUBROUTINE EDGE_INTERP_SC (LO,LA)
!......................................................................
!DESCRIPTION:
!	  #. VOLUME FLUXES ALONG FOUR BOUNDARIES OF CHILD GRID LAYER LA ARE 
!		 OBTAINED VIA INTERPOLATION FROM PARENT GRID LAYER LO AT 
!		 THE BEGINNING OF A TIME STEP;
!     #. DESIGNED FOR INTERPOLATION FROM SPHERICAL GRID LAYER, LO, TO 
!	     CARTESIAN GRID LAYERS, LA;
!	  #. REVERSE UNIVERSAL TRANSVERSE MERCATOR PROJECTION IS ADOPTED 
!		 TO PROJECT GRIDS IN CARTESIAN COORDINATE SYSTEM ONTO THE 
!		 EARTH SPHERE SURFACE (WGS84 ELLIPSOID);
!	  #. LA%UPZ = 
!				.TRUE. - PARENT GRID, LO, AND CHILD GRID, LA, ADOPT 
!						  THE SAME COORDINATE SYSTEM;
!				.FALSE. - PARENT GRID, LO, AND CHILD GRID, LA, ADOPT  
!						  DIFFERENT COORDINATE SYSTEM;
!	  #. SC_OPTION: COUPLING SCHEME BETWEEN SPHERICAL AND CARTESIAN
!			 = 0: TRADITIONAL COUPLING SCHEME BETWEEEN SPH AND CART;
!			 = 1: IMPROVED COUPLING SCHEME BETWEEN SPH AND CART;
!NOTE: 
!	  CREATED ON JAN05 2009 (XIAOMING WANG, GNS)
!	  UPDATED ON JAN06 2009 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER)	:: LO, LA
	  real Z1,Z2,Z3,Z4
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

!.....GET FLUX THROUGH LEFT BOUNDARY OF LA
!OMP 111025 v1
!$omp parallel
!$omp do private(J) firstprivate(KI,KJ,Z1,Z2,Z3,Z4)
	  DO J = 1,LA%NY
		 KI = LA%POS(1,J,1)
		 KJ = LA%POS(1,J,2)
		 IF (LA%H(I,J)+LA%Z(I,J,2) .GT. GX) THEN
            Z1 = LO%M(KI,KJ,1)*LA%CXY(1,J,1)
		    Z2 = LO%M(KI+1,KJ,1)*LA%CXY(1,J,2)
		    Z3 = LO%M(KI,KJ+1,1)*LA%CXY(1,J,3)
		    Z4 = LO%M(KI+1,KJ+1,1)*LA%CXY(1,J,4)
		    LA%M(1,J,1) = Z1+Z2+Z3+Z4
		 ELSE
			LA%M(1,J,1) = 0.0
		 ENDIF
      ENDDO 
!.....GET FLUX THROUGH RIGHT BOUNDARY OF LA
!$omp barrier
!$omp do private(J) firstprivate(KI,KJ,Z1,Z2,Z3,Z4)
	  DO J = 1,LA%NY
		 KI = LA%POS(LA%NX,J,1)
		 KJ = LA%POS(LA%NX,J,2)
		 IF (LA%H(I,J)+LA%Z(I,J,2) .GT. GX) THEN
            Z1 = LO%M(KI,KJ,1)*LA%CXY(LA%NX,J,1)
			Z2 = LO%M(KI+1,KJ,1)*LA%CXY(LA%NX,J,2)
			Z3 = LO%M(KI,KJ+1,1)*LA%CXY(LA%NX,J,3)
			Z4 = LO%M(KI+1,KJ+1,1)*LA%CXY(LA%NX,J,4)
			LA%M(LA%NX,J,1) = Z1+Z2+Z3+Z4
		 ELSE
			LA%M(LA%NX,J,1) = 0.0
		 ENDIF
      ENDDO 
!.....GET FLUX THROUGH BOTTOM BOUNDARY OF LA
!$omp barrier
!$omp do private(I) firstprivate(KI,KJ,Z1,Z2,Z3,Z4)
	  DO I = 1,LA%NX
		 KI = LA%POS(I,1,1)
		 KJ = LA%POS(I,1,2)
		 IF (LA%H(I,J)+LA%Z(I,J,2) .GT. GX) THEN
            Z1 = LO%N(KI,KJ,1)*LA%CXY(I,1,1)
			Z2 = LO%N(KI+1,KJ,1)*LA%CXY(I,1,2)
			Z3 = LO%N(KI,KJ+1,1)*LA%CXY(I,1,3)
			Z4 = LO%N(KI+1,KJ+1,1)*LA%CXY(I,1,4)
			LA%N(I,1,1) = Z1+Z2+Z3+Z4
		 ELSE
			LA%N(I,1,1) = 0.0
		 ENDIF
      ENDDO 

!.....GET FLUX THROUGH TOP BOUNDARY OF LA
!$omp barrier
!$omp do private(I) firstprivate(KI,KJ,Z1,Z2,Z3,Z4)
	  DO I = 1,LA%NX
		 KI = LA%POS(I,LA%NY,1)
		 KJ = LA%POS(I,LA%NY,2)
		 IF (LA%H(I,J)+LA%Z(I,J,2) .GT. GX) THEN
            Z1 = LO%N(KI,KJ,1)*LA%CXY(I,LA%NY,1)
			Z2 = LO%N(KI+1,KJ,1)*LA%CXY(I,LA%NY,2)
			Z3 = LO%N(KI,KJ+1,1)*LA%CXY(I,LA%NY,3)
			Z4 = LO%N(KI+1,KJ+1,1)*LA%CXY(I,LA%NY,4)
			LA%N(I,LA%NY,1) = Z1+Z2+Z3+Z4
		 ELSE
			LA%N(I,LA%NY,1) = 0.0
		 ENDIF
      ENDDO 
!$omp end parallel
	  
	  RETURN  
	  END

!----------------------------------------------------------------------
      SUBROUTINE NEWQ_SC (LO,LA,T)
!......................................................................
!DESCRIPTION:
!	  #. VOLUME FLUXES ALONG FOUR BOUNDARIES OF CHILD GRID LAYER LA ARE 
!		 OBTAINED VIA INTERPOLATION FROM PARENT GRID LAYER LO AT TIME
!		 N*LO%DT AND (N+1)*LO%DT; VOLUME FLUXES OF LO AT THE BEGINNING
!		 OF A TIME STEP, N, IS KNOWN, BUT THEY ARE NOT KNOWN AT N+1.
!		 VOLUME FLUXES OF LO AT T = (N+1)*LO%DT ARE PREDICTED LOCALLY 
!		 ALONG THE FOUR CONNECTING BOUNDARIES OF BETWEEN LO AND LA. 
!		 THEN, INTERPOLATION IS CARRIED OUT TO GET THE FLUXES BETWEEN
!		 N*LO%DT AND (N+1)*LO%DT. THESE INTERPOLATED FLUXES ARE 
!		 INTERPOLATED AGAIN TO FORM THE FLUX BOUDNARY CONDITIONS OF LA.
!     #. DESIGNED FOR INTERPOLATION FROM SPHERICAL GRID LAYER, LO, TO 
!	     CARTESIAN GRID LAYERS, LA;
!	  #. REVERSE UNIVERSAL TRANSVERSE MERCATOR PROJECTION IS ADOPTED 
!		 TO PROJECT GRIDS IN CARTESIAN COORDINATE SYSTEM ONTO THE 
!		 EARTH SPHERE SURFACE (WGS84 ELLIPSOID);
!	  #. LA%UPZ = 
!				.TRUE. - PARENT GRID, LO, AND CHILD GRID, LA, ADOPT 
!						  THE SAME COORDINATE SYSTEM;
!				.FALSE. - PARENT GRID, LO, AND CHILD GRID, LA, ADOPT  
!						  DIFFERENT COORDINATE SYSTEM;
!	  #. SC_OPTION: COUPLING SCHEME BETWEEN SPHERICAL AND CARTESIAN
!			 = 0: TRADITIONAL COUPLING SCHEME BETWEEEN SPH AND CART;
!			 = 1: IMPROVED COUPLING SCHEME BETWEEN SPH AND CART;
!NOTE: 
!	  #. CREATED ON JAN05 2009 (XIAOMING WANG, GNS)
!	  #. UPDATED ON JAN06 2009 (XIAOMING WANG, GNS)
!	  #. UPDATED ON APR07 2009 (XIAOMING WANG, GNS)

!		 1. IMPROVE THE EFFICIENCY;
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER)	:: LO, LA
      INTEGER       :: KI,KJ,T
	  REAL XM1,XM2,YN1,YN2
	  REAL C1, C2
      DATA TWLVTH/0.08333333333333/
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

!.....FORECAST THE X FLUX THROUGH LEFT BOUNDARY AT T = N+1
	  IS = MIN0(LA%POS(1,1,1),LA%POS(1,LA%NY,1))-2
	  IE = MAX0(LA%POS(1,1,1),LA%POS(1,LA%NY,1))+2
	  JS = LA%CORNERS(3)-2
	  JE = LA%CORNERS(4)+2
	  SCM = 0.0
	  XM = 0.0
	  XN = 0.0
!OMP 111025 v1
!$omp parallel
!$omp do private(I,J) firstprivate(IP1,JM1,JP1,TOT_N,XM,SCM)
	  DO I=IS,IE
         IP1 = I+1
         DO J=JS,JE
			IF ((LO%H(I,J).GT.GX) .AND. (LO%H(IP1,J).GT.GX)) THEN
				JM1 = J-1
				JP1 = J+1
				IF (JM1.LE.1) JM1 = 1
				IF (JP1.GE.LO%NY) JP1 = LO%NY
				TOT_N = LO%N(I,J,1) + LO%N(IP1,J,1) + LO%N(I,JM1,1)	&
												+ LO%N(IP1,JM1,1)
				XM = LO%M(I,J,1) - LO%R2(I,J)*(LO%Z(IP1,J,2)		&
								- LO%Z(I,J,2)) + LO%R3(I,J)*TOT_N
				IF (LO%MODSCM .EQ. 0) THEN
					SCM =  LO%R2(I,J)*TWLVTH*((LO%Z(IP1,JP1,2)		&
								- 2*LO%Z(IP1,J,2)+LO%Z(IP1,JM1,2))	&
								- (LO%Z(I,JP1,2)-2*LO%Z(I,J,2)		&
								+ LO%Z(I,JM1,2)))
					XM = XM - SCM
				ENDIF
				IF (ABS(XM) .LT. EPS) XM = ZERO
				LO%M(I,J,2) = XM
			ELSE
			    LO%M(I,J,2) = 0.0
			END IF
         END DO
      END DO
!$omp end parallel
!.....FORECAST THE X FLUX THROUGH RIGHT BOUNDARY AT T = N+1
	  IS = MIN0(LA%POS(LA%NX,1,1),LA%POS(LA%NX,LA%NY,1))-2
	  IE = MAX0(LA%POS(LA%NX,1,1),LA%POS(LA%NX,LA%NY,1))+2
	  JS = LA%CORNERS(3)-2
	  JE = LA%CORNERS(4)+2
	  SCM = 0.0
	  XM = 0.0
	  XN = 0.0
!OMP 111025 v1
!$omp parallel
!$omp do private(I,J) firstprivate(IP1,JM1,JP1,TOT_N,XM,SCM)
	  DO I=IS,IE
         IP1 = I+1
         DO J=JS,JE
			IF ((LO%H(I,J).GT.GX) .AND. (LO%H(IP1,J).GT.GX)) THEN
				JM1 = J-1
				JP1 = J+1
				IF (JM1.LE.1) JM1 = 1
				IF (JP1.GE.LO%NY) JP1 = LO%NY
				TOT_N = LO%N(I,J,1) + LO%N(IP1,J,1) + LO%N(I,JM1,1)	&
												+ LO%N(IP1,JM1,1)
				XM = LO%M(I,J,1) - LO%R2(I,J)*(LO%Z(IP1,J,2)		&
								- LO%Z(I,J,2)) + LO%R3(I,J)*TOT_N
				IF (LO%MODSCM .EQ. 0) THEN
					SCM =  LO%R2(I,J)*TWLVTH*((LO%Z(IP1,JP1,2)		&
								- 2*LO%Z(IP1,J,2)+LO%Z(IP1,JM1,2))	&
								- (LO%Z(I,JP1,2)-2*LO%Z(I,J,2)		&
								+ LO%Z(I,JM1,2)))
					XM = XM - SCM
				ENDIF
				IF (ABS(XM) .LT. EPS) XM = ZERO
				LO%M(I,J,2) = XM
			ELSE
			    LO%M(I,J,2) = 0.0
			END IF
         END DO
      END DO
!$omp end parallel
!.....FORECAST THE Y FLUX THROUGH TOP BOUNDARY AT T = N+1
	  IS = LA%CORNERS(1)-2
	  IE = LA%CORNERS(2)+2
	  JS = MIN0(LA%POS(1,LA%NY,2),LA%POS(LA%NX,LA%NY,2))-2
	  JE = MAX0(LA%POS(1,LA%NY,2),LA%POS(LA%NX,LA%NY,2))+2
	  SCM = 0.0
	  XM = 0.0
	  XN = 0.0
!OMP 111025 v1
!$omp parallel
!$omp do private(J,I) firstprivate(JP1,IM1,IP1,TOT_M,XN,SCM)
      DO J=JS,JE
         JP1 = J+1
         DO I=IS,IE
			IF ((LO%H(I,J).GT.GX) .AND. (LO%H(I,JP1).GT.GX)) THEN
				IM1 = I-1
				IP1 = I+1
				IF (IM1.LE.1) IM1 = 1
				IF (IP1.GE.LO%NX) IP1 = LO%NX
				TOT_M = LO%M(IM1,J,1)+LO%M(IM1,JP1,1)+LO%M(I,J,1)	&
													+ LO%M(I,JP1,1)
				XN = LO%N(I,J,1) - LO%R4(I,J)*(LO%Z(I,JP1,2)		&
								- LO%Z(I,J,2))-LO%R5(I,J)*TOT_M
				IF (LO%MODSCM .EQ. 0) THEN
					SCM = LO%R4(I,J)*TWLVTH*((LO%Z(IP1,JP1,2)		&
								- 2*LO%Z(I,JP1,2)+LO%Z(IM1,JP1,2))	&
			                    - (LO%Z(IP1,J,2)-2*LO%Z(I,J,2)		&
								+ LO%Z(IM1,J,2)))
					XN = XN - SCM
				ENDIF
				IF (ABS(XN) .LT. EPS) XN = ZERO
				LO%N(I,J,2) = XN
			ELSE
			    LO%N(I,J,2) = 0.0
			END IF
         END DO
      END DO
!$omp end parallel	  
!.....FORECAST THE Y FLUX THROUGH BOTTOM BOUNDARY AT T = N+1
	  IS = LA%CORNERS(1)-2
	  IE = LA%CORNERS(2)+2
	  JS = MIN0(LA%POS(1,1,2),LA%POS(LA%NX,1,2))-2
	  JE = MAX0(LA%POS(1,1,2),LA%POS(LA%NX,1,2))+2
	  SCM = 0.0
	  XM = 0.0
	  XN = 0.0
!OMP 111025 v1
!$omp parallel
!$omp do private(J,I) firstprivate(JP1,IM1,IP1,TOT_M,XN,SCM)
      DO J=JS,JE
         JP1 = J+1
         DO I=IS,IE
			IF ((LO%H(I,J).GT.GX) .AND. (LO%H(I,JP1).GT.GX)) THEN
				IM1 = I-1
				IP1 = I+1
				IF (IM1.LE.1) IM1 = 1
				IF (IP1.GE.LO%NX) IP1 = LO%NX
				TOT_M = LO%M(IM1,J,1)+LO%M(IM1,JP1,1)+LO%M(I,J,1)	&
													+ LO%M(I,JP1,1)
				XN = LO%N(I,J,1) - LO%R4(I,J)*(LO%Z(I,JP1,2)		&
								- LO%Z(I,J,2))-LO%R5(I,J)*TOT_M
				IF (LO%MODSCM .EQ. 0) THEN
					SCM = LO%R4(I,J)*TWLVTH*((LO%Z(IP1,JP1,2)		&
								- 2*LO%Z(I,JP1,2)+LO%Z(IM1,JP1,2))	&
			                    - (LO%Z(IP1,J,2)-2*LO%Z(I,J,2)		&
								+ LO%Z(IM1,J,2)))
					XN = XN - SCM
				ENDIF
				IF (ABS(XN) .LT. EPS) XN = ZERO
				LO%N(I,J,2) = XN
			ELSE
			    LO%N(I,J,2) = 0.0
			END IF
         END DO
      END DO
!$omp end parallel
!.....INTERPOLATE FLUXES FROM LO TO LA THROUGH CONNECTING BOUNDARIES
	  C1 = (T-1.0)/LA%REL_TIME
	  C2 = 1.0 - C1
!.....GET FLUX THROUGH LEFT BOUNDARY OF LA
!OMP 111025 v1
!$omp parallel
!$omp do private(J) firstprivate(KI,KJ,XM1,XM2,Z1,Z2,Z3,Z4)
	  DO J = 1,LA%NY
		 KI = LA%POS(1,J,1)
		 KJ = LA%POS(1,J,2)
		 XM1 = 0.0
		 XM2 = 0.0
		 IF (LA%H(1,J)+LA%Z(1,J,2) .GT. GX) THEN
            Z1 = LO%M(KI,KJ,1)*LA%CXY(1,J,1)
			Z2 = LO%M(KI+1,KJ,1)*LA%CXY(1,J,2)
			Z3 = LO%M(KI,KJ+1,1)*LA%CXY(1,J,3)
			Z4 = LO%M(KI+1,KJ+1,1)*LA%CXY(1,J,4)
			XM1 = Z1+Z2+Z3+Z4
            Z1 = LO%M(KI,KJ,2)*LA%CXY(1,J,1)
			Z2 = LO%M(KI+1,KJ,2)*LA%CXY(1,J,2)
			Z3 = LO%M(KI,KJ+1,2)*LA%CXY(1,J,3)
			Z4 = LO%M(KI+1,KJ+1,2)*LA%CXY(1,J,4)
			XM2 = Z1+Z2+Z3+Z4
			LA%M(1,J,1) = C1*XM2 + C2*XM1
		 ELSE
			LA%M(1,J,1) = 0.0
		 ENDIF
      ENDDO 
!.....GET FLUX THROUGH RIGHT BOUNDARY OF LA
!$omp barrier
!$omp do private(J) firstprivate(KI,KJ,XM1,XM2,Z1,Z2,Z3,Z4)
	  DO J = 1,LA%NY
		 KI = LA%POS(LA%NX,J,1)
		 KJ = LA%POS(LA%NX,J,2)
		 XM1 = 0.0
		 XM2 = 0.0
		 IF (LA%H(LA%NX,J)+LA%Z(LA%NX,J,2) .GT. GX) THEN
            Z1 = LO%M(KI,KJ,1)*LA%CXY(LA%NX,J,1)
			Z2 = LO%M(KI+1,KJ,1)*LA%CXY(LA%NX,J,2)
			Z3 = LO%M(KI,KJ+1,1)*LA%CXY(LA%NX,J,3)
			Z4 = LO%M(KI+1,KJ+1,1)*LA%CXY(LA%NX,J,4)
			XM1 = Z1+Z2+Z3+Z4
            Z1 = LO%M(KI,KJ,2)*LA%CXY(LA%NX,J,1)
			Z2 = LO%M(KI+1,KJ,2)*LA%CXY(LA%NX,J,2)
			Z3 = LO%M(KI,KJ+1,2)*LA%CXY(LA%NX,J,3)
			Z4 = LO%M(KI+1,KJ+1,2)*LA%CXY(LA%NX,J,4)
			XM2 = Z1+Z2+Z3+Z4
			LA%M(LA%NX,J,1) = C1*XM2 + C2*XM1
		 ELSE
			LA%M(LA%NX,J,1) = 0.0
		 ENDIF
      ENDDO 	  
!.....GET FLUX THROUGH BOTTOM BOUNDARY OF LA
!$omp barrier
!$omp do private(I) firstprivate(KI,KJ,YN1,YN2,Z1,Z2,Z3,Z4)
	  DO I = 1,LA%NX
		 KI = LA%POS(I,1,1)
		 KJ = LA%POS(I,1,2)
		 YN1 = 0.0
		 YN2 = 0.0
		 IF (LA%H(I,1)+LA%Z(I,1,2) .GT. GX) THEN
            Z1 = LO%N(KI,KJ,1)*LA%CXY(I,1,1)
			Z2 = LO%N(KI+1,KJ,1)*LA%CXY(I,1,2)
			Z3 = LO%N(KI,KJ+1,1)*LA%CXY(I,1,3)
			Z4 = LO%N(KI+1,KJ+1,1)*LA%CXY(I,1,4)
			YN1 = Z1+Z2+Z3+Z4
            Z1 = LO%N(KI,KJ,2)*LA%CXY(I,1,1)
			Z2 = LO%N(KI+1,KJ,2)*LA%CXY(I,1,2)
			Z3 = LO%N(KI,KJ+1,2)*LA%CXY(I,1,3)
			Z4 = LO%N(KI+1,KJ+1,2)*LA%CXY(I,1,4)
			YN2 = Z1+Z2+Z3+Z4
			LA%N(I,1,1) = C1*YN2 + C2*YN1
		 ELSE
			LA%N(I,1,1) = 0.0
		 ENDIF
      ENDDO 

!.....GET FLUX THROUGH TOP BOUNDARY OF LA
!$omp barrier
!$omp do private(I) firstprivate(KI,KJ,YN1,YN2,Z1,Z2,Z3,Z4)
	  DO I = 1,LA%NX
		 KI = LA%POS(I,LA%NY,1)
		 KJ = LA%POS(I,LA%NY,2)
		 YN1 = 0.0
		 YN2 = 0.0
		 IF (LA%H(I,LA%NY)+LA%Z(I,LA%NY,2) .GT. GX) THEN
            Z1 = LO%N(KI,KJ,1)*LA%CXY(I,LA%NY,1)
			Z2 = LO%N(KI+1,KJ,1)*LA%CXY(I,LA%NY,2)
			Z3 = LO%N(KI,KJ+1,1)*LA%CXY(I,LA%NY,3)
			Z4 = LO%N(KI+1,KJ+1,1)*LA%CXY(I,LA%NY,4)
			YN1 = Z1+Z2+Z3+Z4
            Z1 = LO%N(KI,KJ,2)*LA%CXY(I,LA%NY,1)
			Z2 = LO%N(KI+1,KJ,2)*LA%CXY(I,LA%NY,2)
			Z3 = LO%N(KI,KJ+1,2)*LA%CXY(I,LA%NY,3)
			Z4 = LO%N(KI+1,KJ+1,2)*LA%CXY(I,LA%NY,4)
			YN2 = Z1+Z2+Z3+Z4
!			LA%N(I,LA%NY,1) = ((T-1.0)/LA%REL_TIME)*(YN2-YN1)+YN1
			LA%N(I,LA%NY,1) = C1*YN2 + C1*YN1
		 ELSE
			LA%N(I,LA%NY,1) = 0.0
		 ENDIF
      ENDDO 
!$omp end parallel
	  RETURN  
	  END

!----------------------------------------------------------------------
      SUBROUTINE JNZ_SC (LO,LA)
!......................................................................
!DESCRIPTION:
!	  #. UPDATE FREE SURFACE DISPLACEMENT FROM INNER REGION (LA)  
!	     INTO OUTER REGION (LO)
!     #. DESIGNED FOR INTERPOLATION FROM SPHERICAL GRID LAYER, LO, TO 
!	     CARTESIAN GRID LAYERS, LA;
!	  #. REVERSE UNIVERSAL TRANSVERSE MERCATOR PROJECTION IS ADOPTED 
!		 TO PROJECT GRIDS IN CARTESIAN COORDINATE SYSTEM ONTO THE 
!		 EARTH SPHERE SURFACE (WGS84 ELLIPSOID);
!	  #. LA%UPZ = 
!				.TRUE. - PARENT GRID, LO, AND CHILD GRID, LA, ADOPT 
!						  THE SAME COORDINATE SYSTEM;
!				.FALSE. - PARENT GRID, LO, AND CHILD GRID, LA, ADOPT  
!						  DIFFERENT COORDINATE SYSTEM;
!     #. RUNS MUCH SLOWER THAN JNZ, NOT EFFICIENT!!! (IMPROVED)
!	  #. SC_OPTION: COUPLING SCHEME BETWEEN SPHERICAL AND CARTESIAN
!			 = 0: TRADITIONAL COUPLING SCHEME BETWEEEN SPH AND CART;
!			 = 1: IMPROVED COUPLING SCHEME BETWEEN SPH AND CART;
!NOTE: 
!	  #. CREATED ON JAN05 2009 (XIAOMING WANG, GNS)
!	  #. UPDATED ON JAN06 2009 (XIAOMING WANG, GNS)
!	  #. UPDATED ON APR03 2009 (XIAOMING WANG, GNS)
!		 1. IMPROVE COUPLING SCHEME BETWEEN SPHERICAL AND CARTESIAN
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER)	:: LO, LA
      INTEGER COUNT,KI,KJ,I,J
	  REAL SUM, HALF
	  REAL Z(LO%NX,LO%NY),S(LO%NX,LO%NY)
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

	  Z = 0.0
	  S = 0.0

      HALF = REAL(LA%REL_SIZE*LA%REL_SIZE)/2.0
!OMP 111025 v1
!$omp parallel
!$omp do private(I,J) firstprivate(KI,KJ)
	  DO I = 1,LA%NX
	     DO J = 1,LA%NY
			IF (LA%H(I,J)+LA%Z(I,J,2) .GT. GX) THEN
			   KI = LA%POS(I,J,1)
			   KJ = LA%POS(I,J,2)
			   Z(KI,KJ) = Z(KI,KJ) + LA%Z(I,J,2)
			   S(KI,KJ) = S(KI,KJ) + 1.0
			ENDIF
		 ENDDO
	  ENDDO
!$omp barrier
!$omp do private(I,J)
	  DO I = LA%CORNERS(1),LA%CORNERS(2)
		 DO J = LA%CORNERS(3),LA%CORNERS(4)
			IF (S(I,J) .GT. HALF) THEN
			   LO%Z(I,J,2) = Z(I,J)/S(I,J)
			ENDIF
		 ENDDO
	  ENDDO
!$omp end parallel	  
	  RETURN  
	  END

!*!----------------------------------------------------------------------
!*      SUBROUTINE BC_SETUP (LO,BCI_INFO,WAVE_INFO,BC_TYPE)
!*!.....SET UP VERTICAL WALL BOUNDARY
!*!----------------------------------------------------------------------
!*      USE LAYER_PARAMS
!*	  USE WAVE_PARAMS
!*	  USE BCI_PARAMS
!*	  TYPE (BCI)   :: BCI_INFO
!* 	  TYPE (LAYER) :: LO
!*	  TYPE (WAVE)  :: WAVE_INFO
!*	  INTEGER BC_TYPE
!*
!*      IF (BC_TYPE.EQ.0) CALL OPEN (LO)
!*	  IF (BC_TYPE.EQ.1) CALL SPONGE_LAYER (LO)
!*	  IF (BC_TYPE.EQ.2) CALL BC_WALL (LO,WAVE_INFO)
!*!	  IF (BC_TYPE.EQ.3) CALL BC_INPUT (LO,BCI_INFO,TIME)
!*
!*	  RETURN
!*	  END

!----------------------------------------------------------------------
      SUBROUTINE OPEN (LO)
!.....DEPLOY OPEN BOUNDARY CONDITION (ONLY FOR OUTEST LAYER) 
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER)		:: LO
      LOGICAL IFIRST,JFIRST,IEND,JEND
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
      DATA UB/99.0/
!
      I_S = 1
	  J_S = 1
	  I_E = LO%NX
	  J_E = LO%NY 
      IFIRST = I_S .EQ. 1
      JFIRST = J_S .EQ. 1
      IEND = I_E .EQ. LO%NX
      JEND = J_E .EQ. LO%NY
!
      IF ( JFIRST ) THEN
         J = 1
!OMP 111025 v1
!$omp parallel
!$omp do private(I) firstprivate(CC,UH,UU,ZZ,ARG)		 
         DO I=2,LO%NX-1
            IF (LO%H(I,J) .GT. GX) THEN
               CC = SQRT(GRAV*LO%H(I,J))
               UH = 0.5*(LO%M(I,J,2)+LO%M(I-1,J,2))
               UU = SQRT(UH**2+LO%N(I,J,2)**2)
               ZZ = UU/CC
               ARG = LO%N(I,J,2)
               IF (ARG .GT. ZERO) THEN
                  ZZ = -ZZ
               ENDIF
!			   IF (ABS(ZZ) .LE. EPS) ZZ = 0.0
			   IF (ABS(ZZ) .GT. UB) ZZ=0.0 
               LO%Z(I,J,2) = ZZ
            ELSE
               LO%Z(I,J,2) = ZERO
            ENDIF
         END DO
!$omp end parallel
      ENDIF
!
      IF ( JEND ) THEN
         J = LO%NY
!OMP 111025 v1
!$omp parallel
!$omp do private(I) firstprivate(CC,UH,UU,ZZ,ARG)
         DO I=2,LO%NX-1
            IF (LO%H(I,J) .GT. GX) THEN
               CC = SQRT(GRAV*LO%H(I,J))
               UH = 0.5*(LO%M(I,J,2)+LO%M(I-1,J,2))
               UU = SQRT(UH**2+LO%N(I,J-1,2)**2)
               ZZ = UU/CC
               ARG = LO%N(I,J-1,2)
               IF (ARG .LT. ZERO) THEN
                  ZZ = -ZZ
               ENDIF
!			   IF (ABS(ZZ) .LE. EPS) ZZ = 0.0
			   IF (ABS(ZZ) .GT. UB) ZZ=0.0 
               LO%Z(I,J,2) = ZZ
            ELSE
               LO%Z(I,J,2) = ZERO
            ENDIF
         END DO
!$omp end parallel
      ENDIF
!
      IF ( IFIRST ) THEN
         I = 1
!OMP 111025 v1
!$omp parallel
!$omp do private(J) firstprivate(CC,UH,UU,ZZ,ARG)
         DO J=2,LO%NY-1
            IF (LO%H(I,J) .GT. GX) THEN
               CC = SQRT(GRAV*LO%H(I,J))
               IF (LO%H(I,J-1) .GT. GX) THEN
                  UH = 0.5*(LO%N(I,J,2)+LO%N(I,J-1,2))
               ELSE
                  UH = LO%N(I,J,2)
	           ENDIF
               UU = SQRT(UH**2+LO%M(I,J,2)**2)
               ZZ = UU/CC
               ARG = LO%M(I,J,2)
               IF (ARG .GT. ZERO) THEN
                  ZZ = -ZZ
               ENDIF
!			   IF (ABS(ZZ) .LE. EPS) ZZ = 0.0
			   IF (ABS(ZZ) .GT. UB) ZZ=0.0 
               LO%Z(I,J,2) = ZZ
            ELSE
               LO%Z(I,J,2) = ZERO
            ENDIF
         END DO
!$omp end parallel
      ENDIF
!
      IF ( IEND ) THEN
         I = LO%NX
!OMP 111025 v1
!$omp parallel
!$omp do private(J) firstprivate(CC,UH,UU,ZZ,ARG)		 
         DO J=2,LO%NY-1
            IF (LO%H(I,J) .GT. GX) THEN
               CC = SQRT(GRAV*LO%H(I,J))
               UH = 0.5*(LO%N(I,J,2)+LO%N(I,J-1,2))
               UU = SQRT(UH**2+LO%M(I-1,J,2)**2)
               ZZ = UU/CC
               ARG = LO%M(I-1,J,2)
               IF (ARG .LT. ZERO) THEN
                  ZZ = -ZZ
               ENDIF
!			   IF (ABS(ZZ) .LE. EPS) ZZ = 0.0
			   IF (ABS(ZZ) .GT. UB) ZZ=0.0 
               LO%Z(I,J,2) = ZZ
            ELSE
               LO%Z(I,J,2) = ZERO
            ENDIF
         END DO
!$omp end parallel
      ENDIF
!
      IF ( IFIRST .AND. JFIRST ) THEN
         IF (LO%H(1,1) .GT. GX) THEN
            QX = LO%M(1,1,2)
            QY = LO%N(1,1,2)
            CC = SQRT(GRAV*LO%H(1,1))
            UH = SQRT(QX**2+QY**2)
            ZZ = UH/CC
            IF (QX .GT. ZERO .OR. QY.GT.ZERO) ZZ = -ZZ
!			IF (ABS(ZZ) .LE. EPS) ZZ = 0.0
		    IF (ABS(ZZ) .GT. UB) ZZ=0.0 
            LO%Z(1,1,2) = ZZ
         ELSE
            LO%Z(1,1,2) = ZERO
         ENDIF
      ENDIF
!
      IF ( IEND .AND. JFIRST ) THEN
         IF (LO%H(LO%NX,1) .GT. GX) THEN
            QX = LO%M(LO%NX-1,1,2)
            QY = LO%N(LO%NX,1,2)
            CC = SQRT(GRAV*LO%H(LO%NX,1))
            UH = SQRT(QX**2+QY**2)
            ZZ = UH/CC
            IF (QX .LT. ZERO .OR. QY.GT.ZERO) ZZ = -ZZ
!			IF (ABS(ZZ) .LE. EPS) ZZ = 0.0
		    IF (ABS(ZZ) .GT. UB) ZZ=0.0 
            LO%Z(LO%NX,1,2) = ZZ
         ELSE
            LO%Z(LO%NX,1,2) = ZERO
         ENDIF
      ENDIF
!
      IF ( IFIRST .AND. JEND ) THEN
         IF (LO%H(1,LO%NY) .GT. GX) THEN
            QX = LO%M(1,LO%NY,2)
            QY = LO%N(1,LO%NY-1,2)
            CC = SQRT(GRAV*LO%H(1,LO%NY))
            UH = SQRT(QX**2+QY**2)
            ZZ = UH/CC
            IF (QX .GT. ZERO .OR. QY.LT.ZERO) ZZ = -ZZ
!			IF (ABS(ZZ) .LE. EPS) ZZ = 0.0
		    IF (ABS(ZZ) .GT. UB) ZZ = 0.0 
            LO%Z(1,LO%NY,2) = ZZ
         ELSE
            LO%Z(1,LO%NY,2) = ZERO
         ENDIF
      ENDIF
!
      IF ( IEND .AND. JEND ) THEN
         IF (LO%H(LO%NX,LO%NY) .GT. GX) THEN
            QX = LO%M(LO%NX-1,LO%NY,2)
            QY = LO%N(LO%NX,LO%NY-1,2)
            CC = SQRT(GRAV*LO%H(LO%NX,LO%NY))
            UH =  SQRT(QX**2+QY**2)
			ZZ = UH/CC
			IF (QX.LT.ZERO .OR. QY.LT.ZERO) ZZ = -ZZ
!			IF (ABS(ZZ) .LE. EPS) ZZ = 0.0
			LO%Z(LO%NX,LO%NY,2) = ZZ
!	        LO%Z(LO%NX,LO%NY,2)=0.5*(LO%Z(LO%NX-1,LO%NY,2)			&
!									+ LO%Z(LO%NX,LO%NY-1,2))
		    IF (ABS(LO%Z(LO%NX,LO%NY,2)) .GT. UB)					&
					LO%Z(LO%NX,LO%NY,2)=0.0 
         ELSE
            LO%Z(LO%NX,LO%NY,2) = ZERO
         ENDIF
      ENDIF
! 
      RETURN
      END


!----------------------------------------------------------------------
      SUBROUTINE SPONGE_LAYER (LO)
!DESCRIPTION:
!     #. DETERMINE COEFFICIENT ALPHA SO AS TO IMPROVE NUMERICAL DISPERSION
!        REF: WEI AND KIRBY (1995) AND KIRBY ET AL (1998);
!	  #, USED TOGETHER WITH RADIATION/OPEN BOUNDARY CONDITION;
!NOTES:
!	  #. CREATED ON ??? ?? 2007 (XIAOMING WANG, CORNELL UNIVERSITY)
!	  #. UPDATED ON FEB 25 2009 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  TYPE (LAYER) :: LO
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
!OMP 111025 v1
!$omp parallel
!$omp do private(I,J) firstprivate(IP1,IM1,JP1,JM1,CX,CY)
      DO I = 1,LO%NX
	     IP1 = I+1
		 IM1 = I-1
		 IF (IP1.GE.LO%NX) IP1 = LO%NX
		 IF (IM1.LE.1) IM1 = 1
	     DO J = 1,LO%NY
			JP1 = J+1
			JM1 = J-1
			IF (JP1.GE.LO%NY) JP1 = LO%NY
			IF (JM1.LE.1) JM1 = 1
		    IF ( LO%SPONGE_COEFX(I,J).GT.ZERO .OR. 					&
							LO%SPONGE_COEFY(I,J).GT.ZERO ) THEN
   				CX = LO%SPONGE_COEFX(I,J)
				CY = LO%SPONGE_COEFY(I,J)
!				CXY = SQRT(CX**2+CY**2)
!*			    LO%M(I,J,2) = LO%M(I,J,2) + CX*LO%DT				&
!*									*0.5*(LO%M(I,J,1)+LO%M(I,J,2))
!*			    LO%N(I,J,2) = LO%N(I,J,2) + CY*LO%DT				&
!*									*0.5*(LO%N(I,J,1)+LO%N(I,J,2))
			    LO%M(I,J,2) = LO%M(I,J,2) + CX*LO%DT*LO%M(I,J,1)
			    LO%N(I,J,2) = LO%N(I,J,2) + CY*LO%DT*LO%N(I,J,1)
			ENDIF
		 ENDDO
      ENDDO
!$omp end parallel
	  RETURN
	  END


!----------------------------------------------------------------------
      SUBROUTINE SPONGE_COEF (LO)
!DESCRIPTION:
!     DETERMINE COEFFICIENT ALPHA SO AS TO IMPROVE NUMERICAL DISPERSION
!.....REF: WEI AND KIRBY (1995) AND KIRBY ET AL (1998)
!NOTES:
!	  #. CREATED ON ??? ?? 2007 (XIAOMING WANG, CORNELL UNIVERSITY)
!	  #. UPDATED ON FEB 25 2009 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
!	  USE WAVE_PARAMS
!	  USE FAULT_PARAMS
	  TYPE (LAYER) :: LO
!	  TYPE (WAVE)  :: WAVE_INFO
!	  TYPE (FAULT) :: FAULT_INFO
	  REAL DX, DY, DT, G, R_MAX, RX, RY, X_REL, R, WIDTH,H_MEAN
	  REAL COEFX(LO%NX,LO%NY),COEFY(LO%NX,LO%NY)
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

      DX = LO%DX
	  DY = LO%DY
	  DT = LO%DT
      !WIDTH OF SPONGE LAYER IS 1.5 TIMES THE CHARACTERISTIC WAVE LENGTH
	  
      !TYPICAL WATER LENGTH, USED TO DETERMINE CHARACTERSTIC WAVE NUMBER
	  CALL H_CALC(LO,H_MEAN,H_MAX)

	  DEPTH = H_MEAN

	  IF (DEPTH.LE.GX) DEPTH = GX 

!DETERMINE CHARACTERISTIC WAVE LENGTH
	  WAVELENGTH = 20.0*DEPTH
	  WIDTH = 2.0*WAVELENGTH

	  !PARAMETERS USED BY KIRBY ET AL (1998)
	  ALPHA_C = 10.0;
	  ALPHA_MU = ZERO;
	  M = 2.0;
	  T = WAVELENGTH/SQRT(GRAV*DEPTH)
	  OMEGA = 2.0*PI/T

!.....IF LAYER01 ADOPTS SPHERICAL COORD, 
!		CONVERT WIDTH (IN METERS) TO ARC MINUTES
	  IF (LO%LAYCORD .EQ. 0) THEN
	     SPONGE_WIDTH = WIDTH/R_EARTH*180.0/PI
	  ELSE
	     SPONGE_WIDTH = WIDTH
	  ENDIF

	  R_MAX = WIDTH !MAXIMUM DISTANCE FOR DAMPING
	  
	  XS = LO%X(1) + SPONGE_WIDTH
	  YS = LO%Y(1) + SPONGE_WIDTH
	  XE = LO%X(LO%NX) - SPONGE_WIDTH
	  YE = LO%Y(LO%NY) - SPONGE_WIDTH

      COEFX = ZERO
	  COEFY = ZERO
!OMP 111025 v1
!$omp parallel
!$omp do private(I,J) firstprivate(X0,Y0,RX,RY,R,X_REL,Y_REL)
      DO I = 1,LO%NX
	     DO J = 1,LO%NY
			X0 = LO%X(I)
			Y0 = LO%Y(J)
            IF (X0 .LE. XS) THEN 
			   RX = -(X0 - XS)
			ELSEIF (X0 .GE. XE) THEN
			   RX = X0 - XE
			ELSE
			   RX = ZERO
			ENDIF
            IF (Y0 .LE. YS) THEN 
			   RY = -(Y0 - YS)
			ELSEIF (Y0 .GE. YE) THEN
			   RY = Y0 - YE
			ELSE
			   RY = ZERO
			ENDIF
            R = SQRT(RX**2+RY**2)
			X_REL = RX
			Y_REL = RY
			IF (X_REL .LE. ZERO) X_REL = ZERO
			IF (Y_REL .LE. ZERO) Y_REL = ZERO
			IF (X_REL .GE. R_MAX) X_REL = R_MAX
			IF (Y_REL .GE. R_MAX) Y_REL = R_MAX

			COEFX(I,J) = ALPHA_C*OMEGA*(EXP((X_REL/R_MAX)**M)-1.0)	&
										/(EXP(1.0)-1.0)
			COEFY(I,J) = ALPHA_C*OMEGA*(EXP((Y_REL/R_MAX)**M)-1.0)	&
										/(EXP(1.0)-1.0)
			IF (COEFX(I,J).LE.EPS) COEFX(I,J) = 0.0
			IF (COEFY(I,J).LE.EPS) COEFY(I,J) = 0.0
    	 ENDDO 
      ENDDO	
!$omp end parallel
      LO%SPONGE_COEFX = COEFX
	  LO%SPONGE_COEFY = COEFY

	  RETURN
	  END


!----------------------------------------------------------------------
      SUBROUTINE H_CALC (LO,H_MEAN,H_MAX)
!DESCRIPTION:
!     DETERMINE COEFFICIENT ALPHA SO AS TO IMPROVE NUMERICAL DISPERSION
!.....REF: WEI AND KIRBY (1995) AND KIRBY ET AL (1998)
!NOTES:
!	  #. CREATED ON ??? ?? 2007 (XIAOMING WANG, CORNELL UNIVERSITY)
!	  #. UPDATED ON FEB 25 2009 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  TYPE (LAYER) :: LO
	  REAL DX, DY, DT, G, R_MAX, RX, RY, X_REL, R, WIDTH
	  REAL H_MEAN,H_SUM
	  INTEGER K
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

      K = 0
	  H_MEAN = ZERO
	  H_SUM = ZERO
	  H_MAX = ZERO
	  !OMP 	??? H_SUM�ݦ@��  H_MAX���G�u���@������h��
      DO I = 1,LO%NX
	     DO J = 1,LO%NY
            IF (LO%H(I,J) .GT. GX) THEN 
               H_SUM = H_SUM + LO%H(I,J)
			   IF (H_MAX.LT.LO%H(I,J)) H_MAX = LO%H(I,J)
			   K = K+1
			ENDIF
    	 ENDDO
      ENDDO
	  
      IF (K.GT.0) H_MEAN = H_SUM/K
!	  WRITE(*,*) H_MEAN

	  RETURN
	  END

!----------------------------------------------------------------------
      SUBROUTINE BC_WALL (LO,WAVE_INFO)
!.....SET UP VERTICAL WALL BOUNDARY
!Incident direction( 1:top,2:bt,3:lf,4:rt,5:ob )
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  USE WAVE_PARAMS
	  TYPE (LAYER) :: LO
	  TYPE (WAVE)  :: WAVE_INFO
	  IF (LO%INI_SWITCH.EQ.2 ) THEN
	     IF (WAVE_INFO%INCIDENT.EQ.1) THEN
            LO%H(1:2,:) = -999.0
            LO%H(:,1:2) = -999.0
	        LO%H(LO%NX-1:LO%NX,:) = -999.0
!*	        LO%H(:,LO%NY-1:LO%NY) = -999.0
		 ENDIF
	     IF (WAVE_INFO%INCIDENT.EQ.2) THEN
            LO%H(1:2,:) = -999.0
!*            LO%H(:,1:2) = -999.0
	        LO%H(LO%NX-1:LO%NX,:) = -999.0
	        LO%H(:,LO%NY-1:LO%NY) = -999.0
		 ENDIF
	     IF (WAVE_INFO%INCIDENT.EQ.3) THEN
!*            LO%H(1:2,:) = -999.0
            LO%H(:,1:2) = -999.0
	        LO%H(LO%NX-1:LO%NX,:) = -999.0
	        LO%H(:,LO%NY-1:LO%NY) = -999.0
		 ENDIF
	     IF (WAVE_INFO%INCIDENT.EQ.4) THEN
            LO%H(1:2,:) = -999.0
            LO%H(:,1:2) = -999.0
!*	        LO%H(LO%NX-1:LO%NX,:) = -999.0
	        LO%H(:,LO%NY-1:LO%NY) = -999.0
		 ENDIF
	  ELSE
         LO%H(1:2,:) = -999.0
         LO%H(:,1:2) = -999.0
	     LO%H(LO%NX-1:LO%NX,:) = -999.0
	     LO%H(:,LO%NY-1:LO%NY) = -999.0
	  ENDIF
	  RETURN
	  END

!----------------------------------------------------------------------
      SUBROUTINE READ_FACTS (BCI_INFO,LO,SWITCH)
!.....READ FACTS INPUT FILES AS INPUT BOUNDARY CONDITIONS
! SWITCH:
!       0-SURFACE ELEVATION DATA, ####H.ASC
!       1-HORIZONTAL VELOCITY DATA, ####U.ASC
!       2-VERTICAL VELOCITY DATA, ####V.ASC
!.....CREATED ON NOV 11 2008 (XIAOMING WANG, GNS)
!     LAST REVISE: NOV.27, 2008 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  USE BCI_PARAMS
	  TYPE (LAYER)  :: LO
	  TYPE (BCI)    :: BCI_INFO
      INTEGER NX,NY,NT
	  INTEGER BC_TYPE,POS,SWITCH,STAT
	  REAL H(LO%NX,LO%NY)
	  REAL,ALLOCATABLE :: SNAPSHOT(:,:,:)
	  CHARACTER(LEN=120)   INE,LINE1,LINE2,LINE3
	  CHARACTER(LEN=120)   DUMP,TMP,FNAME
	  CHARACTER(LEN=18)   TEXT
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

!	  WRITE(*,*) BCI_INFO%FNAMEH
!	  WRITE(*,*) BCI_INFO%FNAMEU
!	  WRITE(*,*) BCI_INFO%FNAMEV
      FNAME = ''
      IF (SWITCH.EQ.0) FNAME = BCI_INFO%FNAMEH
	  IF (SWITCH.EQ.1) FNAME = BCI_INFO%FNAMEU
	  IF (SWITCH.EQ.2) FNAME = BCI_INFO%FNAMEV
	  WRITE (*,*) FNAME
!
!...../////// READ H,U,V DATA FROM FACTS OUTPUT ////////////
	  OPEN(UNIT=1,FILE=FNAME,STATUS='OLD',IOSTAT=STAT,FORM='FORMATTED')
	  IF (STAT /=0) THEN
         PRINT *,"ERROR:: CAN'T OPEN FACTS DATA",FNAME,"; EXITING."
         STOP
      END IF
	  POS = 0
	  DO WHILE (POS.LE.0)
	     READ (1,*) DUMP
!         WRITE (*,*) DUMP
		 POS = INDEX(DUMP,'GEOMETRY')
		 DUMP = ''
!		 PAUSE
	  ENDDO
      READ (1,*) TEXT,NX,NY,NT
	  WRITE(*,*) NX,NY,NT
	  ALLOCATE(SNAPSHOT(NX,NY,NT))
	  SNAPSHOT = ZERO

      IF (SWITCH.EQ.0) THEN
	     ALLOCATE(BCI_INFO%X(NX))
	     ALLOCATE(BCI_INFO%Y(NY))
	     ALLOCATE(BCI_INFO%T(NT))
	     ALLOCATE(BCI_INFO%SNAPSHOT(NX,NY,NT))
		 ALLOCATE(BCI_INFO%SNAPSHOTU(NX,NY,NT))
		 ALLOCATE(BCI_INFO%SNAPSHOTV(NX,NY,NT))
	     ALLOCATE(BCI_INFO%Z_VERT(LO%NY,NT,2))
	     ALLOCATE(BCI_INFO%U_VERT(LO%NY,NT,2))
	     ALLOCATE(BCI_INFO%V_VERT(LO%NY,NT,2))
	     ALLOCATE(BCI_INFO%Z_HORI(LO%NX,NT,2))
	     ALLOCATE(BCI_INFO%U_HORI(LO%NX,NT,2))
	     ALLOCATE(BCI_INFO%V_HORI(LO%NX,NT,2))
      END IF

	  READ (1,*) DUMP
	  READ (1,*) DUMP
	  READ (1,*) DUMP
	  READ (1,*) (BCI_INFO%X(I),I=1,NX)
	  READ (1,*) DUMP 
	  READ (1,*) (BCI_INFO%Y(I),I=1,NY)
	  READ (1,*) DUMP
	  READ (1,*) (BCI_INFO%T(I),I=1,NT)
	  READ (1,*) DUMP

	  DO K = 1,NT
	     DO J = 1,NY
		    READ (1,*) (SNAPSHOT(I,J,K),I=1,NX)
		 ENDDO
	  ENDDO

	  CLOSE(1)
	  
	  IF (SWITCH.EQ.0) THEN
	     BCI_INFO%NX = NX
	     BCI_INFO%NY = NY
	     BCI_INFO%NT = NT
         BCI_INFO%DURATION = BCI_INFO%T(NT)-BCI_INFO%T(1)
!*	     BCI_INFO%T(:) = BCI_INFO%T(:)-BCI_INFO%T(1)
	  ENDIF
!.....CONVERT UNITS FROM CM OR CM/S TO M OR M/S
!	  IF (SWITCH.EQ.0) BCI_INFO%SNAPSHOT = SNAPSHOT/100.0   !150402 ���ѱ��F ha.xyt�ɥ�m�����
!	  IF (SWITCH.EQ.1) BCI_INFO%SNAPSHOTU = SNAPSHOT/100.0  !150402 ���ѱ��F ua.xyt�ɥ�m/s���y�t���
!	  IF (SWITCH.EQ.2) BCI_INFO%SNAPSHOTV = SNAPSHOT/100.0  !150402 ���ѱ��F va.xyt�ɥ�m/s���y�t���
	  IF (SWITCH.EQ.0) BCI_INFO%SNAPSHOT = SNAPSHOT   !150402 
	  IF (SWITCH.EQ.1) BCI_INFO%SNAPSHOTU = SNAPSHOT  !150402 
	  IF (SWITCH.EQ.2) BCI_INFO%SNAPSHOTV = SNAPSHOT  !150402

!	  WRITE(*,*) NX,NY,NT

	  DEALLOCATE(SNAPSHOT,STAT = ISTAT)

	  RETURN

	  END


!----------------------------------------------------------------------
      SUBROUTINE GET_BC_DATA (BI,LO)
!......................................................................
!DESCRIPTION:
!	  #. MAP THE BOUNDARY CONDITION FROM FACTS TO COMPUTATIONAL GRIDS;
!NOTES:
!	  #. CREATED ON NOV 11 2008 (XIAOMING WANG, GNS)
!     #. LAST REVISE: NOV.20, 2008 (XIAOMING WANG, GNS)
!	  #. UPDATED ON MAR 10 2009 (XIAOMING WANG, GNS)
!		 1. ADD SUPPORT ON UTM COORDINATES
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  USE BCI_PARAMS
	  TYPE (LAYER) :: LO
	  TYPE (BCI)   :: BI
	  INTEGER BC_TYPE,POS
	  REAL TEMPX(LO%NX,2),TEMPY(2,LO%NY)
	  REAL SH
	  REAL DZ !150402	  
!*	  CHARACTER(LEN=120) 	:: LINE,LINE1,LINE2
!*	  CHARACTER(LEN=120) 	:: TMP,FNAMEH,FNAMEU,FNAMEV
!*	  CHARACTER(LEN=18)  TEXT
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

	  WRITE(*,*) 'READING PARAMETERS FOR FACTS INPUT BOUNDARIES...'
      CALL READ_FACTS (BI,LO,0)
	  CALL READ_FACTS (BI,LO,1)
	  CALL READ_FACTS (BI,LO,2)
	  WRITE(*,*) 'PROCESSING DATA FOR FACTS INPUT BOUNDARIES...'
	  IF (LO%LAYGOV.EQ.0) THEN
	     SH = LO%DX/60.0*0.5
	  ELSE
	     SH = 0.5*LO%DX/(RAD_MIN*R_EARTH*COS(LO%YO*RAD_DEG))/60.0
	  ENDIF

!.....OBTAIN VALUES OF Z,HU,HV ALONG THE BOUNDARIES OF NUMERICAL DOMAIN
      DO K = 1,BI%NT
	  	 WRITE (*,*) '   PROCESSING FACTS SNAPSHOT: ',K,' OUT OF ',BI%NT
!IF LAYER LO USES SPHERICAL COORDINATES //
		 IF (LO%LAYCORD.EQ.0) THEN
!...........OBTAIN VALUES OF Z AT BOUNDARIES
		    TEMPX = 0.0
		    TEMPY = 0.0
		    !BOTTOM BOUNDARY
		    CALL GRID_INTERP (TEMPX,LO%X,LO%Y(1:2),LO%NX,2,				&
						BI%SNAPSHOT(:,:,K),BI%X,BI%Y,BI%NX,BI%NY)
		    DO I = 1,LO%NX
		       BI%Z_HORI(I,K,1) = TEMPX(I,1)
!			   WRITE (*,*) BI%Z_HORI(I,K,1)
		    ENDDO
		    !TOP BOUNDARY
		    CALL GRID_INTERP (TEMPX,LO%X,LO%Y(LO%NY-1:LO%NY),LO%NX,2,	&
						BI%SNAPSHOT(:,:,K),BI%X,BI%Y,BI%NX,BI%NY)
		    DO I = 1,LO%NX
               BI%Z_HORI(I,K,2) = TEMPX(I,2)
		    ENDDO
		    !LEFT BOUNDARY
		    CALL GRID_INTERP (TEMPY,LO%X(1:2),LO%Y,2,LO%NY,				&
						BI%SNAPSHOT(:,:,K),BI%X,BI%Y,BI%NX,BI%NY)
		    DO J = 1,LO%NY
		       BI%Z_VERT(J,K,1) = TEMPY(1,J)
		    ENDDO
		    !RIGHT BOUNDARY
		    CALL GRID_INTERP (TEMPY,LO%X(LO%NX-1:LO%NX),LO%Y,2,LO%NY,	&
						BI%SNAPSHOT(:,:,K),BI%X,BI%Y,BI%NX,BI%NY)
		    DO J = 1,LO%NY
		       BI%Z_VERT(J,K,2) = TEMPY(2,J)
		    ENDDO

!...........OBTAIN VALUES OF U AT BOUNDARIES
		    TEMPX = 0.0
		    TEMPY = 0.0
		    !BOTTOM BOUNDARY
		    CALL GRID_INTERP (TEMPX,LO%X+SH,LO%Y(1:2),LO%NX,2,			&
							BI%SNAPSHOTU(:,:,K),BI%X,BI%Y,BI%NX,BI%NY)
		    DO I = 1,LO%NX
		       BI%U_HORI(I,K,1) = TEMPX(I,1)
		    ENDDO
		    !TOP BOUNDARY
		    CALL GRID_INTERP (TEMPX,LO%X+SH,LO%Y(LO%NY-1:LO%NY),LO%NX,	&
							2,BI%SNAPSHOTU(:,:,K),BI%X,BI%Y,BI%NX,BI%NY)
		    DO I = 1,LO%NX
               BI%U_HORI(I,K,2) = TEMPX(I,2)
		    ENDDO
		    !LEFT BOUNDARY
		    CALL GRID_INTERP (TEMPY,LO%X(1:2)+SH,LO%Y,2,LO%NY,			&
							BI%SNAPSHOTU(:,:,K),BI%X,BI%Y,BI%NX,BI%NY)
		    DO J = 1,LO%NY
		       BI%U_VERT(J,K,1) = TEMPY(1,J)
		    ENDDO
		    !RIGHT BOUNDARY
		    CALL GRID_INTERP (TEMPY,LO%X(LO%NX-1:LO%NX)+SH,				&
							LO%Y,2,LO%NY,BI%SNAPSHOTU(:,:,K),			&
							BI%X,BI%Y,BI%NX,BI%NY)
		    DO J = 1,LO%NY
		       BI%U_VERT(J,K,2) = TEMPY(1,J)
		    ENDDO

!...........OBTAIN VALUES OF V AT BOUNDARIES
		    TEMPX = 0.0
		    TEMPY = 0.0
		    !BOTTOM BOUNDARY
		    CALL GRID_INTERP (TEMPX,LO%X,LO%Y(1:2)+SH,LO%NX,2,			&
							BI%SNAPSHOTV(:,:,K),BI%X,BI%Y,BI%NX,BI%NY)
		    DO I = 1,LO%NX
		       BI%V_HORI(I,K,1) = TEMPX(I,1)
		    ENDDO
		    !TOP BOUNDARY
		    CALL GRID_INTERP (TEMPX,LO%X,LO%Y(LO%NY-1:LO%NY)+SH,LO%NX,	&
							2,BI%SNAPSHOTV(:,:,K),BI%X,BI%Y,BI%NX,BI%NY)
		    DO I = 1,LO%NX
               BI%V_HORI(I,K,2) = TEMPX(I,1)
		    ENDDO
		    !LEFT BOUNDARY
		    CALL GRID_INTERP (TEMPY,LO%X(1:2),LO%Y+SH,2,LO%NY,			&
							BI%SNAPSHOTV(:,:,K),BI%X,BI%Y,BI%NX,BI%NY)
		    DO J = 1,LO%NY
		       BI%V_VERT(J,K,1) = TEMPY(1,J)
		    ENDDO
		    !RIGHT BOUNDARY
		    CALL GRID_INTERP (TEMPY,LO%X(LO%NX-1:LO%NX),LO%Y+SH,		&
							2,LO%NY,BI%SNAPSHOTV(:,:,K),				&
							BI%X,BI%Y,BI%NX,BI%NY)
		    DO J = 1,LO%NY
		       BI%V_VERT(J,K,2) = TEMPY(2,J)
		    ENDDO
		 ENDIF
!IF LAYER LO USES UTM COORDINATES ///		 
		 IF (LO%LAYCORD.EQ.1) THEN
!...........OBTAIN VALUES OF Z AT BOUNDARIES
		    TEMPX = 0.0
		    TEMPY = 0.0
		    !BOTTOM BOUNDARY
		    DO I = 1,LO%NX
		       CALL GRID_INTERP (TEMPX(I,1),LO%CXY(I,1,1),				&
										LO%CXY(I,1,2),1,1,				&
							BI%SNAPSHOT(:,:,K),BI%X,BI%Y,BI%NX,BI%NY)
		       BI%Z_HORI(I,K,1) = TEMPX(I,1)
		    ENDDO
		    !TOP BOUNDARY
		    DO I = 1,LO%NX
		       CALL GRID_INTERP (TEMPX(I,2),LO%CXY(I,LO%NY,1),			&
									LO%CXY(I,LO%NY,2),1,1,				&
							BI%SNAPSHOT(:,:,K),BI%X,BI%Y,BI%NX,BI%NY)
		       BI%Z_HORI(I,K,2) = TEMPX(I,2)
		    ENDDO
		    !LEFT BOUNDARY
		    DO J = 1,LO%NY
		 	   CALL GRID_INTERP (TEMPY(1,J),LO%CXY(1,J,1),				&
									LO%CXY(1,J,2),1,1,					&
							BI%SNAPSHOT(:,:,K),BI%X,BI%Y,BI%NX,BI%NY)
		       BI%Z_VERT(J,K,1) = TEMPY(1,J)
		    ENDDO
		    !RIGHT BOUNDARY
		    DO J = 1,LO%NY
		 	   CALL GRID_INTERP (TEMPY(2,J),LO%CXY(LO%NX,J,1),			&
									LO%CXY(LO%NX,J,2),1,1,				&
							BI%SNAPSHOT(:,:,K),BI%X,BI%Y,BI%NX,BI%NY)
		       BI%Z_VERT(J,K,2) = TEMPY(2,J)
		    ENDDO

!...........OBTAIN VALUES OF U AT BOUNDARIES
		    TEMPX = 0.0
		    TEMPY = 0.0
		    !BOTTOM BOUNDARY
		    DO I = 1,LO%NX
		       CALL GRID_INTERP (TEMPX(I,1),LO%CXY(I,1,1)+SH,			&
										LO%CXY(I,1,2),1,1,				&
							BI%SNAPSHOTU(:,:,K),BI%X,BI%Y,BI%NX,BI%NY)
		       BI%U_HORI(I,K,1) = TEMPX(I,1)
		    ENDDO
		    !TOP BOUNDARY
		    DO I = 1,LO%NX
		       CALL GRID_INTERP (TEMPX(I,2),LO%CXY(I,LO%NY,1)+SH,		&
									LO%CXY(I,LO%NY,2),1,1,				&
							BI%SNAPSHOTU(:,:,K),BI%X,BI%Y,BI%NX,BI%NY)
		       BI%U_HORI(I,K,2) = TEMPX(I,2)
		    ENDDO
		    !LEFT BOUNDARY
		    DO J = 1,LO%NY
		 	   CALL GRID_INTERP (TEMPY(1,J),LO%CXY(1,J,1)+SH,			&
									LO%CXY(1,J,2),1,1,					&
							BI%SNAPSHOTU(:,:,K),BI%X,BI%Y,BI%NX,BI%NY)
		       BI%U_VERT(J,K,1) = TEMPY(1,J)
		    ENDDO
		    !RIGHT BOUNDARY
		    DO J = 1,LO%NY
		 	   CALL GRID_INTERP (TEMPY(2,J),LO%CXY(LO%NX-1,J,1)+SH,		&
									LO%CXY(LO%NX-1,J,2),1,1,				&
							BI%SNAPSHOTU(:,:,K),BI%X,BI%Y,BI%NX,BI%NY)
		       BI%U_VERT(J,K,2) = TEMPY(2,J)
		    ENDDO

!...........OBTAIN VALUES OF V AT BOUNDARIES
		    TEMPX = 0.0
		    TEMPY = 0.0
		    !BOTTOM BOUNDARY
		    DO I = 1,LO%NX
		       CALL GRID_INTERP (TEMPX(I,1),LO%CXY(I,1,1),				&
										LO%CXY(I,1,2)+SH,1,1,			&
							BI%SNAPSHOTV(:,:,K),BI%X,BI%Y,BI%NX,BI%NY)
		       BI%V_HORI(I,K,1) = TEMPX(I,1)
		    ENDDO
		    !TOP BOUNDARY
		    DO I = 1,LO%NX
		       CALL GRID_INTERP (TEMPX(I,2),LO%CXY(I,LO%NY-1,1),			&
									LO%CXY(I,LO%NY-1,2)+SH,1,1,			&
							BI%SNAPSHOTV(:,:,K),BI%X,BI%Y,BI%NX,BI%NY)
		       BI%V_HORI(I,K,2) = TEMPX(I,2)
		    ENDDO
		   !LEFT BOUNDARY
		    DO J = 1,LO%NY
		 	   CALL GRID_INTERP (TEMPY(1,J),LO%CXY(1,J,1),				&
									LO%CXY(1,J,2)+SH,1,1,				&
							BI%SNAPSHOTV(:,:,K),BI%X,BI%Y,BI%NX,BI%NY)
		       BI%V_VERT(J,K,1) = TEMPY(1,J)
		    ENDDO
		    !RIGHT BOUNDARY
		    DO J = 1,LO%NY
		 	   CALL GRID_INTERP (TEMPY(2,J),LO%CXY(LO%NX,J,1),			&
									LO%CXY(LO%NX,J,2)+SH,1,1,			&
							BI%SNAPSHOTV(:,:,K),BI%X,BI%Y,BI%NX,BI%NY)
		       BI%V_VERT(J,K,2) = TEMPY(2,J)
		    ENDDO
		 ENDIF		 
		         
!         WRITE (*,*) (BI%Z_VERT(I,K,1),I = 1,LO%NY) 
!OBTAIN FLUXES AND ADJUST VALUES ON LAND
!------ 150402 �y�qM=��ɤ��鰪��*�y�t
!        �y�t�� za.xyt ���� BI%Z ��(���鰪�׳�� m) ���a��ɥ�i��
!        �y�t�� ua.xyt,va.xyt ���� BI%U BI%V ��(�y�t��� m/s) 
		 J = 1	!BOTTOM BOUNDARY	 
	     DO I = 1,LO%NX
			DZ=BI%Z_HORI(I,K,1)+LO%H(I,J)
	        IF (DZ.LE.GX) THEN
		       BI%Z_HORI(I,K,1) = ZERO
			   BI%U_HORI(I,K,1) = ZERO
			   BI%V_HORI(I,K,1) = ZERO
			ELSE
			   BI%U_HORI(I,K,1) = BI%U_HORI(I,K,1)*DZ
			   BI%V_HORI(I,K,1) = BI%V_HORI(I,K,1)*DZ
			ENDIF
		 ENDDO
		 J = LO%NY	!TOP BOUNDARY
		 DO I = 1,LO%NX
		    DZ=BI%Z_HORI(I,K,2)+LO%H(I,J)
	        IF (DZ.LE.GX) THEN
		       BI%Z_HORI(I,K,2) = ZERO
			   BI%U_HORI(I,K,2) = ZERO
			   BI%V_HORI(I,K,2) = ZERO
			ELSE
			   BI%U_HORI(I,K,2) = BI%U_HORI(I,K,2)*DZ
			   BI%V_HORI(I,K,2) = BI%V_HORI(I,K,2)*DZ
			ENDIF
	     ENDDO		   
!
		 I = 1	!LEFT BOUNDARY
	     DO J = 1,LO%NY
		    DZ=BI%Z_VERT(J,K,1)+LO%H(I,J)
	        IF (DZ.LE.GX) THEN
		       BI%Z_VERT(J,K,1) = ZERO
			   BI%U_VERT(J,K,1) = ZERO
			   BI%V_VERT(J,K,1) = ZERO
			ELSE
			   BI%U_VERT(J,K,1) = BI%U_VERT(J,K,1)*DZ
			   BI%V_VERT(J,K,1) = BI%V_VERT(J,K,1)*DZ
			ENDIF
		 ENDDO
		 I = LO%NX	!RIGHT BOUNDARY
		 DO J = 1,LO%NY			
		    DZ=BI%Z_VERT(J,K,2)+LO%H(I,J)
	        IF (DZ.LE.GX) THEN
		       BI%Z_VERT(J,K,2) = ZERO
			   BI%U_VERT(J,K,2) = ZERO
			   BI%V_VERT(J,K,2) = ZERO
			ELSE
			   BI%U_VERT(J,K,2) = BI%U_VERT(J,K,2)*DZ
			   BI%V_VERT(J,K,2) = BI%V_VERT(J,K,2)*DZ
			ENDIF			
	     ENDDO
!------ 150402 �H�W����
      ENDDO

!	  WRITE (*,*) LO%CXY(1,1,1),LO%CXY(1,1,2)
!	  WRITE (*,*) LO%CXY(LO%NX,LO%NY,1),LO%CXY(LO%NX,LO%NY,2)
!.....DEALLOCATE VARIABLE NO LONGER BEING USED.
      DEALLOCATE(BI%SNAPSHOT,BI%SNAPSHOTU,BI%SNAPSHOTV,STAT=ISTAT)

	  RETURN
	  END

!----------------------------------------------------------------------
      SUBROUTINE BC_INPUT (BI,LO,TIME,BC_TYPE)
!......................................................................
!DESCRIPTION:
!	  #. MAP THE BOUNDARY CONDITION FROM FACTS TO COMPUTATIONAL GRIDS;
!NOTES:
!	  #. CREATED ON NOV 11 2008 (XIAOMING WANG, GNS)
!     #. LAST REVISE: NOV.24, 2008 (XIAOMING WANG, GNS)
!	  #. UPDATED ON MAR 10 2009 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
	USE LAYER_PARAMS
	USE BCI_PARAMS
	TYPE (LAYER) :: LO
	TYPE (BCI)   :: BI
	REAL T(BI%NT),TMPX(LO%NX),TMPY(LO%NY)
	REAL TIME,C1,C2
	INTEGER BC_TYPE !150504
	COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
	T(:) = BI%T(:)
	  
!.....OBTAIN SURFACE ELEVATION AT T = TIME FROM FACTS DATA      
	KT = 1
	DO K = 1,BI%NT-1
		IF (TIME-0.5*LO%DT.GE.BI%T(K) .AND.						&
				TIME-0.5*LO%DT.LT.BI%T(K+1)) KT = K
	ENDDO
	C1 = (TIME-0.5*LO%DT-BI%T(KT))/(BI%T(KT+1)-BI%T(KT))
	C2 = 1.0 - C1	  
	  ! �ѥN�J����ɤ���ɧǦC ������ɤ���  ��1�h���檺��ɤ�����G�S�@��
	IF (BI%SIDE(1).EQ.1) THEN ! TOP Z 150402
!OMP 111025 v1
!$omp parallel
!$omp do private(I)
		DO I = 1,LO%NX
			LO%Z(I,LO%NY,2) = C1*BI%Z_HORI(I,KT+1,2) + C2*BI%Z_HORI(I,KT,2)
		ENDDO
!$omp end parallel		
	ENDIF
	IF (BI%SIDE(2).EQ.1) THEN ! BOTTOM Z  150402
!$omp parallel
!$omp do private(I)
		DO I = 1,LO%NX	  
	  	   LO%Z(I,1,2) = C1*BI%Z_HORI(I,KT+1,1) + C2*BI%Z_HORI(I,KT,1) 
        ENDDO
!$omp end parallel
	ENDIF
	IF (BI%SIDE(3).EQ.1) THEN ! LEFT Z  150402
!$omp parallel
!$omp do private(J)
		DO J = 1,LO%NY
			LO%Z(1,J,2) = C1*BI%Z_VERT(J,KT+1,1) + C2*BI%Z_VERT(J,KT,1) ! LEFT Z 150402
		ENDDO
!$omp end parallel		 
	ENDIF
	IF (BI%SIDE(4).EQ.1) THEN ! RIGHT Z  150402
!$omp parallel
!$omp do private(J)
		DO J = 1,LO%NY
			LO%Z(LO%NX,J,2) = C1*BI%Z_VERT(J,KT+1,2) + C2*BI%Z_VERT(J,KT,2)
		ENDDO
!$omp end parallel
	ENDIF
	  
	  ! �ѥN�J����ɤ���ɧǦC �q��ɦA���������@�h����(�����X��)
	IF (BC_TYPE.EQ.4) THEN ! INTERPLOT Z 150504
		IF (BI%SIDE(1).EQ.1) THEN ! TOP Z 150402
!OMP 111025 v1
!$omp parallel
!$omp do private(I)
			DO I = 1,LO%NX
				LO%Z(I,LO%NY-1,2) = LO%Z(I,LO%NY,2) ! RIGHT Z 150504 ��1�h���_��ɭn2�h
			ENDDO
!$omp end parallel		
		ENDIF
		IF (BI%SIDE(2).EQ.1) THEN ! BOTTOM Z  150402
!$omp parallel
!$omp do private(I)
			DO I = 1,LO%NX
				LO%Z(I,2,2) = LO%Z(I,1,2) ! BOTTOM Z 150504 ��1���n��ɭn2�h
			ENDDO
!$omp end parallel
		ENDIF
		IF (BI%SIDE(3).EQ.1) THEN ! LEFT Z  150402
!$omp parallel
!$omp do private(J)
			DO J = 1,LO%NY
				LO%Z(2,J,2) = LO%Z(1,J,2)! LEFT Z 150504 ��1�h������ɭn2�h
			ENDDO
!$omp end parallel		 
		ENDIF
		IF (BI%SIDE(4).EQ.1) THEN ! RIGHT Z  150402
!$omp parallel
!$omp do private(J)
			DO J = 1,LO%NY
				LO%Z(LO%NX-1,J,2) = LO%Z(LO%NX,J,2) ! RIGHT Z 150504 ��1�h���k��n�h�]�@�h
			ENDDO
!$omp end parallel
		ENDIF	  
	  
	ELSEIF (BC_TYPE.EQ.3) THEN ! INTERPLOT M N 150504 (�y�q�X��)
!.....OBTAIN VOLUME FLUX AT T = TIME  
		KT = 1
		DO K = 1,BI%NT-1
			IF (TIME.GE.BI%T(K) .AND. TIME.LT.BI%T(K+1)) KT = K
		ENDDO
		C1 = (TIME-BI%T(KT))/(BI%T(KT+1)-BI%T(KT))
		C2 = 1.0 - C1
		IF (BI%SIDE(1).EQ.1) THEN ! TOP M N 150402
!$omp parallel
!$omp do private(I)	  
			DO I = 1,LO%NX
				LO%M(I,LO%NY,2) = C1*BI%U_HORI(I,KT+1,2) + C2*BI%U_HORI(I,KT,2) ! TOP M
				LO%N(I,LO%NY-1,2) = C1*BI%V_HORI(I,KT+1,2) + C2*BI%V_HORI(I,KT,2) ! TOP N
			ENDDO
!$omp end parallel
		ENDIF
		IF (BI%SIDE(2).EQ.1) THEN ! BOTTOM M N 150402
!$omp parallel
!$omp do private(I)
			DO I = 1,LO%NX
				LO%M(I,1,2) = C1*BI%U_HORI(I,KT+1,1) + C2*BI%U_HORI(I,KT,1) ! BOTTOM M
				LO%N(I,1,2) = C1*BI%V_HORI(I,KT+1,1) + C2*BI%V_HORI(I,KT,1) ! BOTTOM N
			ENDDO
!$omp end parallel		 
		ENDIF
		IF (BI%SIDE(3).EQ.1) THEN ! LEFT M N 150402
!$omp parallel
!$omp do private(J)
			DO J = 1,LO%NY
				LO%M(1,J,2) = C1*BI%U_VERT(J,KT+1,1) + C2*BI%U_VERT(J,KT,1) ! LEFT M
				LO%N(1,J,2) = C1*BI%V_VERT(J,KT+1,1) + C2*BI%V_VERT(J,KT,1) ! LEFT N
			ENDDO
!$omp end parallel		 
		ENDIF		 
		IF (BI%SIDE(4).EQ.1) THEN ! RIGHT M N 150402
!$omp parallel
!$omp do private(J)	  
			DO J = 1,LO%NY
				LO%M(LO%NX-1,J,2) = C1*BI%U_VERT(J,KT+1,2) + C2*BI%U_VERT(J,KT,2) ! RIGHT M
				LO%N(LO%NX,J,2) = C1*BI%V_VERT(J,KT+1,2) + C2*BI%V_VERT(J,KT,2) ! RIGHT N
			ENDDO
!$omp end parallel		 
		ENDIF
	ENDIF
	  
	RETURN
	END



!----------------------------------------------------------------------
      SUBROUTINE GET_FLOOR_DEFORM (LO,LA,FLT,TIME) 
!......................................................................
!DESCRIPTION:
!     #. CALCULATE SEAFLOOR DEFORMATION (OKADA,1985) FOR MULTIPLE
!		 FAULT PLANE CONFIGURATION.
!     #. STEREOGRAPHIC PROJECTION IS IMPLEMENTED TO CREATE MORE 
!		 ACCURATE MAPPING BETWEEN THE EARTH SURFACE AND THE PLANE USED 
!		 IN OKADA (1985)
!INPUT:
!OUTPUT:
!NOTES:
!     #. CREATED ON DEC 21 2008 (XIAOMING WANG, GNS) 
!     #. UPDATED ON JAN 05 2009 (XIAOMING WANG, GNS) 
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  USE FAULT_PARAMS
      TYPE (LAYER) 	:: LO
	  TYPE (LAYER),DIMENSION(NUM_GRID)  :: LA
      TYPE (FAULT), DIMENSION(NUM_FLT)  :: FLT
      REAL TIME, TEMP(LO%NX)
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
	  TEMP = 0.0

	  NUM_FAULT = FLT(1)%NUM_FLT

	  DO K = 1, NUM_FAULT
	     IF (FLT(K)%T0.GE.TIME .AND. FLT(K)%T0.LT.TIME+LO%DT) THEN
			!CALCULATE SEAFLOOR DEFORMATION VIA FINITE FAULT THEORY
		    IF (FLT(K)%SWITCH.EQ.0 .OR. FLT(K)%SWITCH.EQ.9) THEN
			   IF (LO%INI_SWITCH .EQ. 0) THEN
	              CALL DEFORM_OKADA(LO,FLT(K))
			   ELSEIF (LO%INI_SWITCH .EQ. 9) THEN
				  CALL DEFORM_SMYLIE (LO,FLT(K))
			   ENDIF
			ENDIF
			!OBTAIN SEAFLOOR DEFORMATION FROM A DATA FILE
			IF (FLT(K)%SWITCH .EQ. 1) THEN
			   IF (FLT(K)%FS.EQ.0) CALL READ_COMCOT_DEFORM (LO,FLT(K))
			   IF (FLT(K)%FS.EQ.1) CALL READ_MOST_DEFORM (LO,FLT(K))
			   IF (FLT(K)%FS.EQ.2) CALL READ_XYZ_DEFORM (LO,FLT(K))
			ENDIF

			!WRITE SEAFLOOR DEFORMATION PROFILE INTO FILES
			IF (FLT(K)%FS .NE. 9) CALL WRITE_DEFORM (LO,K)

			!INTERPOLATING DEFORMATION FROM 1ST-LEVEL TO ALL SUB-LEVELS
			CALL ININTERP (LO,LA)

			!UPDATE BATHYMETRY (DUE TO SEAFLOOR DEFORMATION)
			CALL UPDATE_BATH (LO,LA)

			!APPLY SEAFLOOR DEFORMATION ONTO WATER SURFACE (INSTANTLY)
			IF (LO%LAYSWITCH .EQ. 0) THEN			
!OMP 130906
!$omp parallel
!$omp do private(I,J)
			   DO I = 1,LO%NX
			       DO J = 1,LO%NY
			           LO%Z(I,J,1) = LO%Z(I,J,1) + LO%DEFORM(I,J)
				   ENDDO
			   ENDDO
!$omp end parallel
			ENDIF
!!!			IF (LO%LAYSWITCH .EQ. 0) THEN	
!!!			   LO%Z(:,:,1) = LO%Z(:,:,1) + LO%DEFORM(:,:)
!!!			ENDIF

			DO I2 = 1,NUM_GRID
			   IF (LA(I2)%LAYSWITCH .EQ. 0) THEN
!OMP 130906
!$omp parallel
!$omp do private(I,J)
			       DO I = 1,LO%NX
			           DO J = 1,LO%NY
		                   LA(I2)%Z(I,J,1) = LA(I2)%Z(I,J,1) + LA(I2)%DEFORM(I,J)
				       ENDDO
			       ENDDO
!$omp end parallel
			   ENDIF
			ENDDO
            
!!!			DO I = 1,NUM_GRID
!!!			   IF (LA(I)%LAYSWITCH .EQ. 0) THEN
!!!		          LA(I)%Z(:,:,1) = LA(I)%Z(:,:,1) + LA(I)%DEFORM(:,:)
!!!			   ENDIF
!!!			ENDDO
            
		 ENDIF
	  ENDDO

	  RETURN
	  END

!----------------------------------------------------------------------
      SUBROUTINE DEFORM_OKADA (LO,FLT) 
!......................................................................
!DESCRIPTION:
!     #. CALCULATE SEAFLOOR DEFORMATION VIA OKADA'S MODEL (1985);
!     #. STEREOGRAPHIC PROJECTION IS IMPLEMENTED TO CREATE MORE 
!		 ACCURATE MAPPING BETWEEN THE EARTH SURFACE AND THE PLANE USED 
!		 IN OKADA (1985)
!INPUT:
!	  #. FAULT PARAMETERS;
!OUTPUT:
!	  #. SEAFLOOR DEFORMATION;
!NOTES:
!     #. CREATED ON JUN ?? 2003 (XIAOMING WANG, CORNELL UNIVERSITY) 
!     #. UPDATED ON DEC 18, 2008 (XIAOMING WANG, GNS) 
!	  #. UPDATED ON FEB 03 2009 (XIAOMING WANG, GNS)
!		 1. ADD DETECTION ON NAN/INF
!	  #. UPDATED ON FEB 16 2009 (XIAOMING WANG, GNS)
!		 1. ADD AN OPTION TO SELECT THE FOCUS LOCATION
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  USE FAULT_PARAMS
      TYPE (LAYER) 	:: LO
      TYPE (FAULT)  :: FLT
      REAL L, TEMP(LO%NX)
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
      DATA OSIXTY/0.016666666667/, BIG/-999./
      DATA RAD/0.01745329252/

	  TEMP = 0.0
      
      NX = LO%NX
	  NY = LO%NY

!	  WRITE (*,*) FLT%D

      ANG_L = RAD_DEG*FLT%DL
      ANG_R = RAD_DEG*FLT%RD
      ANG_T = RAD_DEG*FLT%TH
      HALFL = 0.5*FLT%L
!.....CALCULATE FOCAL DEPTH USED FOR OKADA'S MODEL
	  HH = FLT%HH+0.5*FLT%W*SIN(ANG_L)
!.....DISPLACEMENT DUE TO DIFFERENT EPICENTER DEFINITION
!	  EPICENTER IS DEFINED AT THE CENTER OF FAULT PLANE
      DEL_X = 0.5*FLT%W*COS(ANG_L)*COS(ANG_T)
	  DEL_Y = 0.5*FLT%W*COS(ANG_L)*SIN(ANG_T)

      H1 = HH/SIN(ANG_L)
      H2 = HH/SIN(ANG_L)+FLT%W

!     EPICENTER IS DEFINED AT THE CENTER OF TOP EDGE OF FAULT PLANE
	  IF (FLT%SWITCH .EQ. 9) THEN
         HH = FLT%HH+FLT%W*SIN(ANG_L)
	     DEL_X = FLT%W*COS(ANG_L)*COS(ANG_T)
	     DEL_Y = FLT%W*COS(ANG_L)*SIN(ANG_T)
         H1 = HH/SIN(ANG_L)
         H2 = HH/SIN(ANG_L)+FLT%W
	  ENDIF

      DS = FLT%D*COS(ANG_R)
      DD = FLT%D*SIN(ANG_R)
      
      SN = SIN(ANG_L)
      CS = COS(ANG_L)

	  LO%DEFORM = 0.0
	  X_SHIFT = 0.0
	  Y_SHIFT = 0.0
!OMP 111025 v1
!$omp parallel
!$omp do private(I,J) firstprivate(YY,XX,XL,YL,X1,X2,X3,P,US,UD,&
!$omp F1,F2,F3,F4,G1,G2,G3,G4,X_SHIFT,Y_SHIFT)
      DO I=1,NX
         DO J=1,NY
		    IF (LO%LAYCORD .EQ. 0) THEN
			   CALL STEREO_PROJECTION (X_SHIFT,Y_SHIFT,LO%X(I),	&
										  LO%Y(J),FLT%X0,FLT%Y0)
!*			   CALL SPH_TO_UTM (X_SHIFT,Y_SHIFT,LO%X(I),LO%Y(J),&
!*								FLT%X0,FLT%Y0)
			   X_SHIFT = X_SHIFT - DEL_X
			   Y_SHIFT = Y_SHIFT + DEL_Y
		    ELSE
               YY = LO%DY*(FLOAT(J)-1.0)
               XX = LO%DX*(FLOAT(I)-1.0)
			   CALL STEREO_PROJECTION (XL,YL,FLT%XO,FLT%YO,		&
										  FLT%X0,FLT%Y0)
!*			   CALL SPH_TO_UTM (XL,YL,FLT%XO,FLT%YO,FLT%X0,FLT%Y0)
			   X_SHIFT = XX - XL - DEL_X
			   Y_SHIFT = YY - YL + DEL_Y
		    ENDIF
            X1 = X_SHIFT*SIN(ANG_T)+Y_SHIFT*COS(ANG_T)
            X2 = X_SHIFT*COS(ANG_T)-Y_SHIFT*SIN(ANG_T)
		    X2 = -X2         
            X3 = ZERO
            P = X2*CS+HH*SN
            CALL STRIKE_SLIP (X1,X2,X3,X1+HALFL,P,ANG_L,HH,F1)
            CALL STRIKE_SLIP (X1,X2,X3,X1+HALFL,P-FLT%W,ANG_L,HH,F2)
            CALL STRIKE_SLIP (X1,X2,X3,X1-HALFL,P,ANG_L,HH,F3)
            CALL STRIKE_SLIP (X1,X2,X3,X1-HALFL,P-FLT%W,ANG_L,HH,F4)
            CALL DIP_SLIP (X1,X2,X3,X1+HALFL,P,ANG_L,HH,G1)
            CALL DIP_SLIP (X1,X2,X3,X1+HALFL,P-FLT%W,ANG_L,HH,G2)
            CALL DIP_SLIP (X1,X2,X3,X1-HALFL,P,ANG_L,HH,G3)
            CALL DIP_SLIP (X1,X2,X3,X1-HALFL,P-FLT%W,ANG_L,HH,G4)
            US = (F1-F2-F3+F4)*DS
            UD = (G1-G2-G3+G4)*DD

			IF (ABS(US) .GE. HUGE(US)) US = 0.0
			IF (ABS(UD) .GE. HUGE(UD)) UD = 0.0
!			IF (ISNAN(US)) US = 0.0
!			IF (ISNAN(UD)) UD = 0.0
			IF (ABS(US) .LE. GX) US = 0.0
			IF (ABS(UD) .LE. GX) UD = 0.0

            LO%DEFORM(I,J) = US + UD
         END DO
      END DO
!$omp end parallel
!	  WRITE (*,*) 'SUBROUTINE OKADA HAS BEEN CALLED'

      RETURN                                                            
      END                                                               

!----------------------------------------------------------------------
      SUBROUTINE STRIKE_SLIP (X1,X2,X3,Y1,Y2,DP,DD,F) 
!.....USED FOR OKADA'S MODEL (CREATED BY XIAOMING WANG IN JUN 2003)
!NOTE:
!	 #. UPDATED ON FEB04 2009 (XIAOMING WANG, GNS)                          
!    input:X1,X2,X3,Y1,Y2,DP,DD  output:F
!----------------------------------------------------------------------
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

      SN = SIN(DP)
      CS = COS(DP)
      P = X2*CS + DD*SN
      Q = X2*SN - DD*CS
      D_BAR = Y2*SN - Q*CS
      R = SQRT(Y1**2 + Y2**2 + Q**2)
      XX = SQRT(Y1**2 + Q**2)
!*      A4 = 0.5*1/CS*(LOG(R+D_BAR) - SN*LOG(R+Y2))
	  TMP1 = R+D_BAR
	  TMP2 = R+Y2
	  IF (TMP1 .LE. EPS) TMP1 = EPS
	  IF (TMP2 .LE. EPS) TMP2 = EPS
      A4 = 0.5*1/CS*(LOG(TMP1) - SN*LOG(TMP2))
      F = -(D_BAR*Q/R/(R+Y2) + Q*SN/(R+Y2) + A4*SN)/2/3.14159

      RETURN
      END                                                               

!----------------------------------------------------------------------
      SUBROUTINE DIP_SLIP (X1,X2,X3,Y1,Y2,DP,DD,F)  
!.....BASED ON OKADA'S PAPER (1985) 
!.....CREATED BY XIAOMING WANG (JUN 2003)                          
!----------------------------------------------------------------------
      SN = SIN(DP)
      CS = COS(DP)

      P = X2*CS + DD*SN
      Q = X2*SN - DD*CS
      D_BAR = Y2*SN - Q*CS;
      R = SQRT(Y1**2 + Y2**2 + Q**2)
      XX = SQRT(Y1**2 + Q**2)
      A5 = 0.5*2/CS*ATAN((Y2*(XX+Q*CS)+XX*(R+XX)*SN)/Y1/(R+XX)/CS)
      F = -(D_BAR*Q/R/(R+Y1) + SN*ATAN(Y1*Y2/Q/R)					&
							 - A5*SN*CS)/2/3.14159

      RETURN
      END                                                               

!----------------------------------------------------------------------
      SUBROUTINE DEFORM_SMYLIE (LAY,FLT) 
!......................................................................
!DESCRIPTION:
!     #. CALCULATE SEAFLOOR DEFORMATION VIA THE ELASTIC FAULT PLANE
!		 MODEL BY MANSINHA AND SMYLIE (1971);
!     #. STEREOGRAPHIC PROJECTION IS IMPLEMENTED TO CREATE MORE 
!		 ACCURATE MAPPING BETWEEN THE EARTH SURFACE AND THE PLANE USED 
!		 BY MANSINHA AND SMYLIE (1971);
!INPUT:
!	  #. FAULT PARAMETERS;
!OUTPUT:
!	  #. SEAFLOOR DEFORMATION;
!NOTES:
!     #. UPDATED ON AUG 13 2003 (XIAOMING WANG, CORNELL UNIVERSITY) 
!        1. BOTH CARTESIAN AND SPHERICAL COORD. ARE SUPPORTED
!        2. THE CALCULATION OF EPICENTER IS MODIFIED ;		 
!     #. UPDATED ON DEC 18, 2008 (XIAOMING WANG, GNS) 
!	     1. OBLIQUE STEREOGRAPHIC PROJECTION IS IMPLEMENTED TO CREATE
!		    MORE ACCURATE MAPPING BETWEEN THE EARTH SURFACE AND THE
!		    PLANE USED IN MANSINHA AND SMYLIE (1971);
!		 2. EPICENTER IS CHOSEN AS THE TANGENTIAL POINT OF PROJECTION;
!	  #. UPDATED ON FEB 03 2009 (XIAOMING WANG, GNS)
!		 1. ADD DETECTION ON NAN OR INF
!	  #. UPDATED ON FEB 16 2009 (XIAOMING WANG, GNS)
!		 1. ADD AN OPTION TO SELECT THE FOCUS LOCATION
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  USE FAULT_PARAMS
      TYPE (LAYER) 	:: LAY
      TYPE (FAULT)  :: FLT
      REAL L, TEMP(LAY%NX)
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
      DATA OSIXTY/0.016666666667/, BIG/-999./
      DATA RAD/0.01745329252/

	  TEMP = 0.0
!*	  ! CONVERT DEGREE TO RADIAN ! ON THE EAST SIDE BY TSO-REN
!*      !ANG_L = RAD*(180-FLT%DL) 
!.....CONVERT DEGREE TO RADIAN
      ANG_L = RAD_DEG*FLT%DL  !dip angle
      ANG_R = RAD_DEG*FLT%RD  !slip angle
	  ANG_T = RAD_DEG*FLT%TH  !strike direction
      HALFL = 0.5*FLT%L

!.. . DEL_X,DEL_Y, SHIFTS DUE TO DIFFERENT EPICENTER DEFINITIONS
!     THE X, Y DISTANCE BETWEEN THE EPICENTER AND THE BREAK POINT 

!     EPICENTER IS DEFINED AT THE CENTER OF FAULT PLANE
	  HH = FLT%HH - 0.5*FLT%W*SIN(ANG_L)  ! �_�h���߲`��
	  HTMP = FLT%HH
      DEL_X = HTMP*COS(ANG_L)/SIN(ANG_L)*COS(ANG_T)
      DEL_Y = HTMP*COS(ANG_L)/SIN(ANG_L)*SIN(ANG_T)
      H1 = HH/SIN(ANG_L)
      H2 = HH/SIN(ANG_L)+FLT%W

!	  EPICENTER IS DEFINED AT THE CENTER OF TOP EDGE OF FAULT PLANE
	  IF (FLT%SWITCH .EQ. 9) THEN
	     HTMP = FLT%HH
         DEL_X = HTMP*COS(ANG_L)/SIN(ANG_L)*COS(ANG_T)
         DEL_Y = HTMP*COS(ANG_L)/SIN(ANG_L)*SIN(ANG_T)
         H1 = FLT%HH/SIN(ANG_L)
         H2 = FLT%HH/SIN(ANG_L)+FLT%W
	  ENDIF

      DS = FLT%D*COS(ANG_R)
      DD = FLT%D*SIN(ANG_R)

      O12PI = 1./(12.*PI)

      NX = LAY%NX
      NY = LAY%NY
	  ! -----------------------------------------------
	  LAY%DEFORM = 0.0
!OMP 111025 v1
!$omp parallel
!$omp do private(I,J) firstprivate(X_SHIFT,Y_SHIFT,YY,XX,XL,YL,X1,&
!$omp X2,X3,US,UD,F1,F2,F3,F4,G1,G2,G3,G4)
      DO I=1,NX
!.......CALCULATE THE DISTANCE BETWEEN THE ORIGIN OF COMPUTATIONAL 
!		DOMAIN AND THE ORIGIN OF FOCAL COORDINATE SYSTEM
         DO J=1,NY
		    IF (LAY%LAYCORD .EQ. 0) THEN
			   CALL STEREO_PROJECTION (X_SHIFT,Y_SHIFT,LAY%X(I),	&
										LAY%Y(J),FLT%X0,FLT%Y0)
			   X_SHIFT = X_SHIFT + DEL_X
			   Y_SHIFT = Y_SHIFT - DEL_Y 
		    ELSE
               YY = LAY%DY*(FLOAT(J)-1.0)
               XX = LAY%DX*(FLOAT(I)-1.0)
			   CALL STEREO_PROJECTION (XL,YL,FLT%XO,FLT%YO,		&
										FLT%X0,FLT%Y0)
			   X_SHIFT = XX - XL + DEL_X
			   Y_SHIFT = YY - YL - DEL_Y
		    ENDIF
!...........CONVERTED TO FOCAL COORDINATES
            X1 = -(X_SHIFT*SIN(ANG_T)+Y_SHIFT*COS(ANG_T))
            X2 = X_SHIFT*COS(ANG_T)-Y_SHIFT*SIN(ANG_T)
            X3 = ZERO
            CALL USCAL (X1,X2,X3, HALFL,H2,ANG_L,F1)
            CALL USCAL (X1,X2,X3, HALFL,H1,ANG_L,F2)
            CALL USCAL (X1,X2,X3,-HALFL,H2,ANG_L,F3)
            CALL USCAL (X1,X2,X3,-HALFL,H1,ANG_L,F4)
            CALL UDCAL (X1,X2,X3, HALFL,H2,ANG_L,G1)
            CALL UDCAL (X1,X2,X3, HALFL,H1,ANG_L,G2)
            CALL UDCAL (X1,X2,X3,-HALFL,H2,ANG_L,G3)
            CALL UDCAL (X1,X2,X3,-HALFL,H1,ANG_L,G4)
            US = (F1-F2-F3+F4)*DS*O12PI
            UD = (G1-G2-G3+G4)*DD*O12PI

			IF (ABS(US).GE.HUGE(US)) US = 0.0
			IF (ABS(UD).GE.HUGE(UD)) UD = 0.0
!			IF (ISNAN(US)) US = 0.0
!			IF (ISNAN(UD)) UD = 0.0
			IF (ABS(US) .LE. GX) US = 0.0
			IF (ABS(UD) .LE. GX) UD = 0.0

            LAY%DEFORM(I,J) = US + UD
         END DO
      END DO
!$omp end parallel	  
!
      RETURN                                                            
      END                                                                                         


!----------------------------------------------------------------------
      SUBROUTINE USCAL (X1,X2,X3,C,CC,DP,F)   
!.....CALCULATE STRIKE SLIP, USED FOR MANSINHA AND SMYLIE'S MODEL
!NOTE:
!	 #. UPDATED ON FEB04 2009 (XIAOMING WANG, GNS)                          
!----------------------------------------------------------------------
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
					                                                     
      SN = SIN(DP)
      CS = COS(DP)
      C1 = C
      C2 = CC*CS
      C3 = CC*SN
      R = SQRT((X1-C1)**2+(X2-C2)**2+(X3-C3)**2)
      Q = SQRT((X1-C1)**2+(X2-C2)**2+(X3+C3)**2)
      R2 = X2*SN-X3*CS
      R3 = X2*CS+X3*SN
      Q2 = X2*SN+X3*CS
      Q3 = -X2*CS+X3*SN
      H = SQRT(Q2**2+(Q3+CC)**2)
      K = SQRT((X1-C1)**2+Q2**2)
!*      A1 = LOG(R+R3-CC)
!*      A2 = LOG(Q+Q3+CC)
!*      A3 = LOG(Q+X3+C3)
	  TMP1 = R+R3-CC
	  TMP2 = Q+Q3+CC
	  TMP3 = Q+X3+C3
	  IF (TMP1 .LE. EPS) TMP1 = EPS
	  IF (TMP2 .LE. EPS) TMP2 = EPS
	  IF (TMP3 .LE. EPS) TMP3 = EPS
	  A1 = LOG(TMP1)
	  A2 = LOG(TMP2)
	  A3 = LOG(TMP3)
      B1 = 1+3.0*(TAN(DP))**2
      B2 = 3.0*TAN(DP)/CS
      B3 = 2.0*R2*SN
      B4 = Q2+X2*SN
      B5 = 2.0*R2**2*CS
      B6 = R*(R+R3-CC)
      B7 = 4.0*Q2*X3*SN**2
      B8 = 2.0*(Q2+X2*SN)*(X3+Q3*SN)
      B9 = Q*(Q+Q3+CC)
      B10 = 4.0*Q2*X3*SN
      B11 = (X3+C3)-Q3*SN
      B12 = 4.0*Q2**2*Q3*X3*CS*SN
      B13 = 2.0*Q+Q3+CC
      B14 = Q**3*(Q+Q3+CC)**2
      F = CS*(A1+B1*A2-B2*A3)+B3/R+2*SN*B4/Q-B5/B6+(B7-B8)/B9		&

			+ B10*B11/Q**3-B12*B13/B14
	  IF (ABS(R*Q*B9*B14) .LT. 1.0E-10) THEN
	     WRITE (*,*) 'DIVIDED BY ZERO'
	  END IF
      RETURN
      END                                                               

!----------------------------------------------------------------------
      SUBROUTINE UDCAL (X1,X2,X3,C,CC,DP,F) 
!.....CALCULATE DIP-SLIP, USED FOR MANSINHA AND SMYLIE'S MODEL                            
!NOTE:
!	 #. UPDATED ON FEB04 2009 (XIAOMING WANG, GNS)                          
!----------------------------------------------------------------------
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
                                                                     
      SN = SIN(DP)
      CS = COS(DP)
      C1 = C
      C2 = CC*CS
      C3 = CC*SN
      R = SQRT((X1-C1)**2+(X2-C2)**2+(X3-C3)**2)
      Q = SQRT((X1-C1)**2+(X2-C2)**2+(X3+C3)**2)
      R2 = X2*SN-X3*CS
      R3 = X2*CS+X3*SN
      Q2 = X2*SN+X3*CS
      Q3 = -X2*CS+X3*SN
      H = SQRT(Q2**2+(Q3+CC)**2)
      K = SQRT((X1-C1)**2+Q2**2)
!*      A1 = LOG(R+X1-C1)
!*      A2 = LOG(Q+X1-C1)
	  TMP1 = R+X1-C1
	  TMP2 = Q+X1-C1
	  IF (TMP1 .LE. EPS) TMP1 = EPS
	  IF (TMP2 .LE. EPS) TMP2 = EPS
	  A1 = LOG(TMP1)
	  A2 = LOG(TMP2)
      B1 = Q*(Q+X1-C1)
      B2 = R*(R+X1-C1)
      B3 = Q*(Q+Q3+CC)
      D1 = X1-C1
      D2 = X2-C2
      D3 = X3-C3
      D4 = X3+C3
      D5 = R3-CC
      D6 = Q3+CC
      T1 = ATN(D1*D2,(H+D4)*(Q+H))
      T2 = ATN(D1*D5,R2*R)
      T3 = ATN(D1*D6,Q2*Q)
      F = SN*(D2*(2*D3/B2+4*D3/B1-4*C3*X3*D4*(2*Q+D1)/(B1**2*Q))	  &
			- 6*T1+3*T2-6*T3)+CS*(A1-A2-2*(D3**2)/B2				  &
			- 4*(D4**2-C3*X3)/B1-4*C3*X3*D4**2*(2*Q+X1-C1)/(B1**2*Q)) &
			+ 6*X3*(CS*SN*(2*D6/B1+D1/B3)-Q2*(SN**2-CS**2)/B1)

	  IF (ABS(B1**2*Q*B2*B3) .LT. 1.0E-10) THEN
	      WRITE(*,*) 'DIVIDED BY ZERO IN UDCAL'
	  ENDIF

      RETURN
      END                                                               

!----------------------------------------------------------------------
      REAL FUNCTION ATN (AX,AY)                                         
!----------------------------------------------------------------------
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

      AAX = ABS(AX)
      AAY = ABS(AY)
      P = AX*AY
      IF ((AAX.LE.EPS).AND.(AAY.LE.EPS)) THEN
        ATN = 0.2
        WRITE(6,1) AX,AY
 1      FORMAT('ATAN FIX --  AX =',E15.7,2X,'AY =',E15.7)
      ELSE
        SR = ATAN2(AAX,AAY)
        ATN = SIGN(SR,P)
      ENDIF
!
      RETURN
      END

!----------------------------------------------------------------------
      SUBROUTINE STEREO_PROJECTION (X,Y,LONIN,LATIN,LON0,LAT0)
!......................................................................
!DESCRIPTION:
!     # MAPPING A POINT ON THE ELLIPSOID SURFACE ONTO A PLANE;
!     # OBLIQUE STEREOGRAPHIC PROJECTION IS ADOPTED 
!INPUT:
!     LATIN: LATITUDE IN DEGREES
!     LONIN: LONGITUDE IN DEGREES
!     LAT0: LATITUDE OF TANGENTIAL POINT IN DEGREES (E.G., EPICENTER)
!     LON0: LONGITUDE OF TANGENTIAL POINT IN DEGREES (E.G., EPICENTER)
!OUTPUT:
!     X: X COORDINATE/EASTING IN METERS RELATIVE TO ORIGIN (I.E., LON0)
!     Y: Y COORDINATE/NORTHING IN METERS RELATIVE TO ORIGIN (I.E., LAT0)
!REFERENCES:
!	  #. SNYDER, J.P. (1987). MAP PROJECTIONS - A WORKING MANUAL.
!                          USGS PROFESSIONAL PAPER 1395
!     #. ELLIPSOIDAL DATUM: WGS84
!WORKING NOTES:
!     CREATED ON DEC18 2008 (XIAOMING WANG, GNS) 
!     UPDATED ON JAN02 2009 (XIAOMING WANG, GNS)                              
!----------------------------------------------------------------------
      REAL XOUT,YOUT,XS,YS,LAT0,LON0,LATIN,LONIN
	  REAL COS_X,COS_Y,SIN_X,SIN_Y
	  REAL LAT,LON,LT0,LN0,CS,SN,CS0,SN0,TMP,TMP0
	  REAL A,B,K0,E,ES,N,C,R,S1,S2,W1,W2,SA,SB,BETA,XI,LM,XI0,LM0
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
	  
	  POLE = PI/2.0 - EPS	  !AVOID SINGULARITY AT POLES
	  
	  ! CONVERT DEGREE TO RADIAN
	  LAT = LATIN*RAD_DEG
	  LON = LONIN*RAD_DEG
	  LT0 = LAT0*RAD_DEG
	  LN0 = LON0*RAD_DEG
	  IF (LAT .GT. POLE) LAT = POLE
	  IF (LAT .LT. -POLE) LAT = -POLE
	  IF (LT0 .GT. POLE) LT0 = POLE
	  IF (LT0 .LT. -POLE) LT0 = -POLE

	  CS = COS(LAT)
	  SN = SIN(LAT)
	  CS0 = COS(LT0)
	  SN0 = SIN(LT0)

	  ! PARAMETERS
	  XF = 0.0					! FALSE EASTING
	  YF = 0.0					! FALSE NORTHING

	  A = 6378137.0000          ! ELLIPSOIDAL SEMI-MAJOR AXIS
	  B = 6356752.3142			! ELLIPSOIDAL SEMI-MINOR AXIS
	  F = 0.00335281067183      ! FLATTENING, F = (A-B)/A
	  E = 0.08181919092891		! ECCENTRICITY, E = SQRT(2.0*F-F**2)
	  F2 = 0.00669438000426		! F2 = E**2
	  ES = 0.00673949675659		! 2ND ECCENTRICITY, ES = E**2/(1-E**2)

	  K0 = 0.9996				! SCALE FACTOR

	  TMP = SQRT(1.0-F2*SN**2)
	  TMP0 = SQRT(1.0-F2*SN0**2)
	  RHO0 = A*(1.0-F2)/TMP0**3
	  NU0 = A/TMP0
	  R = SQRT(RHO0*NU0)
	  N = SQRT(1.0+F2*CS0**4/(1.0-F2))

	  S1 = (1.0+SN0)/(1.0-SN0)
	  S2 = (1.0-E*SN0)/(1.0+E*SN0)
	  W1 = (S1*S2**E)**N
	  SN_XI0 = (W1-1.0)/(W1+1.0)
	  C = (N+SN0)*(1.0-SN_XI0)/(N-SN0)/(1.0+SN_XI0)
	
	  W2 = C*W1
	  SA = (1.0+SN)/(1.0-SN)
	  SB = (1.0-E*SN)/(1.0+E*SN)
	  W = C*(SA*SB**E)**N

	  XI0 = ASIN((W2-1.0)/(W2+1.0))
	  LM0 = LN0

	  LM = N*(LON-LM0)+LM0
	  XI = ASIN((W-1.0)/(W+1.0))

	  BETA = 1.0 + SIN(XI)*SIN(XI0) + COS(XI)*COS(XI0)*COS(LM-LM0)

	  Y = YF + 2.0*R*K0*(SIN(XI)*COS(XI0) &
						 - COS(XI)*SIN(XI0)*COS(LM-LM0))/BETA
	  X = XF + 2.0*R*K0*COS(XI)*SIN(LM-LM0)/BETA

!	  WRITE(*,*) LM,XI,X,Y

      RETURN
      END                                                               


!//////////////////////////////////////////////////////////////////////
! # SEAFLOOR DEFORMATION DATA, BATHYMETRIC AND TOPOGRAPHICAL DATA ARE
!   LOADED INTO COMCOT IN THE FOLLOWING SUBROUTINES
!//////////////////////////////////////////////////////////////////////

!-----------------------------------------------------------------------
      SUBROUTINE READ_COMCOT_DEFORM (LO,FAULT_INFO)
!.....READ DEFORMATION DATA FORMATTED FOR MOST MODEL
!     LAST REVISE: NOV 21 2008 (XIAOMING WANG)
!-----------------------------------------------------------------------
      USE LAYER_PARAMS
      USE FAULT_PARAMS
      TYPE (LAYER) :: LO
	  TYPE (FAULT)	:: FAULT_INFO
	  REAL Z(LO%NX,LO%NY)
      INTEGER      :: ISTAT, IS, JS, IE, JE

	  IS = 1
	  JS = 1
	  IE = LO%NX
	  JE = LO%NY
	  Z = 0.0

      WRITE (*,*) '    READING COMCOT-FORMATTED DEFORMATION FROM FILE:',FAULT_INFO%DEFORM_NAME
!	  WRITE (*,*) '       ',FAULT_INFO%DEFORM_NAME
      OPEN(99,FILE=FAULT_INFO%DEFORM_NAME,STATUS='OLD',IOSTAT=ISTAT)	  
      IF (ISTAT /=0) THEN
         PRINT *,"ERROR:: CAN'T OPEN DEFORMATION DATA FILE; EXITING."
         STOP
      END IF
!!!      DO J=JS,JE
!!!            READ (99,'(15F8.3)') (Z(I,J),I=1,IE)
!!!      END DO
      DO J=JS,JE
!!!         DO I=IS,IE 
            READ (99,*) Z(:,J) !150612 
!!!         END DO
      END DO
      CLOSE (99)
	  LO%DEFORM(:,:) = Z(:,:)

!*	  DO I = IS,IE
!*	     DO J = JS,JE
!*		    IF ( ABS(LO%DEFORM(I,J)).LT.0.001 ) LO%DEFORM(I,J) = 0.0
!*		 END DO
!*	  END DO

      RETURN
      END


!----------------------------------------------------------------------
      SUBROUTINE READ_MOST_DEFORM (LO,FAULT_INFO)
!......................................................................
!DESCRIPTION:
!	  #. READ MOST-FORMATTED DEFORMATION DATA;
!     #. FIRST ROW OF DATA FILE DESCRIBE THE DIMENSION OF THE  
!	     DEFORMATION GRID: NX, NY; LONGITUDE AND LATTIUDE OF THE CENTER
!		 OF DEFORMATION REGION AND ITS INDICES IN NUMERICAL DOMAIN;
!     #. GRID DATA IS WRITTEN ROW BY ROW (X FIRST) 
!     #. NODATA TYPE, NAN, IS NOT ALLOWED
!     #. DEFORMATION DATA SHOULD HAVE THE SAME RESOLUTION AS THAT OF 
!		 1ST-LEVEL GRIDS;
!NOTES: 
!	  #. CREATED ON OCT 25 2008 (XIAOMING WANG, GNS)
!     #. UPDATED ON NOV 21 2008 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      USE FAULT_PARAMS
      TYPE (LAYER) :: LO
	  TYPE (FAULT)	:: FAULT_INFO
      INTEGER STAT, IS, JS, I, J, i0, j0, NX, NY
      INTEGER LENGTH, RC !, FLAG
	  REAL Z(LO%NX,LO%NY), X0, Y0
	  REAL,ALLOCATABLE :: TMP(:,:),TMP1(:,:)
	  REAL,ALLOCATABLE :: X(:),Y(:)
      CHARACTER(LEN=30) FNAME
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

      WRITE (*,*) '    READING MOST-FORMATTED DEFORMATION DATA FROM FILE'
!	  WRITE (*,*) '       ',FAULT_INFO%DEFORM_NAME

      OPEN (UNIT=23,FILE=FAULT_INFO%DEFORM_NAME,STATUS='OLD',		&
									IOSTAT=ISTAT,FORM='FORMATTED')
      IF (ISTAT /=0) THEN
         PRINT *,"ERROR:: CAN'T OPEN ",FAULT_INFO%DEFORM_NAME,"; EXITING."
         STOP
      END IF

      READ (23,*) NX,NY,X0,Y0,I0,J0
!	  WRITE(*,*) NX,NY,X0,Y0,I0,J0

!     (X0,Y0) DEFINES THE CENTER OF THE DEFORMATION AREA
!     (NX,NY) IS THE DIMENSION OF THE DEFORMATION GRIDS
      ALLOCATE(TMP(NX,NY))
	  ALLOCATE(TMP1(NX,NY))
	  ALLOCATE(X(NX))
	  ALLOCATE(Y(NY))
	  TMP = 0.0
	  TMP1 = 0.0
	  X = 0.0
	  Y = 0.0
	  Z = 0.0

      IF(X0.LT.LO%X(1) .OR. X0.GT.LO%X(LO%NX) .OR. 					&
	  		Y0.LT.LO%Y(1) .OR. Y0.GT.LO%Y(LO%NY)) THEN
         WRITE(*,*) 'PROBLEM: DEFORMATION AREA BEYOND THE DOMAIN !!!!'
      END IF

      DO J=1,NY
        READ (23,*) (TMP(I,J), I=1,NX)
		DO I = 1,NX
!		   IF (ISNAN(TMP(I,J))) TMP(I,J) = 0.0
		   IF (ABS(TMP(I,J)).GE.HUGE(TMP(I,J))) TMP(I,J) = 0.0
		ENDDO
      END DO
      CLOSE (23)
	 !CREATE COORDINATES FOR THE DEFORMATION AREA
      DO I = 1,NX
		 X(I) = X0 - NX/2.0*LO%DX/60.0 + (I-1)*LO%DX/60.0
      ENDDO
	  DO J = 1,NY
	     Y(J) = Y0 - NY/2.0*LO%DY/60.0 + (J-1)*LO%DY/60.0
      ENDDO
!	  WRITE(*,*) X(1),X(NX)
!	  WRITE(*,*) Y(1),Y(NY)
!.....CONVERT THE FORMAT FROM MOST COORDINATES INTO COMCOT COORDINATES
!     NOTE: IN MOST DATA, Y POINTING TO THE SOUTH
!           IN COMCOT, Y POINTING TO THE NORTH
!!....DATA NEED TO FLIP
      ! FLIP DEFORMATION MATRIX
      DO I = 1,NX
	     DO J = 1,NY
		    K = NY - J + 1
			TMP1(I,K) = TMP(I,J)
		 END DO
	  END DO

!.....MAPPING THE DEFORM DATA ONTO THE NUMERICAL GRIDS
!*      CALL DEFORM_MAPPING (LO,TMP1,X,Y,NX,NY)
      CALL GRID_INTERP (Z,LO%X,LO%Y,LO%NX,LO%NY,TMP1,X,Y,NX,NY)

	  CALL SMOOTH_BC (Z,LO%X,LO%Y,LO%NX,LO%NY)

	  LO%DEFORM(:,:) = Z(:,:)

      DEALLOCATE(TMP,TMP1,X,Y,STAT = ISTAT)

      RETURN
      END


!----------------------------------------------------------------------
      SUBROUTINE READ_XYZ_DEFORM (LO,FAULT_INFO)
!......................................................................
!DESCRIPTION:
!	  #. READ XYZ-FORMAT DEFORMATION DATA;
!     #. GRIDDED DEFORMATION DATA CONTAINS 3 COLUMNS: X COORDINATES,  
!		 Y COORDINATES, DEFORMATION (Z);
!	  #. COORDINATE SYSTEM IS DEFINED SO THAT X POINTING TO THE EAST 
!		 (LONGITUDE) AND Y AXIS POINTING TO THE NORTH (LATITUDE);
!     #. GRID DATA IS WRITTEN ROW BY ROW (X FIRST) FROM WEST TO EAST, 
!		 FROM SOUTH TO NORTH (OR FOR NORTH TO SOUTH); 
!     #. NODATA TYPE, NAN, IS NOT ALLOWED (FOR COMPAQ COMPILER)
!NOTES:
!	  #. CREATED ON NOV 05 2008 (XIAOMING WANG, GNS)
!     #. UPDATED ON NOV 21 2008 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      USE FAULT_PARAMS
      TYPE (LAYER) :: LO
	  TYPE (FAULT)	:: FAULT_INFO
      INTEGER      :: ISTAT, IS, JS, IE, JE
	  REAL Z(LO%NX,LO%NY)
	  REAL,ALLOCATABLE :: TMP(:,:),DEFORM(:,:)
	  REAL,ALLOCATABLE :: XCOL(:),YCOL(:),ZCOL(:) 
	  REAL,ALLOCATABLE :: X(:),Y(:),XTMP(:),YTMP(:)
      INTEGER	   LENGTH, RC, POS !, FLAG
	  INTEGER      COUNT
	  REAL         TEMP,TEMP1,TEMP2,TEMP3
!      CHARACTER(LEN=30) FNAME
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

	  Z = 0.0

	  COUNT = 0

      WRITE (*,*) '    READING XYZ-FORMAT DEFORMATION DATA FILE...'
!	  WRITE (*,*) '       ',FAULT_INFO%DEFORM_NAME
      OPEN (UNIT=23,FILE=FAULT_INFO%DEFORM_NAME,STATUS='OLD',		&
									IOSTAT=ISTAT,FORM='FORMATTED')
      IF (ISTAT /=0) THEN
         PRINT *,"ERROR:: CAN'T OPEN DEFORMATION DATA FILE; EXITING."
         STOP
      END IF

!.....DETERMINE THE LENGTH OF BATHYMETRY DATA FILE
	  DO WHILE (ISTAT ==0)
		 COUNT = COUNT + 1
		 READ (UNIT=23,FMT=*,IOSTAT=ISTAT) TEMP1,TEMP2,TEMP3
	  ENDDO
!*      CLOSE(23)
!*!	  WRITE (*,*) '       TOTAL NUMBER OF BATHYMETRY POINTS: ', COUNT
          COUNT=COUNT-1
          NXY = COUNT
	  ALLOCATE(XCOL(NXY))
	  ALLOCATE(YCOL(NXY))
	  ALLOCATE(ZCOL(NXY))
	  XCOL = 0.0
	  YCOL = 0.0
	  ZCOL = 0.0

!*!.....READING DEFORMATION DATA
      REWIND(23)
	  DO I = 1,COUNT
         READ (23,*) XCOL(I), YCOL(I), ZCOL(I)
!		 IF (ISNAN(ZCOL(I))) ZCOL(I) = 0.0
		 IF (ABS(ZCOL(I)).GE.HUGE(ZCOL(I))) ZCOL(I) = 0.0
	  END DO
	  CLOSE (23)

!.....DETERMINE GRID DIMENSION: NX,NY
      TMPX = XCOL(1)
	  TMPX1 = XCOL(2)
	  TMPY = YCOL(1)
	  TMPY1 = YCOL(2)
!	  WRITE(*,*) TMPX1,TMPX

!>>>
!.....CHECK IF THE DATA IS WRITTEN ROW BY ROW
	  IF (TMPX1.GT.TMPX .AND. ABS(TMPY1-TMPY).LT.EPS) THEN
!*	  IF (TMPX1.GT.TMPX .AND. TMPY1.EQ.TMPY) THEN
	     K = 1
	     DO WHILE (TMPX1.GT.TMPX)
	        K=K+1
	        TMPX1 = XCOL(K)
	     ENDDO
	     NX = K-1
!	     WRITE(*,*) NX
	     NY = NINT(DBLE(NXY/NX))

!	     WRITE (*,*) '       GRID DIMENSION OF DEFORMATION: ', NX,NY
         ALLOCATE(X(NX))
	     ALLOCATE(Y(NY))
	     ALLOCATE(YTMP(NY))	
	     ALLOCATE(TMP(NX,NY)) 
	     ALLOCATE(DEFORM(NX,NY))    
	     TMP = 0.0
	     X = 0.0
	     Y = 0.0
	     YTMP = 0.0
	     DEFORM = 0.0
!........OBTAINED X,Y COORDINATES
	     X(1:NX) = XCOL(1:NX)
	     DO J = 1,NY
	        K = (J-1)*NX + 1
	        YTMP(J) = YCOL(K)
	     END DO
	     !GENERATE GRID DATA
         DO J=1,NY
	        KS = (J-1)*NX + 1
		    KE = (J-1)*NX + NX
            TMP(1:NX,J) = ZCOL(KS:KE)
         END DO
	  ENDIF
!<<<

!>>>
!.....CHECK IF THE DATA IS WRITTEN COLUMN BY COLUMN
	  TMPX = XCOL(1)
	  TMPX1 = XCOL(2)
	  TMPY = YCOL(1)
	  TMPY1 = YCOL(2)
!	  write (*,*) TMPX,TMPX1,TMPY,TMPY1,NXY
	  IF (ABS(TMPX1-TMPX).LT.EPS .AND. ABS(TMPY1-TMPY).GT.EPS) THEN
!*	  IF (TMPX1.EQ.TMPX .AND. TMPY1.NE.TMPY) THEN
	     K = 1
	     DO WHILE (TMPX1.LE.TMPX)
	        K=K+1
	        TMPX1 = XCOL(K)
	     ENDDO
	     NY = K-1
!	     WRITE(*,*) NX
	     NX = NINT(DBLE(NXY/NY))

!*	     WRITE (*,*) '       GRID DIMENSION OF DEFORMATION: ', NX,NY
         ALLOCATE(X(NX))
	     ALLOCATE(Y(NY))
		 ALLOCATE(XTMP(NX))	
	     ALLOCATE(YTMP(NY))	
	     ALLOCATE(TMP(NX,NY)) 
	     ALLOCATE(DEFORM(NX,NY))    
	     TMP = 0.0
	     X = 0.0
	     Y = 0.0
	     YTMP = 0.0
	     DEFORM = 0.0
!........OBTAINED X,Y COORDINATES
	     YTMP(1:NY) = YCOL(1:NY)
	     DO I = 1,NX
	        K = (I-1)*NY + 1
	        X(I) = XCOL(K)
	     END DO
	     !GENERATE GRID DATA
         DO I=1,NX
	        KS = (I-1)*NY + 1
		    KE = (I-1)*NY + NY
            TMP(I,1:NY) = ZCOL(KS:KE)
         END DO
	  ENDIF
!<<<

!........
!!....DETERMINE IF THE DATA NEED FLIP
!     E.G., Y COORDINATE IS FROM NORTH TO SOUTH OR FROM SOUTH TO NORTH
!     IFLIP = 0: FLIP; 1: NO FLIP OPERATION
      IFLIP = 0
	  IF (YTMP(NY).LT.YTMP(NY-1)) IFLIP = 1
!	  WRITE (*,*) IFLIP
      
	  IF (IFLIP .EQ. 1) THEN
         ! FLIP Y COORDINATES
         DO J = 1,NY
	        K = NY-J+1
		    Y(K) = YTMP(J)
	     END DO
         ! FLIP BATHYMETRY MATRIX
         DO I = 1,NX
	        DO J = 1,NY
		       K = NY - J + 1
			   DEFORM(I,K) = TMP(I,J)
		    END DO
	     END DO
	  ELSE
	     Y = YTMP
		 DEFORM = TMP
	  END IF
!      WRITE (*,*) NX,NY,X(1),X(NX),Y(1),Y(NY)
!      WRITE (*,*) LO%NX,LO%NY

!.....MAPPING THE DEFORM DATA ONTO THE NUMERICAL GRIDS
!*      CALL DEFORM_MAPPING (LO,DEFORM,X,Y,NX,NY)
      CALL GRID_INTERP (Z,LO%X,LO%Y,LO%NX,LO%NY,DEFORM,X,Y,NX,NY)

	  CALL SMOOTH_BC (Z,LO%X,LO%Y,LO%NX,LO%NY)

	  LO%DEFORM(:,:) = Z(:,:)

      DEALLOCATE(XCOL,YCOL,ZCOL,STAT = ISTAT)
      DEALLOCATE(TMP,XTMP,YTMP,STAT = ISTAT)
      DEALLOCATE(X,Y,DEFORM,STAT = ISTAT)
      

      RETURN
      END



!----------------------------------------------------------------------
      SUBROUTINE SMOOTH_BC (Z,X,Y,NX,NY)
!......................................................................
!DESCRIPTION:
!	  #. SMOOTH OUT DEFORMATION NEAR BOUNDARIES TO AVOID REFLECTION 
!		 PROBLEMS FROM OPEN BOUNDARY;
!	  #. 
!NOTES:
!     #. CREATED ON DEC 22 2008 (XIAOMING WANG, GNS)
!     #. UPDATED ON JAN 23 2009 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
	  REAL Z(NX,NY),X(NX),Y(NY)
      INTEGER NN,NX,NY
	  REAL R_MAX,X_REL,M,COEF


	  N1 = 20
	  N2 = 20

	  IF (NX.LE.20) N1 = 5
	  IF (NY.LE.20) N2 = 5

	  M = 1.0
	  COEF = 1.0
	  
!OMP 111025 v1
!$omp parallel
!$omp do private(J,I) firstprivate(R_MAX,X_REL,COEF)
	  DO J = 1,NY
		 R_MAX = N1
	  	 !LEFT BOUNDARY
		 DO I = 1,N1
		    X_REL = I-1.0
		    COEF = (EXP((X_REL/R_MAX)**M)-1.0)/(EXP(1.0)-1.0)
		    Z(I,J) = Z(I,J)*COEF
	     ENDDO
	     !RIGHT BOUNDARY
	     DO I = NX-N1,NX
		    X_REL = NX-I
		    COEF = (EXP((X_REL/R_MAX)**M)-1.0)/(EXP(1.0)-1.0)
		    Z(I,J) = Z(I,J)*COEF
	     ENDDO
	  ENDDO
!$omp barrier
!$omp do private(I,J) firstprivate(R_MAX,X_REL,COEF)
	  DO I = 1,NX
	     R_MAX = N2
	     !TOP BOUNDARY
	     DO J = NY-N2,NY
		    X_REL = NY-J
		    COEF = (EXP((X_REL/R_MAX)**M)-1.0)/(EXP(1.0)-1.0)
		    Z(I,J) = Z(I,J)*COEF
	     ENDDO
	     !BOTTOM BOUNDARY
	     DO J = 1,N2
		    X_REL = J-1.0
		    COEF = (EXP((X_REL/R_MAX)**M)-1.0)/(EXP(1.0)-1.0)
		    Z(I,J) = Z(I,J)*COEF
	     ENDDO
	  ENDDO
!$omp end parallel 
      RETURN
      END


!----------------------------------------------------------------------
      SUBROUTINE WRITE_DEFORM (LO,K)
!DESCRIPTION:
!	  #. WRITE THE SEAFLOOR DEFORMATION INTO DATA FILE
!NOTES:
!	  #. CREATED ON DEC.28 2008 (XIAOMING WANG, GNS)
!	  #. UPDATED ON FEB 04 2009 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) 	:: LO
      CHARACTER(LEN=40) FNAME
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
      DATA OSIXTY/0.016666666667/, BIG/-999./

      WRITE (FNAME,1) K
 1    FORMAT('deform_seg',I3.3,'.dat')
      OPEN (25,FILE=FNAME,STATUS='UNKNOWN')
      DO J = 1,LO%NY
         WRITE (25,'(15F8.3)') (LO%DEFORM(I,J),I=1,LO%NX)
      ENDDO
      CLOSE (25) 


      RETURN
      END


!*!----------------------------------------------------------------------
!*      SUBROUTINE DEFORM_MAPPING (LO,H,X,Y,NX,NY)
!*!......................................................................
!*!DESCRIPTION:
!*!	  #. MAPPING DEFORMATION DATA ONTO THE 1ST-LEVEL GRIDS
!*!     #. BILINEAR INTERPOLATION WILL BE IMPLEMENTED;
!*!NOTES:
!*!     #. CREATED ON OCT 25 2008 (XIAOMING WANG, GNS)
!*!     #. UPDATED ON NOV 21 2008 (XIAOMING WANG, GNS)
!*!----------------------------------------------------------------------
!*      USE LAYER_PARAMS
!*      TYPE (LAYER) :: LO
!*      INTEGER ISTAT, IS, JS, IE, JE, I0, J0, NX, NY
!*	  REAL H(NX,NY)
!*	  REAL X(NX), Y(NY)
!*	  REAL DEFORM(LO%NX,LO%NY)
!*
!*	  DEFORM = 0.0
!*
!*!      IF (X(1).GE.LO%X(LO%NX) .OR. X(NX).LE.LO%X(1)) THEN
!*!	     PRINT *,"ERROR:: DEFORMATION AREA OUTSIDE THE DOMAIN; EXITING."
!*!         STOP
!*!	  END IF
!*!	  IF (Y(1).GE.LO%Y(LO%NY) .OR. Y(NY).LE.LO%Y(LO%Y(1))) THEN
!*!	     PRINT *,"ERROR:: DEFORMATION AREA OUTSIDE THE DOMAIN; EXITING."
!*!         STOP
!*!	  END IF
!*
!*!	  !PERFORM BILINEAR INTERPOLATION
!*	  DO J = 1,LO%NY
!*	     DO I = 1,LO%NX
!*			KI = 0
!*			KJ = 0
!*		    DO KS = 1,NX-1
!*		       IF (LO%X(I).GE.X(KS) .AND. LO%X(I).LE.X(KS+1)) THEN
!*				  KI = KS
!*			   END IF
!*			END DO
!*		    DO KS = 1,NY-1
!*		       IF (LO%Y(J).GE.Y(KS) .AND. LO%Y(J).LE.Y(KS+1)) THEN
!*				  KJ = KS
!*			   END IF
!*			END DO
!*			IF (KI.GE.1 .AND. KI.LT.NX) THEN
!*			   IF (KJ.GE.1 .AND. KJ.LT.NY) THEN
!*			      DELTA_X = X(KI+1)-X(KI)
!*			      DELTA_Y = Y(KJ+1)-Y(KJ)
!*			      CX = (LO%X(I)-X(KI))/DELTA_X
!*			      CY = (LO%Y(J)-Y(KJ))/DELTA_Y
!*                  Z1 = H(KI,KJ)*(1.0-CX)*(1.0-CY)
!*			      Z2 = H(KI+1,KJ)*(CX)*(1-CY)
!*			      Z3 = H(KI,KJ+1)*(1-CX)*(CY)
!*			      Z4 = H(KI+1,KJ+1)*(CX)*(CY)
!*			      DEFORM(I,J) = Z1+Z2+Z3+Z4
!*			   ENDIF
!*			ENDIF
!*		 END DO
!*	  END DO
!*	  LO%DEFORM(:,:) = DEFORM(:,:)
!*
!*      RETURN
!*      END


!----------------------------------------------------------------------
	  SUBROUTINE ALPHA_CALC (LO,LA)
!......................................................................
!DESCRIPTION:
!	  #. CALL SUBROUTINE ALPHA() TO DETERMINE HIDDEN GRIDS FOR THE 
!		 PURPOSE OF DISPERSION IMPROVEMENT
!	  #. LO%LAYGOV: 
!				2 - LINEAR SWE WITH DISPERSION-IMPROVED SCHEME;
!	  			3 - NONLINEAR SWE WITH DISPERSION-IMPROVED SCHEME;		
!NOTES:
!	  #. CREATED ON JAN 22 2009 (XIAOMING WANG, GNS)
!	  #. UPDATED ON JAN.27 2009 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) :: LO
	  TYPE (LAYER), DIMENSION(NUM_GRID)  :: LA
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
	  IF (LO%LAYGOV .EQ. 2 .OR. LO%LAYGOV .EQ. 3) THEN
	  WRITE (*,*) '    CALCULATING COEFICIENTS FOR DISPERSION-IMPROVED SCHEME......'      
	  ENDIF
      IF (LO%LAYSWITCH .EQ. 0) THEN
		 IF (LO%LAYGOV .GE. 2) CALL ALPHA (LO) 	     
	  END IF
	  DO I=1,NUM_GRID
         IF (LA(I)%LAYSWITCH .EQ. 0) THEN
			IF (LA(I)%LAYGOV .GE. 2) CALL ALPHA (LA(I)) 	     
		 END IF
	  END DO

      RETURN
      END


!----------------------------------------------------------------------
      SUBROUTINE ALPHA (LO) !�S���W���p�e�ϥ� SUBROUTINE MOMT_S_D (L) SUBROUTINE MOMT_C_D (L)
!.....REF: YOON, S.B. (2002), JOURNAL OF GEOPHYSICAL RESEARCH, VOL.107,
!	       NO.C10,3140
!.....DETERMINE COEFFICIENT ALPHA SO AS TO IMPROVE NUMERICAL DISPERSION
!     SUBROUTINE IS DESIGNED TO INCLUDE DISPERSION EFFECT IN SWE
!     ASSUME 'SQUARE' GRID CELLS (I.E., DX=DY)
!.....CREATED ON DEC 2007 (XIAOMING WANG, CORNELL UNIVERSITY)
!     UPDATED ON DEC 15, 2008 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  TYPE (LAYER) :: LO
	  REAL DX, DY, DT, DXS, DYS
	  REAL H(LO%NX,LO%NY)
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

      DX = LO%DX
	  DY = LO%DY
	  DT = LO%DT
	  H = LO%H
!!!	  LO%MASK(:,:) = 0 !??? �쥻�]�bDO I,J loop�� 111025
	  A_LIMIT = 10.0 !SETUP LIMIT ON ALPHA 111025
			
!!!OMP 111025 1b
!!!$omp parallel
!!!$omp do private(I,J) firstprivate(DELTA,DXS,DYS,A,SHIFT,N,&
!!!$omp BETA,B1,B2,DX,XF,XB,X1,X2,X3,X4,N_LIMIT,KI,KJ)
      DO I = 1,LO%NX
	     DO J = 1,LO%NY
		    IF (H(I,J) .GT. GX) THEN
			   !ADJUSTED GRID SIZE IN METERS
		       DELTA = SQRT(4.0*H(I,J)**2+GRAV*H(I,J)*(DT**2))  
               IF (LO%LAYCORD .EQ. 0) THEN
				  LO%ALPHA(I,J) = DELTA/(R_EARTH*COS(LO%Y(J)		&
										*RAD_DEG)*LO%DX*RAD_MIN)
			   ELSE
				  LO%ALPHA(I,J) = DELTA/LO%DX
			   ENDIF
			ELSE
			   LO%ALPHA(I,J) = 1.0
			ENDIF

!SETUP LIMIT ON ALPHA
!			A_LIMIT = 10.0  !111025
			IF (LO%ALPHA(I,J) .GT. A_LIMIT) LO%ALPHA(I,J) = A_LIMIT

!CALCULATE THE SIZE OF HIDDEN GRIDS
			IF (LO%LAYCORD.EQ.0) THEN
!*			   DYS = LO%DEL_Y(J)*RAD_MIN*LO%ALPHA(I,J)
!*			   DXS = LO%DX*RAD_MIN*LO%ALPHA(I,J)
			   DXS = LO%DX*LO%ALPHA(I,J)
			   DYS = LO%DEL_Y(J)*LO%ALPHA(I,J)
			ELSE
			   DXS = LO%DX*LO%ALPHA(I,J)
			   DYS = LO%DY*LO%ALPHA(I,J)
			ENDIF

!CALCULATE COEF. OF 4-PTS LAGRANGE CUBIC INTERPOLATION
			A = LO%ALPHA(I,J)
			SHIFT = 0.5*(A+1.0)
            N = FLOOR(SHIFT)
			BETA = SHIFT - N
			B1 = 1.0-BETA
			B2 = BETA

			DX = LO%DX
			XF = DX+BETA*DX
			XB = DX+(1.0-BETA)*DX
			X1 = 0.0*DX
			X2 = 1.0*DX
			X3 = 2.0*DX
			X4 = 3.0*DX


			LO%CF(I,J,1) = ((XF-X2)*(XF-X3)*(XF-X4))				&
									/((X1-X2)*(X1-X3)*(X1-X4))
			LO%CF(I,J,2) = ((XF-X1)*(XF-X3)*(XF-X4))				&
									/((X2-X1)*(X2-X3)*(X2-X4))
			LO%CF(I,J,3) = ((XF-X1)*(XF-X2)*(XF-X4))				&
									/((X3-X1)*(X3-X2)*(X3-X4))
			LO%CF(I,J,4) = ((XF-X1)*(XF-X2)*(XF-X3))				&
									/((X4-X1)*(X4-X2)*(X4-X3))

			LO%CB(I,J,1) = ((XB-X2)*(XB-X3)*(XB-X4))				&
									/((X1-X2)*(X1-X3)*(X1-X4))
			LO%CB(I,J,2) = ((XB-X1)*(XB-X3)*(XB-X4))				&
									/((X2-X1)*(X2-X3)*(X2-X4))
			LO%CB(I,J,3) = ((XB-X1)*(XB-X2)*(XB-X4))				&
									/((X3-X1)*(X3-X2)*(X3-X4))
			LO%CB(I,J,4) = ((XB-X1)*(XB-X2)*(XB-X3))				&
									/((X4-X1)*(X4-X2)*(X4-X3))

!CREATE MASK FOR DISPERSION CALCULATION:
!	1 - WITH DISPERSION-IMPROVED SCHEME; 
!	0 - WITHOUT DISPERSION-IMPROVED SCHEME;
!!!			LO%MASK(:,:) = 0 !???? why in loop? 111025
			N_LIMIT = NINT(A_LIMIT)
			IF (I.GT.N_LIMIT .AND. I.LT.LO%NX-N_LIMIT) THEN
			   IF (J.GT.N_LIMIT .AND. J.LT.LO%NY-N_LIMIT) THEN
				  LO%MASK(I,J) = 1
			   ENDIF
			ENDIF
			N_LIMIT = NINT(2.0*A_LIMIT)
			IF (I.GT.N_LIMIT .AND. I.LT.LO%NX-N_LIMIT) THEN
			   IF (J.GT.N_LIMIT .AND. J.LT.LO%NY-N_LIMIT) THEN
				  IF (LO%H(I,J) .LT. GX) THEN
					 DO KI = I-N_LIMIT,I+N_LIMIT
						DO KJ = J-N_LIMIT,J+N_LIMIT
						   LO%MASK(KI,KJ) = 0
						ENDDO
					 ENDDO
				  ENDIF
			   ENDIF
			ENDIF

!......................................................................
!CALCULATE COEF FOR YOON'S METHOD (2002)
			A = LO%ALPHA(I,J)
			IF (A .GT. 3.0) A = 3.0

			IF (LO%LAYCORD .EQ. 0) THEN
		       LO%A1X(I,J) = (A**2-1)/(24.*LO%DX*RAD_MIN)
			   LO%A2X(I,J) = 3.*(9.-A**2)/(24.*LO%DX*RAD_MIN)
			   LO%A1Y(I,J) = (A**2-1)/(24.*LO%DEL_Y(J)*RAD_MIN)
			   LO%A2Y(I,J) = 3.*(9.-A**2)/(24.*LO%DEL_Y(J)*RAD_MIN)
			ELSE
		       LO%A1X(I,J) = (A**2-1)/(24.*LO%DX)
			   LO%A2X(I,J) = 3.*(9.-A**2)/(24.*LO%DX)
			   LO%A1Y(I,J) = (A**2-1)/(24.*LO%DEL_Y(J))
			   LO%A2Y(I,J) = 3.*(9.-A**2)/(24.*LO%DEL_Y(J))
            ENDIF
		 ENDDO
      ENDDO
!!!$omp end parallel

	  RETURN
	  END


!----------------------------------------------------------------------
      SUBROUTINE UVW (U,U0,V,V0,WX,WY,WX0,WY0,LO) ! SUBROUTINE MOMT_C_D (L)�S���W���p�e�ϥ�
!.....REF: YOON, S.B. (2002), JOURNAL OF GEOPHYSICAL RESEARCH, VOL.107,
!		   NO.C10,3140
!.....DETERMINE COEFFICIENT ALPHA SO AS TO IMPROVE NUMERICAL DISPERSION
!     SUBROUTINE DESIGNED TO INCLUDED DISPERSION IN SWE
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  TYPE (LAYER) :: LO
	  REAL DX, DY, DT, DXS, DYS, G
	  REAL H(LO%NX,LO%NY)
	  REAL U(LO%NX,LO%NY),U0(LO%NX,LO%NY)  !0 MEANS VALUE AT TIME STEP N-1
	  REAL V(LO%NX,LO%NY),V0(LO%NX,LO%NY)
	  REAL WX0(LO%NX,LO%NY),WY0(LO%NX,LO%NY)  !PQ AT CELL CORNERS
	  REAL WX(LO%NX,LO%NY),WY(LO%NX,LO%NY) !PQ AT CELL EDGES 
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
	  DATA RAD/0.01745329252/

	  G = GRAV
      DX = LO%DX
	  DY = LO%DY
	  DT = LO%DT
	  H = LO%H
!OMP 111025 1b
!!!$omp parallel
!!!$omp do private(I,IP1,IM1,J,JP1,JM1,HP,HQ,HPQ)
      DO I = 1,LO%NX
	     IP1 = I + 1
		 IM1 = I - 1
		 IF(IP1.GE.LO%NX) IP1 = LO%NX
		 IF(IM1.LE.1) IM1 = 1
	     DO J = 1,LO%NY
		    JP1 = J + 1
		    JM1 = J - 1
		    IF(JP1.GE.LO%NY) JP1 = LO%NY
		    IF(JM1.LE.1) JM1 = 1
			IF (LO%HP(I,J).GT.0.0 .AND. LO%HP(IP1,J).GT.0.0) THEN
			   IF (LO%HQ(I,J).GT.0.0 .AND. LO%HQ(I,JP1).GT.0.0) THEN
			      HP = LO%HP(I,J) 
				  HQ = LO%HQ(I,J) 
				  HPQ = (LO%HP(I,J) + LO%HP(I,JP1) + LO%HQ(I,J)		&
												+ LO%HQ(IP1,J))/4.0

			      U(I,J) = LO%M(I,J,1)**2/HP
				  U0(I,J) = LO%M0(I,J)**2/HP

                  V(I,J) = LO%N(I,J,1)**2/HQ
				  V0(I,J) = LO%N0(I,J)**2/HQ

				  WX(I,J) = (LO%N(I,J,1)+LO%N(IP1,J,1)				&
								+LO%N(I,JM1,1)+LO%N(IP1,JM1,1))		&
								*(LO%M(I,J,1))/(4.0*HP)
				  WY(I,J) = (LO%M(I,J,1)+LO%M(IM1,J,1)				&
								+LO%M(I,JP1,1)+LO%M(IM1,JP1,1))		&
								*(LO%N(I,J,1))/(4.0*HQ)

                  WX0(I,J) = (LO%N0(I,J)+LO%N0(IP1,J)+LO%N0(I,JM1)	&
							+LO%N0(IP1,JM1))*(LO%M0(I,J))/(4.0*HP)
                  WY0(I,J) = (LO%M0(I,J)+LO%M0(IM1,J)+LO%M0(I,JP1)	&
							+LO%M0(IM1,JP1))*(LO%N0(I,J))/(4.0*HQ)

			   ENDIF
            ENDIF
		 ENDDO
      ENDDO
!!!$omp end parallel
	  
	  RETURN
	  END


!----------------------------------------------------------------------
      SUBROUTINE MASS_S_D (L)
! ....SOLVE CONTINUITY EQUATION IN SPHERICAL COORD. 
!.....ADOPT DISPERSION-IMPROVED NUMERICAL SCHEME
!.....CREATED ON DEC 2007 (XIAOMING WANG, CORNELL UNIVERSITY)
!     UPDATED ON DEC.15 2008 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) 	:: L
      REAL ALPHA, DPDX, DQDY, A1, A2
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
      DATA UB/99.0/
	  DATA OSIXTY/0.016666666667/
!
      IS = 2
	  JS = 2
!.....DIMENSIONALITY INCLUDED IN THE COMPUTATION
      IDIM = 2   
!.....INTERPOLATION METHOD. 
!	  1 - YOON 2002; 
!	  2 - LAGRANGE 4 POINTS (CUBIC)
      INTP = 2   

	  IF (L%ID .EQ. 1) THEN
	    IE = L%NX-1    !FOR OUTEST LAYER
	    JE = L%NY-1
	  ELSE
	    IE = L%NX      !FOR INNER LAYER
        JE = L%NY
      END IF
!OMP 111025 1b
!!!$omp parallel
!!!$omp do private(J,JM1,JM2,JP1,JP2,I,IM1,IM2,IP1,IP2,A,SHIFT,NN,DXS,DYS,&
!!!$omp ALPHA,A1X,A1Y,A2X,A2Y,DPDX,DQDY,ZZ,PF,PB,QF,QB)
      DO J=JS,JE
        JM1 = J-1
		JM2 = J-2
		JP1 = J+1
		JP2 = J+2
		IF (JM1.LE.1) JM1 = 1
		IF (JM2.LE.1) JM2 = 1
		IF (JP1.GE.L%NY) JP1 = L%NY
		IF (JP2.GE.L%NY) JP2 = L%NY
        DO I=IS,IE
		  IM1 = I-1
		  IM2 = I-2
		  IP1 = I+1
		  IP2 = I+2
		  IF (IM1.LE.1) IM1 = 1
		  IF (IM2.LE.1) IM2 = 1
		  IF (IP1.GE.L%NX) IP1 = L%NX
		  IF (IP2.GE.L%NX) IP2 = L%NX
          IF (L%H(I,J) .GT. GX) THEN
            A = L%ALPHA(I,J)
			SHIFT = 0.5*(A+1.0)
            NN = FLOOR(SHIFT)

		    DXS = L%DX*RAD_MIN*L%ALPHA(I,J)
			DYS = L%DEL_Y(J)*RAD_MIN*L%ALPHA(I,J)

		    IF (L%MASK(I,J) .EQ. 1) THEN
			   IF (INTP.EQ.1) THEN
		          ALPHA = L%ALPHA(I,J)
		          A1X = L%A1X(I,J)   !(ALPHA**2-1)/(24.*L%DX)
			      A1Y = L%A1Y(I,J)
			      A2X = L%A2X(I,J)   !3.*(9.-ALPHA**2)/(24.*L%DX)
			      A2Y = L%A2Y(I,J)
			      DPDX = A1X*(L%M(IP1,J,1)-L%M(IM2,J,1))			&
							+A2X*(L%M(I,J,1)-L%M(IM1,J,1))
                  DQDY = A1Y*(L%N(I,JP1,1)*L%R6(JP1)-L%N(I,JM2,1)	&
							*L%R6(J-2))+A2Y*(L%N(I,J,1)*L%R6(J)		&
							-L%N(I,JM1,1)*L%R6(JM1))
			      ZZ = L%Z(I,J,1)-L%R1(I,J)*DXS*DPDX				&
									-L%R11(I,J)*DYS*DQDY
			   ENDIF
			   IF  (INTP.EQ.2) THEN
                  PF = L%CF(I,J,1)*L%M(IM1+NN,J,1)					&
						+ L%CF(I,J,2)*L%M(I+NN,J,1)					&
						+ L%CF(I,J,3)*L%M(IP1+NN,J,1)				&
						+ L%CF(I,J,4)*L%M(IP2+NN,J,1)
                  PB = L%CB(I,J,1)*L%M(IM1-NN,J,1)					&
						+ L%CB(I,J,2)*L%M(I-NN,J,1)					&
						+ L%CB(I,J,3)*L%M(IP1-NN,J,1)				&
						+ L%CB(I,J,4)*L%M(IP2-NN,J,1)
				  QF = L%CF(I,J,1)*L%N(I,JM1+NN,1)*L%R6(JM1+NN)		&
						+ L%CF(I,J,2)*L%N(I,J+NN,1)*L%R6(J+NN)		&
						+ L%CF(I,J,3)*L%N(I,JP1+NN,1)*L%R6(JP1+NN)	&
						+ L%CF(I,J,4)*L%N(I,JP2+NN,1)*L%R6(JP2+NN)
				  QB = L%CB(I,J,1)*L%N(I,JM1-NN,1)*L%R6(JM1-NN)		&
						+ L%CB(I,J,2)*L%N(I,J-NN,1)*L%R6(J-NN)		&
						+ L%CB(I,J,3)*L%N(I,JP1-NN,1)*L%R6(JP1-NN)	&
						+ L%CB(I,J,4)*L%N(I,JP2-NN,1)*L%R6(JP2-NN)
			      DPDX = (PF-PB)
			      DQDY = (QF-QB)
!*				  ZZ = L%Z(I,J,1)-L%R1(I,J)*DPDX-L%R0(I,J)*DQDY
				  ZZ = L%Z(I,J,1)-L%R1(I,J)*DPDX-L%R11(I,J)*DQDY

			   ENDIF
			ELSE
               ZZ = L%Z(I,J,1)-L%R1(I,J)*(L%M(I,J,1)-L%M(IM1,J,1))	&
							-L%R11(I,J)*(L%N(I,J,1)*L%R6(J)			&
										-L%N(I,JM1,1)*L%R6(JM1))
			ENDIF

            IF (L%INI_SWITCH .EQ. 3 .OR. L%INI_SWITCH.EQ.4) THEN
			   ZZ = ZZ-(L%HT(I,J,2)-L%HT(I,J,1))
            ENDIF
            IF (ABS(ZZ) .LT. EPS) ZZ = ZERO
!			IF (ABS(ZZ) .GT. UB) ZZ=SIGN(UB,ZZ) 
			!DEPRESSION CANNOT BE LESS THAN BOTTOM ELEVATION
            IF ( (ZZ+L%H(I,J)) .LE. ZERO ) ZZ = -L%H(I,J) 
              L%Z(I,J,2) = ZZ
            ELSE
		    L%Z(I,J,2) = 0.0
          ENDIF
       END DO
      END DO
!!!$omp end parallel
      RETURN
      END

!----------------------------------------------------------------------
      SUBROUTINE MASS_C_D (L)		 
! ....SOLVE CONTINUITY EQUATION (LINEAR) IN CARTESIAN COORD. 
!     LAYID = 1, OUTEST LAYER
!     OTHERWISE, INNER LAYER 
!
!NOTES: 
!	  #. ADD SUPPORT FOR DX\=DY (FOR HIGH-LATITUDE, 05/04/2007)
!            RX = L%R
!            RY = L%DT/L%DY

!     SUBROUTINE DESIGNED TO INCCLUDE DISPERSION IN SWE
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) 	:: L
	  REAL ALPHA, DPDX, DQDY, A1, A2
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
      DATA UB/99.0/

	  RX = L%RX
	  RY = L%RY
	  GRT = L%DT*GRAV
	  
!.....DIMENSIONALITY INCLUDED IN THE COMPUTATION
      IDIM = 2   
!.....INTERPOLATION METHOD. 
!		1 - YOON2002; 
!		2 - LAGRANGE 4 POINTS (CUBIC)
      INTP = 2   

!
      IS = 2
      JS = 2
	  IF(L%ID .EQ. 1)THEN  !OUTTEST LAYER				 
	    IE = L%NX -1
	    JE = L%NY -1
	  ELSE				  ! INNER LAYER
	    IE = L%NX
	    JE = L%NY
	  ENDIF

      IF (IDIM.EQ.2) THEN
!OMP 111025 1b
!!!$omp parallel
!!!$omp do private(J,JM1,JM2,JP1,JP2,I,IM1,IM2,IP1,IP2,A,SHIFT,NN,&
!!!$omp DXS,DYS,A1X,A1Y,A2X,A2Y,DPDX,DQDY,ZZ,PF,PB,QF,QB,DP,DQ)	  
      DO J=JS,JE
        JM1 = J-1
		JM2 = J-2
		JP1 = J+1
		JP2 = J+2
		IF (JM1.LE.1) JM1 = 1
		IF (JM2.LE.1) JM2 = 1
		IF (JP1.GE.L%NY) JP1 = L%NY
		IF (JP2.GE.L%NY) JP2 = L%NY
        DO I=IS,IE
		  IM1 = I-1
		  IM2 = I-2
		  IP1 = I+1
		  IP2 = I+2
		  IF (IM1.LE.1) IM1 = 1
		  IF (IM2.LE.1) IM2 = 1
		  IF (IP1.GE.L%NX) IP1 = L%NX
		  IF (IP2.GE.L%NX) IP2 = L%NX

          IF (L%H(I,J) .GT. GX) THEN

            A = L%ALPHA(I,J)
			SHIFT = 0.5*(A+1.0)
            NN = FLOOR(SHIFT)

		    DXS = L%DX*L%ALPHA(I,J)
			DYS = L%DY*L%ALPHA(I,J)

		    IF (L%MASK(I,J).EQ.1) THEN
			   IF (INTP.EQ.1) THEN
		          A1X = L%A1X(I,J)   !(ALPHA**2-1)/(24.*L%DX)
			      A1Y = L%A1Y(I,J)
			      A2X = L%A2X(I,J)   !3.*(9.-ALPHA**2)/(24.*L%DX)
			      A2Y = L%A2Y(I,J)
			      DPDX = A1X*(L%M(IP1,J,1)-L%M(IM2,J,1))			&
							+A2X*(L%M(I,J,1)-L%M(IM1,J,1))
                  DQDY = A1Y*(L%N(I,JP1,1)-L%N(I,JM2,1))			&
							+A2Y*(L%N(I,J,1)-L%N(I,JM1,1))
			      ZZ = L%Z(I,J,1)-L%DT*(DPDX+DQDY)
			   ENDIF
			   IF  (INTP.EQ.2) THEN
                  PF = L%CF(I,J,1)*L%M(IM1+NN,J,1)					&
						+ L%CF(I,J,2)*L%M(I+NN,J,1)					&
						+ L%CF(I,J,3)*L%M(IP1+NN,J,1)				&
						+ L%CF(I,J,4)*L%M(IP2+NN,J,1)
                  PB = L%CB(I,J,1)*L%M(IM1-NN,J,1)					&
						+ L%CB(I,J,2)*L%M(I-NN,J,1)					&
						+ L%CB(I,J,3)*L%M(IP1-NN,J,1)				&
						+ L%CB(I,J,4)*L%M(IP2-NN,J,1)
				  QF = L%CF(I,J,1)*L%N(I,JM1+NN,1)					&
						+ L%CF(I,J,2)*L%N(I,J+NN,1)					&
						+ L%CF(I,J,3)*L%N(I,JP1+NN,1)				&
						+ L%CF(I,J,4)*L%N(I,JP2+NN,1)
				  QB = L%CB(I,J,1)*L%N(I,JM1-NN,1)					&
						+ L%CB(I,J,2)*L%N(I,J-NN,1)					&
						+ L%CB(I,J,3)*L%N(I,JP1-NN,1)				&
						+ L%CB(I,J,4)*L%N(I,JP2-NN,1)
				  DP = (PF-PB)
			      DQ = (QF-QB)
			      ZZ = L%Z(I,J,1) - (L%DT/DXS*DP+L%DT/DYS*DQ)
			   ENDIF
			ELSE
               ZZ = L%Z(I,J,1) - RX*(L%M(I,J,1)-L%M(IM1,J,1))		&
								- RY*(L%N(I,J,1)-L%N(I,JM1,1))
			ENDIF
			IF (L%INI_SWITCH.EQ.3 .OR. L%INI_SWITCH.EQ.4) THEN
			   ZZ = ZZ-(L%HT(I,J,2)-L%HT(I,J,1))  
			ENDIF
			IF (ABS(ZZ) .LT. EPS) ZZ = ZERO
!*			IF (ABS(ZZ) .GT. UB) ZZ=SIGN(UB,ZZ) 
			!DEPRESSION CANNOT BE LESS THAN BOTTOM ELEVATION 
			IF ( (ZZ+L%H(I,J)) .LE. ZERO ) ZZ = -L%H(I,J) 
            L%Z(I,J,2) = ZZ
		  ELSE
            L%Z(I,J,2) = 0.0

          ENDIF
        END DO
      END DO
!!!$omp end parallel
      ENDIF

!.....CODE FOR 1-D STUDY     
      IF (IDIM.EQ.1) THEN	  
	     L%N(:,:,:) = 0.0
	     J = FLOOR(L%NY/2.)
		 
!OMP 111025 1b
!!!$omp parallel
!!!$omp do private(I,IM1,IM2,IP1,IP2,A,SHIFT,NN,DXS,BETA,A1X,A2X,DPDX,ZZ,PF,PB,DP)		 
	     DO I=IS,IE
		    IM1 = I-1
			IM2 = I-2
			IP1 = I+1
			IP2 = I+2
			IF (IM1.LE.1) IM1 = 1
			IF (IM2.LE.1) IM2 = 1
			IF (IP1.GE.L%NX) IP1 = L%NX
			IF (IP2.GE.L%NX) IP2 = L%NX

            IF (L%H(I,J) .GT. GX) THEN
               A = L%ALPHA(I,J)
			   SHIFT = 0.5*(A+1.0)
               NN = FLOOR(SHIFT)

	           DXS = L%DX*L%ALPHA(I,J)
			   BETA = SHIFT - NN

			   IF (L%MASK(I,J).EQ.1) THEN
			      IF (INTP.EQ.1) THEN
		             A1X = L%A1X(I,J)   !(ALPHA**2-1)/(24.*L%DX)
			         A2X = L%A2X(I,J)   !3.*(9.-ALPHA**2)/(24.*L%DX)
			         DPDX = A1X*(L%M(IP1,J,1)-L%M(IM2,J,1))			&
							+A2X*(L%M(I,J,1)-L%M(IM1,J,1))
			         ZZ = L%Z(I,J,1)-L%DT*DPDX
				  ENDIF
				  IF (INTP.EQ.2) THEN
			         IM2 = IM1-1
                     PF = L%CF(I,J,1)*L%M(IM1+NN,J,1)				&
							+ L%CF(I,J,2)*L%M(I+NN,J,1)				&
							+ L%CF(I,J,3)*L%M(IP1+NN,J,1)			&
							+ L%CF(I,J,4)*L%M(IP2+NN,J,1)
                     PB = L%CB(I,J,1)*L%M(IM1-NN,J,1)				&
							+ L%CB(I,J,2)*L%M(I-NN,J,1)				&
							+ L%CB(I,J,3)*L%M(IP1-NN,J,1)			&
							+ L%CB(I,J,4)*L%M(IP2-NN,J,1)
			         DP = (PF-PB)
			         ZZ = L%Z(I,J,1)-L%DT/DXS*DP
			      ENDIF
			   ELSE
                  ZZ = L%Z(I,J,1)-RX*(L%M(I,J,1)-L%M(IM1,J,1))
			   ENDIF
			   IF (L%INI_SWITCH.EQ.3 .OR. L%INI_SWITCH.EQ.4) THEN
			      ZZ = ZZ-(L%HT(I,J,2)-L%HT(I,J,1))  
			   ENDIF
			   IF (ABS(ZZ) .LT. EPS) ZZ = ZERO
!			   IF (ABS(ZZ) .GT. UB) ZZ=SIGN(UB,ZZ)  
			   !DEPRESSION CANNOT BE LESS THAN BOTTOM ELEVATION
			   IF ( (ZZ+L%H(I,J)) .LE. ZERO ) ZZ = -L%H(I,J) 
               L%Z(I,:,2) = ZZ
		    ELSE
               L%Z(I,:,2) = 0.0
            ENDIF
         ENDDO
!!!$omp end parallel
      ENDIF

      RETURN
      END


!----------------------------------------------------------------------
      SUBROUTINE MOMT_S_D (L)
! ....SOLVE MOMENTUM EQUATION (LINEAR) IN SPHERICAL COORD.
!     LAYID = 1, OUTEST LAYER
!     OTHERWISE, INNER LAYER 
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) 	:: L
	  REAL MODSCM
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
      DATA TWLVTH/0.08333333333333/
	  DATA RAD/0.01745329252/
	  MODSCM = 0.0
!
      GRT = GRAV*L%DT

!.....DIMENSIONALITY INCLUDED IN THE COMPUTATION
      IDIM = 2   
!.....INTERPOLATION METHOD. 
!		1 - YOON2002; 
!		2 - LAGRANGE 4 POINTS (CUBIC)
      INTP = 2  

      IXM1 = L%NX-1
      JYM1 = L%NY-1
	  IS = 2
	  JS = 2
	  IF (L%ID .EQ. 1) THEN
	    IS = 1
		JS = 1
      END IF

!OMP 111025 1b
!!!$omp parallel
!!!$omp do private(I,IP1,J,JM1,JM2,JP1,JP2,HM,A,SHIFT,NN,DXS,&
!!!$omp DYS,IPN,IMN,NS,JPNN,JMNN,IP1PN,IM1PN,IP1MN,IM1MN,IP2PN,&
!!!$omp IP2MN,ALPHA,A1X,A2X,DZDX,TOT_N,R2,XM,GAMMA,DZFDX,DZBDX,&
!!!$omp SCM,ZMF,ZMB,DZMDX,ZUF,ZUB,ZLF,ZLB,DZUDX,DZLDX,ZADD)
      DO I=IS,IXM1
        IP1 = I+1
        DO J=JS,L%NY
          IF ((L%H(I,J).GT.GX) .AND. (L%H(IP1,J).GT.GX)) THEN
            JM1 = J-1
			JM2 = J-2
			JP1 = J+1
			JP2 = J+2
			IF (JM1 .LT. 1) JM1 = 1
			IF (JM2 .LT. 1) JM2 = 1
            IF (JP1 .GT. L%NY ) JP1 = L%NY
            IF (JP2 .GT. L%NY ) JP2 = L%NY

			HM = L%HP(I,J)
            A = L%ALPHA(I,J)
			SHIFT = 0.5*(A+1.0)
            NN = FLOOR(SHIFT)

			DXS = L%DX*RAD_MIN*L%ALPHA(I,J)
			DYS = L%DEL_Y(J)*RAD_MIN*L%ALPHA(I,J)

            IPN = I+NN
			IMN = I-NN

            NS = NINT(A)
			IF (NS.LT.1) NS = 1
			JPNN = J+NS
			JMNN = J-NS

			IP1PN = IP1+NN
			IM1PN = IM1+NN
			IP1MN = IP1-NN
			IM1MN = IM1-NN
			IP2PN = IP2+NN
			IP2MN = IP2-NN

		    IF (L%MASK(I,J) .EQ. 1) THEN
			   IF (INTP.EQ.1) THEN
		          ALPHA = L%ALPHA(I,J)
		          A1X = L%A1X(I,J) !(ALPHA**2-1)/(24.*L%DX)
			      A2X = L%A2X(I,J) !3.*(9.-ALPHA**2)/(24.*L%DX)
			      DZDX = A1X*(L%Z(I+2,J,2)-L%Z(I-1,J,2))			&
									+ A2X*(L%Z(I+1,J,2)-L%Z(I,J,2))
                  TOT_N = L%N(I,J,1) + L%N(IP1,J,1) + L%N(I,JM1,1)	&
									+ L%N(IP1,JM1,1)
				  R2 = L%R2(I,J)*DXS
                  XM = L%M(I,J,1)-R2*DZDX + L%R3(I,J)*TOT_N				  
			      IF (L%MODSCM .EQ. 0) THEN
			         IF (ALPHA .LT. 1.732) THEN
			            GAMMA = ALPHA**2
			            DZFDX = A1X*(L%Z(I+2,J+1,2)-L%Z(I-1,J+1,2))	&
								+A2X*(L%Z(I+1,J+1,2)-L%Z(I,J+1,2))
				        DZBDX = A1X*(L%Z(I+2,J-1,2)-L%Z(I-1,J-1,2))	&
								+A2X*(L%Z(I+1,J-1,2)-L%Z(I,J-1,2))
			         ELSE
			            GAMMA = ALPHA**2/4.0
			            DZFDX = A1X*(L%Z(I+2,J+2,2)-L%Z(I-1,J+2,2))	&
								+A2X*(L%Z(I+1,J+2,2)-L%Z(I,J+2,2))
				        DZBDX = A1X*(L%Z(I+2,J-2,2)-L%Z(I-1,J-2,2))	&
								+A2X*(L%Z(I+1,J-2,2)-L%Z(I,J-2,2))				     
				     ENDIF
			         SCM = GAMMA*R2*TWLVTH					&
											*(DZFDX-2*DZDX+DZBDX)
					 XM = XM - SCM
				  ENDIF
               ENDIF
			   
			   IF (INTP.EQ.2) THEN !4-PTS LAGRANGE INTERPOLATION
                  ZMF = L%CF(I,J,1)*L%Z(IM1PN,J,2)					&
						+ L%CF(I,J,2)*L%Z(IPN,J,2)					&
						+ L%CF(I,J,3)*L%Z(IP1PN,J,2)				&
						+ L%CF(I,J,4)*L%Z(IP2PN,J,2)
				  ZMB = L%CB(I,J,1)*L%Z(IM1MN,J,2)					&
						+ L%CB(I,J,2)*L%Z(IMN,J,2)					&
						+ L%CB(I,J,3)*L%Z(IP1MN,J,2)				&
						+ L%CB(I,J,4)*L%Z(IP2MN,J,2)
				  DZMDX = (ZMF-ZMB)
                  TOT_N = L%N(I,J,1)+L%N(IP1,J,1)+L%N(I,JM1,1)		&
													+L%N(IP1,JM1,1)
                  XM = L%M(I,J,1)-L%R2(I,J)*DZMDX + L%R3(I,J)*TOT_N		
				  IF (L%MODSCM .EQ. 0) THEN
                     ZUF = L%CF(I,J,1)*L%Z(IM1PN,JPNN,2)			&
							+ L%CF(I,J,2)*L%Z(IPN,JPNN,2)			&
							+ L%CF(I,J,3)*L%Z(IP1PN,JPNN,2)			&
							+ L%CF(I,J,4)*L%Z(IP2PN,JPNN,2)
				     ZUB = L%CB(I,J,1)*L%Z(IM1MN,JPNN,2)			&
							+ L%CB(I,J,2)*L%Z(IMN,JPNN,2)			&
							+ L%CB(I,J,3)*L%Z(IP1MN,JPNN,2)			&
							+ L%CB(I,J,4)*L%Z(IP2MN,JPNN,2)
                     ZLF = L%CF(I,J,1)*L%Z(IM1PN,JMNN,2)			&
							+ L%CF(I,J,2)*L%Z(IPN,JMNN,2)			&
							+ L%CF(I,J,3)*L%Z(IP1PN,JMNN,2)			&
							+ L%CF(I,J,4)*L%Z(IP2PN,JMNN,2)
				     ZLB = L%CB(I,J,1)*L%Z(IM1MN,JMNN,2)			&
							+ L%CB(I,J,2)*L%Z(IMN,JMNN,2)			&
							+ L%CB(I,J,3)*L%Z(IP1MN,JMNN,2)			&
							+ L%CB(I,J,4)*L%Z(IP2MN,JMNN,2)
				     DZUDX = (ZUF-ZUB)
				     DZLDX = (ZLF-ZLB)
				     ZADD = DZUDX-2.0*DZMDX+DZLDX
					 GAMMA = L%ALPHA(I,J)**2/(NS**2)
					 SCM = GAMMA*L%R2(I,J)*TWLVTH*ZADD
					 XM = XM - SCM
				  ENDIF
			   ENDIF			   
			ELSE
		       TOT_N = L%N(I,J,1) + L%N(IP1,J,1) + L%N(I,JM1,1)		&
												+ L%N(IP1,JM1,1)
               XM = L%M(I,J,1)-L%R2(I,J)*(L%Z(IP1,J,2)-L%Z(I,J,2))	&
											+L%R3(I,J)*TOT_N
			   IF (L%MODSCM .EQ. 0) THEN
			      SCM = L%R2(I,J)*TWLVTH*((L%Z(IP1,JP1,2)			&
							-2*L%Z(IP1,J,2)+L%Z(IP1,JM1,2))			&
							-(L%Z(I,JP1,2)-2*L%Z(I,J,2)				&
							+L%Z(I,JM1,2)))
                  XM = XM - SCM
               ENDIF
            ENDIF
            IF (ABS(XM) .LT. EPS) XM = ZERO
            L%M(I,J,2) = XM
          ELSE
		    L%M(I,J,2) = 0.0
		  ENDIF
        END DO
      END DO	  
!
!!!$omp barrier
!!!$omp do private(A,A1Y,A2Y,ALPHA,DXS,DYS,DZDY,DZUDY,DZLDY,DZMDY,&
!!!$omp DZRDY,ZADD,GAMMA,HN,I,IM1,IM2,IP1,IP2,J,JP1,IPNN,IMNN,JP1PN,&
!!!$omp JM1PN,JP1MN,JM1MN,JP2PN,JP2MN,JPN,JMN,MODSCM,NN,NS,R4,SHIFT,&
!!!$omp SCM,TOT_M,XN,ZMF,ZMB,ZRF,ZRB,ZLF,ZLB)
      DO J=JS,JYM1
        JP1 = J+1
        DO I=IS,L%NX
          IF ((L%H(I,J).GT.ZERO) .AND. (L%H(I,JP1).GT.ZERO)) THEN
            IP1 = I+1
		    IP2 = I+2
		    IM1 = I-1
		    IM2 = I-2
		    IF (IP1 .GE. L%NX) IP1 = L%NX
		    IF (IP2 .GE. L%NX) IP2 = L%NX
		    IF (IM1 .LE. 1) IM1 = 1
		    IF (IM2 .LE. 1) IM2 = 1
              
			HN = L%HQ(I,J)

            A = L%ALPHA(I,J)

			SHIFT = 0.5*(A+1.0)
            NN = FLOOR(SHIFT)

			DXS = L%DX*RAD_MIN*L%ALPHA(I,J)
			DYS = L%DEL_Y(J)*RAD_MIN*L%ALPHA(I,J)

            JPN = J+NN
			JMN = J-NN
			JP1PN = JP1+NN
			JM1PN = JM1+NN
			JP1MN = JP1-NN
			JM1MN = JM1-NN
			JP2PN = JP2+NN
			JP2MN = JP2-NN

            NS = NINT(A)
			IF (NS.LT.1) NS = 1
		    IPNN = I+NS
			IMNN = I-NS

            GAMMA = L%ALPHA(I,J)**2
			SCM = 0.0

		    IF (L%MASK(I,J) .EQ. 1) THEN
			   IF (INTP.EQ.1) THEN
		          ALPHA = L%ALPHA(I,J)
		          A1Y = L%A1Y(I,J) !(ALPHA**2-1)/(24.*L%DY)
			      A2Y = L%A2Y(I,J) !3.*(9.-ALPHA**2)/(24.*L%DY)
			      DZDY = A1Y*(L%Z(I,JP2,2)-L%Z(I,J-1,2))			&
						+A2Y*(L%Z(I,JP1,2)-L%Z(I,J,2))
                  TOT_M = L%M(IM1,J,1)+L%M(IM1,JP1,1)+L%M(I,J,1)	&
													+L%M(I,JP1,1)
												
				  R4 = L%R4(I,J)*DYS
                  XN = L%N(I,J,1)-R4*DZDY -L%R5(I,J)*TOT_M
			      IF (L%MODSCM .EQ. 0) THEN
			         IF (ALPHA .LT. 1.732) THEN
			            GAMMA = ALPHA**2
			            DZUDY = A1Y*(L%Z(IP1,JP2,2)-L%Z(IP1,JM1,2))	&
								+A2Y*(L%Z(IP1,JP1,2)-L%Z(IP1,J,2))
				        DZLDY = A1Y*(L%Z(IM1,JM2,2)-L%Z(IM1,JM1,2))	&
								+A2Y*(L%Z(IM1,JP1,2)-L%Z(IM1,J,2))
			         ELSE
			            GAMMA = ALPHA**2/4.0
			            DZUDY = A1Y*(L%Z(IP2,JP2,2)-L%Z(IP2,JM1,2))	&
								+A2Y*(L%Z(IP2,JP1,2)-L%Z(IP2,J,2))
				        DZLDY = A1Y*(L%Z(IM2,JP2,2)-L%Z(IM2,JM1,2))	&
								+A2Y*(L%Z(IM2,JP1,2)-L%Z(IM2,J,2))				     
				     ENDIF
			         MODSCM = GAMMA*R4*TWLVTH				&
											*(DZUDY-2*DZDY+DZLDY)
					 XN = XN - MODSCM
                  ENDIF
			   ENDIF

			   IF (INTP.EQ.2) THEN
                  ZMF = L%CF(I,J,1)*L%Z(I,JM1PN,2)					&
						+ L%CF(I,J,2)*L%Z(I,JPN,2)					&
						+ L%CF(I,J,3)*L%Z(I,JP1PN,2)				&
						+ L%CF(I,J,4)*L%Z(I,JP2PN,2)
				  ZMB = L%CB(I,J,1)*L%Z(I,JM1MN,2)					&
						+ L%CB(I,J,2)*L%Z(I,JMN,2)					&
						+ L%CB(I,J,3)*L%Z(I,JP1MN,2)				&
						+ L%CB(I,J,4)*L%Z(I,JP2MN,2)
				  DZMDY = (ZMF-ZMB)
                  TOT_M = L%M(IM1,J,1)+L%M(IM1,JP1,1)+L%M(I,J,1)	&
													+L%M(I,JP1,1)
                  XN = L%N(I,J,1)-L%R4(I,J)*DZMDY-L%R5(I,J)*TOT_M
				  IF (L%MODSCM.EQ.0) THEN
                     ZRF = L%CF(I,J,1)*L%Z(IPNN,JM1PN,2)			&
							+ L%CF(I,J,2)*L%Z(IPNN,JPN,2)			&
							+ L%CF(I,J,3)*L%Z(IPNN,JP1PN,2)			&
							+ L%CF(I,J,4)*L%Z(IPNN,JP2PN,2)
				     ZRB = L%CB(I,J,1)*L%Z(IPNN,JM1MN,2)			&
							+ L%CB(I,J,2)*L%Z(IPNN,JMN,2)			&
							+ L%CB(I,J,3)*L%Z(IPNN,JP1MN,2)			&
							+ L%CB(I,J,4)*L%Z(IPNN,JP2MN,2)
                     ZLF = L%CF(I,J,1)*L%Z(IMNN,JM1PN,2)			&
							+ L%CF(I,J,2)*L%Z(IMNN,JPN,2)			&
							+ L%CF(I,J,3)*L%Z(IMNN,JP1PN,2)			&
							+ L%CF(I,J,4)*L%Z(IMNN,JP2PN,2)
				     ZLB = L%CB(I,J,1)*L%Z(IMNN,JM1MN,2)			&
							+ L%CB(I,J,2)*L%Z(IMNN,JMN,2)			&
							+ L%CB(I,J,3)*L%Z(IMNN,JP1MN,2)			&
							+ L%CB(I,J,4)*L%Z(IMNN,JP2MN,2)

				     DZRDY = (ZRF-ZRB)
				     DZLDY = (ZLF-ZLB)
				     ZADD = DZRDY-2.0*DZMDY+DZLDY
					 GAMMA = L%ALPHA(I,J)**2/NS**2

					 SCM = GAMMA*L%R4(I,J)*TWLVTH*ZADD
					 XN = XN - SCM
				  ENDIF
			   ENDIF
			ELSE
               TOT_M = L%M(IM1,J,1)+L%M(IM1,JP1,1)+L%M(I,J,1)		&
												+L%M(I,JP1,1)
               XN = L%N(I,J,1)-L%R4(I,J)*(L%Z(I,JP1,2)-L%Z(I,J,2))	&
												-L%R5(I,J)*TOT_M
			   IF (L%MODSCM .EQ. 0) THEN
			      SCM = L%R4(I,J)*TWLVTH*((L%Z(IP1,JP1,2)			&
							-2*L%Z(I,JP1,2)+L%Z(IM1,JP1,2))			&
							-(L%Z(IP1,J,2)-2*L%Z(I,J,2)				&
							+L%Z(IM1,J,2)))	
				  XN = XN - SCM
               ENDIF
            ENDIF

            IF (ABS(XN) .LT. EPS) XN = ZERO
            L%N(I,J,2) = XN
          ELSE
		    L%N(I,J,2) = 0.0
		  ENDIF
        END DO
      END DO
!!!$omp end parallel
!
      RETURN
      END


!----------------------------------------------------------------------
      SUBROUTINE MOMT_C_D (L)
!.....SOLVE MOMENTUM EQUATION (LINEAR) IN CARTESIAN COORD. 
!     LAYID = 1, OUTEST LAYER
!     OTHERWISE, INNER LAYER 
!     SUBROUTINE DESIGNED TO INCCLUDE DISPERSION IN SWE
!     OPTION L%LAYGOV ==
!                   2, LINEAR EQUATION WITH DISPERSION CORRECTION
!                   3, NONLINEAR EQUATION WITH DISPERSION CORRECTION
!.....CREATED ON DEC 2007 (XIAOMING WANG, CORNELL UNIVERSITY)
!     UPDATED ON DEC 15, 2008 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) 	:: L
	  REAL SCM, GRX,GRY,FF,FM
	  REAL U(L%NX,L%NY),U0(L%NX,L%NY)  !0 MEANS VALUE AT TIME STEP N-1
	  REAL V(L%NX,L%NY),V0(L%NX,L%NY)
	  REAL W(L%NX,L%NY),W0(L%NX,L%NY)
	  REAL WX0(L%NX,L%NY),WY0(L%NX,L%NY)  !PQ AT CELL CORNERS
	  REAL WX(L%NX,L%NY),WY(L%NX,L%NY) !PQ AT CELL EDGES
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
      DATA TWLVTH/0.08333333333333/

	  SCM = 0.0
	  CONST = 0.5*L%DT*GRAV
	  FM = L%FRIC_COEF
	  FF = 0.0
      
	  DX = L%DX
	  DY = L%DY
	  DT = L%DT
	  GRT = GRAV*L%DT
	  RX = L%RX
	  RY = L%RY
	  GRX = L%GRX
	  GRY = L%GRY

!.....DIMENSIONALITY OF COMPUTATION. 1 - 1D; 2 - 2D
	  IDIM = 2
	  IF (IDIM .EQ. 1) L%N = 0.0
!.....INTERPOLATION METHOD. 
!		0 - USING FIXED GRIDS; 
!		1 - LINEAR; 
!		2 - LAGRANGE 4-POINTS (CUBIC)
	  INTP = 2
!.....CONTROL IF NONLINEAR TERMS USE HIDDEN GRIDS. 
!		0 - NO NONLINEAR;
!		1 - HIDDEN GRIDS, 
!		2 - FIXED GRIDS;
!		3 - FIXED GRIDS (V. COEF.)  
	  NL = 2  
!.....CONTROL IF 5TH-ORDER DERIVATIVES ARE SOLVED. 
!		0 - NO; 
!		1 - YES;	    
	  IT4 = 0    

      IF (L%LAYGOV.EQ.2) NL = 0
	  IF (L%LAYGOV.EQ.3) NL = 2

      IF (NL.NE.0) CALL UVW (U,U0,V,V0,WX,WY,WX0,WY0,L)
!
      IXM1 = L%NX-1
      JYM1 = L%NY-1
	  IF (L%ID .EQ. 1) THEN
	    IS = 1
		JS = 1
	  ELSE
	    IS = 2
		JS = 2
	  END IF

	  IF (IDIM.EQ.2) THEN
! MOMENTUM IN X DIRECTION
!OMP 111025 1b
!!!$omp parallel
!!!$omp do private(I,IP1,IP2,IM1,IM2,J,JM1,JM2,JP1,JP2,HM,FM,XQQ,FF,&
!!!$omp ALPHA,SHIFT,NN,DXS,DYS,BETA,B1,B2,IPN,IMN,NS,JPNN,JMNN,IP1PN,&
!!!$omp IM1PN,IP1MN,IM1MN,IP2PN,IP2MN,ISPANS,ISPANE,JSPANS,JSPANE,&
!!!$omp ZMF,ZMB,DZMDX,XM,ZADD,GAMMA,SCM,A1X,A2X,DZFDX,DZBDX,ZUF,ZUB,&
!!!$omp ZLF,ZLB,DZUDX,DZLDX,ZUUF,ZUUB,ZLLF,ZLLB,DZUUDX,DZLLDX,DUDX,&
!!!$omp DWYDY,VADD,WADD,FADD,UF,UB,WYF,WYB,UN,UN0,WU,WL,WOU,WOL,&
!!!$omp UADD,DZDX4,DZDX3F,DZDX3B,DZDX3T,DZDX2Y2,DZDXY2F,DZDXY2B,DZDXY2T,&
!!!$omp TERM1,TERM2,TERM3,TERM4)
      DO I=IS,IXM1
        IP1 = I+1
		IP2 = I+2
		IM1 = I-1
		IM2 = I-2
		IF (IP1 .GE. L%NX) IP1 = L%NX
		IF (IP2 .GE. L%NX) IP2 = L%NX
		IF (IM1 .LE. 1) IM1 = 1
		IF (IM2 .LE. 1) IM2 = 1
        DO J=JS,L%NY
          IF ((L%H(I,J).GT.GX) .AND. (L%H(IP1,J).GT.GX)) THEN
            JM1 = J-1
			JM2 = J-2
			JP1 = J+1
			JP2 = J+2
			IF (JM1 .LT. 1) JM1 = 1
			IF (JM2 .LT. 1) JM2 = 1
            IF (JP1 .GT. L%NY ) JP1 = L%NY
            IF (JP2 .GT. L%NY ) JP2 = L%NY
			HM = L%HP(I,J)+0.5*(L%Z(I,J,2)+L%Z(IP1,J,2))
            !USE BOTTOM FRICTION
			IF (L%FRIC_SWITCH.NE.1) THEN
			   IF (L%FRIC_SWITCH .EQ. 2) FM = L%FRIC_VCOEF(I,J)
			   XQQ = 0.25*(L%N(I,J,1)+L%N(IP1,J,1)+L%N(I,JM1,1)		&
												+L%N(IP1,JM1,1))
!			   DF = 0.5*(L%H(I,J)+L%H(IP1,J))
			   IF (HM.GE.1.0E-3) THEN
			      FF = CONST*FM*FM*SQRT(L%M(I,J,1)**2+XQQ**2)		&
									/HM**(2.3333333)
			   ELSE
			      FF = 0.0
			   ENDIF
            ENDIF !END OF APPLYING BOTTOM FRICTION


            ALPHA = L%ALPHA(I,J)
			SHIFT = 0.5*(ALPHA+1.0)
            NN = FLOOR(SHIFT)

			DXS = L%DX*ALPHA
			DYS = L%DY*ALPHA

            IF (NL.EQ.1) THEN
			   BETA = SHIFT - NN
			   B1 = (1.0-BETA)/DXS
			   B2 = BETA/DXS
			ENDIF

            IPN = I+NN
			IMN = I-NN

            NS = NINT(A)
			IF (NS.LT.1) NS = 1
			JPNN = J+NS
			JMNN = J-NS

			IP1PN = IP1+NN
			IM1PN = IM1+NN
			IP1MN = IP1-NN
			IM1MN = IM1-NN
			IP2PN = IP2+NN
			IP2MN = IP2-NN

			ISPANS = MAX(NN+5,10)
!*            ISPANS = 10
			ISPANE = L%NX-ISPANS
			JSPANS = ISPANS
			JSPANE = L%NY-JSPANS

		    IF (L%MASK(I,J) .EQ. 1) THEN
			   !CALCULATE DISPERSION CORRECTION
			   IF (INTP.EQ.0) THEN   !FIXED POINT MULTIPLIED BY COEF.
				  ZMF = L%CF(I,J,1)*L%Z(IM1PN,J,2)					&
						+ L%CF(I,J,2)*L%Z(IPN,J,2)					&
						+ L%CF(I,J,3)*L%Z(IP1PN,J,2)				&
						+ L%CF(I,J,4)*L%Z(IP2PN,J,2)
				  ZMB = L%CB(I,J,1)*L%Z(IM1MN,J,2)					&
						+ L%CB(I,J,2)*L%Z(IMN,J,2)					&
						+ L%CB(I,J,3)*L%Z(IP1MN,J,2)				&
						+ L%CB(I,J,4)*L%Z(IP2MN,J,2)
                  DZMDX = (ZMF-ZMB)
                  XM = (1.-FF)*L%M(I,J,1)-GRX/ALPHA*HM*DZMDX
				  IF (L%MODSCM .EQ. 0) THEN
					 !TERM TO CORRECT DIAGNAL DIFFERENTIATION
                     ZADD = ((L%Z(IP1,JP1,2)						&
								-2*L%Z(IP1,J,2)+L%Z(IP1,JM1,2))		&
								-(L%Z(I,JP1,2)-2*L%Z(I,J,2)			&
								+L%Z(I,JM1,2))) 
			         GAMMA = L%ALPHA(I,J)**2
					 SCM = GAMMA*GRX*TWLVTH*HM*ZADD
 			         XM = XM - SCM
				  ENDIF
			   ENDIF

			   IF (INTP.EQ.1) THEN  !YOON (2002) INTERPOLATION
		          A1X = L%A1X(I,J) !(ALPHA**2-1)/(24.*L%DX)
			      A2X = L%A2X(I,J) !3.*(9.-ALPHA**2)/(24.*L%DX)
			      DZMDX = A1X*(L%Z(I+2,J,2)-L%Z(I-1,J,2))			&
									+ A2X*(L%Z(I+1,J,2)-L%Z(I,J,2))
				  XM = (1.-FF)*L%M(I,J,1)-GRT*HM*DZMDX
				  IF (L%MODSCM .EQ. 0) THEN
			         IF (ALPHA .LT. 1.732) THEN
			            GAMMA = ALPHA**2
			            DZFDX = A1X*(L%Z(I+2,J+1,2)-L%Z(I-1,J+1,2))	&
								+A2X*(L%Z(I+1,J+1,2)-L%Z(I,J+1,2))
				        DZBDX = A1X*(L%Z(I+2,J-1,2)-L%Z(I-1,J-1,2))	&
								+A2X*(L%Z(I+1,J-1,2)-L%Z(I,J-1,2))
			         ELSE
			            GAMMA = ALPHA**2/4.0
			            DZFDX = A1X*(L%Z(I+2,J+2,2)-L%Z(I-1,J+2,2))	&
								+A2X*(L%Z(I+1,J+2,2)-L%Z(I,J+2,2))
				        DZBDX = A1X*(L%Z(I+2,J-2,2)-L%Z(I-1,J-2,2))	&
								+A2X*(L%Z(I+1,J-2,2)-L%Z(I,J-2,2))				     
				     ENDIF
			         SCM = GAMMA*GRT*HM*TWLVTH*(DZFDX-2*DZDX+DZBDX)
					 XM = XM - SCM
				  ENDIF
               ENDIF
			   
			   IF (INTP.EQ.2) THEN !4-PTS LAGRANGE INTERPOLATION
                  ZMF = L%CF(I,J,1)*L%Z(IM1PN,J,2)					&
						+ L%CF(I,J,2)*L%Z(IPN,J,2)					&
						+ L%CF(I,J,3)*L%Z(IP1PN,J,2)				&
						+ L%CF(I,J,4)*L%Z(IP2PN,J,2)
				  ZMB = L%CB(I,J,1)*L%Z(IM1MN,J,2)					&
						+ L%CB(I,J,2)*L%Z(IMN,J,2)					&
						+ L%CB(I,J,3)*L%Z(IP1MN,J,2)				&
						+ L%CB(I,J,4)*L%Z(IP2MN,J,2)
				  DZMDX = (ZMF-ZMB)
				  XM = (1.-FF)*L%M(I,J,1)-GRX/ALPHA*HM*DZMDX
				  IF (L%MODSCM .EQ. 0) THEN
                     ZUF = L%CF(I,J,1)*L%Z(IM1PN,JPNN,2)			&
							+ L%CF(I,J,2)*L%Z(IPN,JPNN,2)			&
							+ L%CF(I,J,3)*L%Z(IP1PN,JPNN,2)			&
							+ L%CF(I,J,4)*L%Z(IP2PN,JPNN,2)
				     ZUB = L%CB(I,J,1)*L%Z(IM1MN,JPNN,2)			&
							+ L%CB(I,J,2)*L%Z(IMN,JPNN,2)			&
							+ L%CB(I,J,3)*L%Z(IP1MN,JPNN,2)			&
							+ L%CB(I,J,4)*L%Z(IP2MN,JPNN,2)
                     ZLF = L%CF(I,J,1)*L%Z(IM1PN,JMNN,2)			&
							+ L%CF(I,J,2)*L%Z(IPN,JMNN,2)			&
							+ L%CF(I,J,3)*L%Z(IP1PN,JMNN,2)			&
							+ L%CF(I,J,4)*L%Z(IP2PN,JMNN,2)
				     ZLB = L%CB(I,J,1)*L%Z(IM1MN,JMNN,2)			&
							+ L%CB(I,J,2)*L%Z(IMN,JMNN,2)			&
							+ L%CB(I,J,3)*L%Z(IP1MN,JMNN,2)			&
							+ L%CB(I,J,4)*L%Z(IP2MN,JMNN,2)
				     DZUDX = (ZUF-ZUB)
				     DZLDX = (ZLF-ZLB)
				     ZADD = DZUDX-2.0*DZMDX+DZLDX
					 GAMMA = L%ALPHA(I,J)**2/(NS**2)
					 SCM = GAMMA*GRX/ALPHA*TWLVTH*HM*ZADD
 			         XM = XM - SCM
				  ENDIF
			   ENDIF

			   IF (INTP.EQ.3) THEN !4-PTS LAGRANGE INTERPOLATION TO O(DX^4)
                  ZMF = L%CF(I,J,1)*L%Z(IM1PN,J,2)					&
						+ L%CF(I,J,2)*L%Z(IPN,J,2)					&
						+ L%CF(I,J,3)*L%Z(IP1PN,J,2)				&
						+ L%CF(I,J,4)*L%Z(IP2PN,J,2)
				  ZMB = L%CB(I,J,1)*L%Z(IM1MN,J,2)					&
						+ L%CB(I,J,2)*L%Z(IMN,J,2)					&
						+ L%CB(I,J,3)*L%Z(IP1MN,J,2)				&
						+ L%CB(I,J,4)*L%Z(IP2MN,J,2)
				  DZMDX = (ZMF-ZMB)
				  XM = (1.-FF)*L%M(I,J,1)-GRX/ALPHA*HM*DZMDX
		  
				  IF (L%MODSCM .EQ. 0) THEN
                     ZUF = L%CF(I,J,1)*L%Z(IM1PN,JPNN,2)			&
							+ L%CF(I,J,2)*L%Z(IPN,JPNN,2)			&
							+ L%CF(I,J,3)*L%Z(IP1PN,JPNN,2)			&
							+ L%CF(I,J,4)*L%Z(IP2PN,JPNN,2)
				     ZUB = L%CB(I,J,1)*L%Z(IM1MN,JPNN,2)			&
							+ L%CB(I,J,2)*L%Z(IMN,JPNN,2)			&
							+ L%CB(I,J,3)*L%Z(IP1MN,JPNN,2)			&
							+ L%CB(I,J,4)*L%Z(IP2MN,JPNN,2)
                     ZLF = L%CF(I,J,1)*L%Z(IM1PN,JMNN,2)			&
							+ L%CF(I,J,2)*L%Z(IPN,JMNN,2)			&
							+ L%CF(I,J,3)*L%Z(IP1PN,JMNN,2)			&
							+ L%CF(I,J,4)*L%Z(IP2PN,JMNN,2)
				     ZLB = L%CB(I,J,1)*L%Z(IM1MN,JMNN,2)			&
							+ L%CB(I,J,2)*L%Z(IMN,JMNN,2)			&
							+ L%CB(I,J,3)*L%Z(IP1MN,JMNN,2)			&
							+ L%CB(I,J,4)*L%Z(IP2MN,JMNN,2)
                     ZUUF = L%CF(I,J,1)*L%Z(IM1PN,JPNN+NS,2)		&
							+ L%CF(I,J,2)*L%Z(IPN,JPNN+NS,2)		&
							+ L%CF(I,J,3)*L%Z(IP1PN,JPNN+NS,2)		&
							+ L%CF(I,J,4)*L%Z(IP2PN,JPNN+NS,2)
				     ZUUB = L%CB(I,J,1)*L%Z(IM1MN,JPNN+NS,2)		&
							+ L%CB(I,J,2)*L%Z(IMN,JPNN+NS,2)		&
							+ L%CB(I,J,3)*L%Z(IP1MN,JPNN+NS,2)		&
							+ L%CB(I,J,4)*L%Z(IP2MN,JPNN+NS,2)
                     ZLLF = L%CF(I,J,1)*L%Z(IM1PN,JMNN-NS,2)		&
							+ L%CF(I,J,2)*L%Z(IPN,JMNN-NS,2)		&
							+ L%CF(I,J,3)*L%Z(IP1PN,JMNN-NS,2)		&
							+ L%CF(I,J,4)*L%Z(IP2PN,JMNN-NS,2)
				     ZLLB = L%CB(I,J,1)*L%Z(IM1MN,JMNN-NS,2)		&
							+ L%CB(I,J,2)*L%Z(IMN,JMNN-NS,2)		&
							+ L%CB(I,J,3)*L%Z(IP1MN,JMNN-NS,2)		&
							+ L%CB(I,J,4)*L%Z(IP2MN,JMNN-NS,2)
				     DZUDX = (ZUF-ZUB)
				     DZLDX = (ZLF-ZLB)
					 DZUUDX = (ZUUF-ZUUB)
					 DZLLDX = (ZLLF-ZLLB)
				     ZADD = (-2.*DZUUDX+32.*DZUDX-60.0*DZMDX		&
										+32.*DZLDX-2.*DZLLDX)/24.
					 GAMMA = L%ALPHA(I,J)**2/(NS**2)
					 SCM = GAMMA*GRX/ALPHA*TWLVTH*HM*ZADD
 			         XM = XM - SCM
				  ENDIF
			   ENDIF

               !CALCULATE NONLINEAR TERMS AND NONLINEAR CORRECTIONS>>---
			   DUDX = 0.0
			   DWYDY = 0.0
			   VADD = 0.0
			   WADD = 0.0
			   FADD = 0.0
               IF (L%LAYGOV.EQ.3 .AND. L%MASK(I,J).EQ.1) THEN
				  IF (NL.EQ.0) THEN
				     DUDX = 0.0
					 DWYDY = 0.0
					 UADD = 0.0
					 WADD = 0.0 
				  ENDIF
			      IF (NL.EQ.1) THEN
			         UF = B1*U(IM1PN,J) + B2*U(IPN,J)
				     UB = B2*U(IM1MN,J) + B1*U(IMN,J)

				     WYF = B1*WY(I,JM1PN) + B2*WY(I,JPN)
				     WYB = B2*WY(I,JM1MN) + B1*WY(I,JMN)

                     UN = (B1*U(IPN,J)+B2*U(IP1PN,J))-(B2*U(IMN,J)	&
													+B1*U(IP1MN,J))
					 UN0 = (B1*U0(IM1PN,J)+B2*U0(IPN,J))			&
									-(B2*U0(IM1MN,J)+B1*U0(IMN,J))

                     WU = 0.5*((B1*W(IM1PN,J) + B2*W(IPN,J))		&
									+ (B1*W(I,JM1PN)+B2*W(I,JPN)))
				     WL = 0.5*((B1*W(IM1PN,JM1)+B2*W(IPN,JM1))		&
									+ (B2*W(I,JM1MN)+B1*W(I,JMN)))
				     W0U = 0.5*((B1*W0(IM1,JM1PN)+B2*W0(IM1,JPN))	&
								+ (B2*W0(IM1MN,J) + B1*W0(IMN,J)))
				     W0L = 0.5*((B2*W0(IM1,JM1MN)+B1*W0(IM1,JMN))	&
								+(B2*W0(IM1MN,JM1)+B1*W0(IMN,JM1)))

				     DUDX = (UF - UB)/DXS
				     DWYDY = (WYF - WYB)/DYS
				     UADD = (UN-UN0)/2.0/DXS
				     WADD = (WU-WL-W0U+W0L)/2.0/DYS
				  ENDIF
				  IF (NL.EQ.2) THEN
				     DUDX = (U(I,J)-U(IM1,J))/L%DX
					 DWYDY = (WY(I,J)-WY(I,JM1))/L%DY
					 UADD = (U(IP1,J)-U(I,J)-U0(I,J)+U0(IM1,J))		&
														/(2.0*L%DX)
					 WADD = (W(IP1,J)-W(IP1,JM1)-W0(I,J)+W0(I,JM1))	&
														/(2.0*L%DY)
				  ENDIF
			      IF (NL.EQ.3) THEN
				     IF (L%MODSCM .EQ. 1) A = 1.0
				     DUDX = (U(I,J)-U(IM1,J))/L%DX
					 DWYDY = (WY(I,J)-WY(I,JM1))/L%DY
					 UADD = (A*(U(IP1,J)-U(I,J))					&
								-(A-1.)*(U(I,J)-U(IM1,J))			&
								-(U0(I,J)-U0(IM1,J)))/(2.0*L%DX)
					 WADD = (A*(WY(IP1,J)-WY(IP1,JM1))				&
								-(A-1.)*(WY(I,J)-WY(I,JM1))			&
								-(WY0(I,J)-WY0(I,JM1)))/(2.0*L%DY)
				  ENDIF
                  XM = XM -L%DT*(DUDX+DWYDY) - L%DT*(UADD+WADD)
               ENDIF
			   !END OF NONLINEAR CALCULATION<<---
			   !CALCULATE 5TH-ORDER DERIVATIVES
			   IF (IT4.EQ.1) THEN
                  DZDX4 = ((L%Z(IP2,J,2)+L%Z(IM2,J,2))				&
								-4.*(L%Z(IP1,J,2)+L%Z(IM1,J,2))		&
								+6.*L%Z(I,J,2))/(L%DX**4)
			      DZDX3F = ((L%Z(IP2,J,2)-L%Z(IM2,J,2))				&
								-2.*(L%Z(IP1,J,2)-L%Z(IM1,J,2)))	&
								/(2.*L%DX**3)
			      DZDX3B = ((L%Z(IP2,J,1)-L%Z(IM2,J,1))				&
								-2.*(L%Z(IP1,J,1)-L%Z(IM1,J,1)))	&
								/(2.*L%DX**3)
				  DZDX3T = (DZDX3F - DZDX3B)/L%DT
				  DZDX2Y2 = (   (-2.*L%Z(IM2,JM1,2)					&
							+32.*L%Z(IM1,JM1,2)-60.*L%Z(I,JM1,2)	&
							+32.*L%Z(IP1,JM1,2)-2.*L%Z(IP2,JM1,2))	&
							-2.*(-2.*L%Z(IM2,J,2)+32.*L%Z(IM1,J,2)	&
							-60.*L%Z(I,J,2)+32.*L%Z(IP1,J,2)		&
							-2.*L%Z(IP2,J,2))+(-2.*L%Z(IM2,JP1,2)	&
							+32.*L%Z(IM1,JP1,2)-60.*L%Z(I,JP1,2)	&
							+32.*L%Z(IP1,JP1,2)-2.*L%Z(IP2,JP1,2))) &
							/(24.*L%DX**2*L%DY**2)

				  DZDXY2F = ((-2.*L%Z(IP1,JM2,2)+32.*L%Z(IP1,JM1,2)	&
							-60.*L%Z(IP1,J,2)+32.*L%Z(IP1,JP1,2)	&
							-2.*L%Z(IP1,JP2,2))-(-2.*L%Z(I,JM2,2)	&
							+32.*L%Z(I,JM1,2)-60.*L%Z(I,J,2)		&
							+32.*L%Z(I,JP1,2)-2.*L%Z(I,JP2,2)))		&
							/(24.*L%DX*L%DY**2)
				  DZDXY2B = ((-2.*L%Z(IP1,JM2,1)+32.*L%Z(IP1,JM1,1)	&
							-60.*L%Z(IP1,J,1)+32.*L%Z(IP1,JP1,1)	&
							-2.*L%Z(IP1,JP2,1))-(-2.*L%Z(I,JM2,1)	&
							+32.*L%Z(I,JM1,1)-60.*L%Z(I,J,1)		&
							+32.*L%Z(I,JP1,1)-2.*L%Z(I,JP2,1)))		&
							/(24.*L%DX*L%DY**2)
				  DZDXY2T = (DZDXY2F-DZDXY2B)/L%DT

				  TERM1 = (L%ALPHA(I,J)*L%DX)**3*DZDX4
				  TERM2 = (L%ALPHA(I,J)*L%DX)**2*L%DT*DZDX3T
				  TERM3 = -(L%ALPHA(I,J)*L%DX)*(L%DT**2)*(DZDX4+DZDX2Y2)
				  TERM4 = -(L%DT**3)*(DZDXY2T+DZDX3T)
				  FADD = -(HM*(TERM1+TERM2)+HM**2*(TERM3+TERM4))/48.

				  XM = XM - L%DT*FADD
			   ENDIF
			   !END OF CALCULATING 5TH-ORDER DERIVATIVES
			ELSE
			   XM = (1.-FF)*L%M(I,J,1)-GRX*HM*(L%Z(IP1,J,2)-L%Z(I,J,2))
			   IF (L%MODSCM .EQ. 0) THEN
			      SCM = GRX*TWLVTH*HM*((L%Z(IP1,JP1,2)			&
								-2*L%Z(IP1,J,2)+L%Z(IP1,JM1,2))		&
								-(L%Z(I,JP1,2)-2*L%Z(I,J,2)			&
								+L%Z(I,JM1,2)))
                  XM = XM - SCM
			   ENDIF
            ENDIF

            !USE BOTTOM FRICTION
			IF (L%FRIC_SWITCH.NE.1) XM = XM/(1.+FF)

            IF (ABS(XM) .LT. EPS) XM = ZERO
            L%M(I,J,2) = XM
          END IF
        END DO
      END DO
!!!$omp barrier
!!!$omp do private(J,JP1,JP2,JM1,JM2,I,IM1,IM2,IP1,IP2,HN,FM,XPP,FF,&
!!!$omp ALPHA,SHIFT,NN,DXS,DYS,BETA,B1,B2,JPN,JMN,JP1PN,JM1PN,JP1MN,&
!!!$omp JM1MN,JP2PN,JP2MN,NS,IPNN,IMNN,GAMMA,SCM,ZMF,ZMB,DZMDY,XN,ZADD,&
!!!$omp A1Y,A2Y,DZDY,DZUDY,DZLDY,ZRF,ZRB,ZLF,ZLB,DZRDY,ZRRF,ZRRB,ZLLF,&
!!!$omp ZLLB,DZRRDY,DZLLDY,DVDY,DWXDXM,VADD,WADD,FADD,VF,VB,WXF,WXB,&
!!!$omp VN,VN0,WR,WL,W0R,W0L,DWXDX,DVDX,DZDY4,DZDY3F,DZDY3B,DZDY3T,DZDX2Y2,&
!!!$omp DZDX2YF,DZDX2YB,DZDX2YT,TERM1,TERM2,TERM3,TERM4)
      DO J=JS,JYM1
        JP1 = J+1
		JP2 = J+2
		JM1 = J-1
		JM2 = J-2
		IF (JP1 .GE. L%NY) JP1 = L%NY
		IF (JP2 .GE. L%NY) JP2 = L%NY
		IF (JM1 .LE. 1) JM1 = 1
		IF (JM2 .LE. 1) JM2 = 1
        DO I=IS,L%NX
          IF ((L%H(I,J).GT.GX) .AND. (L%H(I,JP1).GT.GX)) THEN
            IM1 = I-1
			IM2 = I-2
			IP1 = I+1
			IP2 = I+2
			IF (IM1 .LT. 1) IM1 = 1
			IF (IM2 .LT. 1) IM2 = 1
            IF (IP1 .GE. L%NX) IP1 = L%NX
			IF (IP2 .GE. L%NX) IP2 = L%NX
			
			!WATER DEPTH AT DISCHARGE LOCATION P
			HN = 0.5*(L%H(I,J)+L%H(I,JP1)+L%Z(I,J,2)+L%Z(I,JP1,2)) 
            !USE BOTTOM FRICTION
			IF (L%FRIC_SWITCH.NE.1) THEN
			   IF (L%FRIC_SWITCH .EQ. 2) FM = L%FRIC_VCOEF(I,J)
			   XPP = 0.25*(L%M(I,J,1)+L%M(I,JP1,1)+L%M(IM1,J,1)		&
												+L%M(IM1,JP1,1))
!			   DF = 0.5*(L%H(I,J)+L%H(I,JP1))
			   IF (HN.GE.1.0E-5) THEN
			      FF = CONST*FM*FM*SQRT(L%N(I,J,1)**2+XPP**2)		&
									/HN**(2.3333333)
			   ELSE
			      FF = 0.0
			   ENDIF
            ENDIF !END OF APPLYING BOTTOM FRICTION

            ALPHA = L%ALPHA(I,J)
			SHIFT = 0.5*(ALPHA+1.0)
            NN = FLOOR(SHIFT)

			DXS = L%DX*L%ALPHA(I,J)
			DYS = L%DY*L%ALPHA(I,J)

            IF (NL.EQ.1) THEN
			   BETA = SHIFT - NN
			   B1 = (1.0-BETA)/DYS
			   B2 = BETA/DYS
			ENDIF

            JPN = J+NN
			JMN = J-NN
			JP1PN = JP1+NN
			JM1PN = JM1+NN
			JP1MN = JP1-NN
			JM1MN = JM1-NN
			JP2PN = JP2+NN
			JP2MN = JP2-NN

            NS = NINT(A)
			IF (NS.LT.1) NS = 1
		    IPNN = I+NS
			IMNN = I-NS


            GAMMA = L%ALPHA(I,J)**2
			SCM = 0.0
		    IF (L%MASK(I,J) .EQ. 1) THEN
               !CALCULATE DISPERSION CORRECTIONS
			   IF (INTP.EQ.0) THEN
				  ZMF = L%CF(I,J,1)*L%Z(I,JM1PN,2)					&
						+ L%CF(I,J,2)*L%Z(I,JPN,2)					&
						+ L%CF(I,J,3)*L%Z(I,JP1PN,2)				&
						+ L%CF(I,J,4)*L%Z(I,JP2PN,2)
				  ZMB = L%CB(I,J,1)*L%Z(I,JM1MN,2)					&
						+ L%CB(I,J,2)*L%Z(I,JMN,2)					&
						+ L%CB(I,J,3)*L%Z(I,JP1MN,2)				&
						+ L%CB(I,J,4)*L%Z(I,JP2MN,2)
                  DZMDY = (ZMF-ZMB)
                  XN = (1.-FF)*L%N(I,J,1)-GRY/ALPHA*HN*DZMDY
				  IF (L%MODSCM.EQ.0) THEN
				     ZADD = 1./L%DY*((L%Z(IP1,JP1,2)-2*L%Z(I,JP1,2)	&
									+L%Z(IM1,JP1,2))-(L%Z(IP1,J,2)	&
									-2*L%Z(I,J,2)+L%Z(IM1,J,2)))
					 GAMMA = L%ALPHA(I,J)**2
					 SCM = GAMMA*GRY*TWLVTH*HN*ZADD
 			         XN = XN - SCM
				  ENDIF
			   ENDIF

			   IF (INTP.EQ.1) THEN
		          A1Y = L%A1Y(I,J) !(ALPHA**2-1)/(24.*L%DY)
			      A2Y = L%A2Y(I,J) !3.*(9.-ALPHA**2)/(24.*L%DY)
			      DZDY = A1Y*(L%Z(I,JP2,2)-L%Z(I,J-1,2))			&
						+A2Y*(L%Z(I,JP1,2)-L%Z(I,J,2))
                  XN = (1.-FF)*L%N(I,J,1)-GRT*HN*DZDY
			      IF (L%MODSCM .EQ. 0) THEN
			         IF (ALPHA .LT. 1.732) THEN
			            GAMMA = ALPHA**2
			            DZUDY = A1Y*(L%Z(IP1,JP2,2)-L%Z(IP1,JM1,2))	&
								+A2Y*(L%Z(IP1,JP1,2)-L%Z(IP1,J,2))
				        DZLDY = A1Y*(L%Z(IM1,JM2,2)-L%Z(IM1,JM1,2))	&
								+A2Y*(L%Z(IM1,JP1,2)-L%Z(IM1,J,2))
			         ELSE
			            GAMMA = ALPHA**2/4.0
			            DZUDY = A1Y*(L%Z(IP2,JP2,2)-L%Z(IP2,JM1,2))	&
								+A2Y*(L%Z(IP2,JP1,2)-L%Z(IP2,J,2))
				        DZLDY = A1Y*(L%Z(IM2,JP2,2)-L%Z(IM2,JM1,2))	&
								+A2Y*(L%Z(IM2,JP1,2)-L%Z(IM2,J,2))				     
				     ENDIF
			         SCM = GAMMA*GRT*HN*TWLVTH					&
											*(DZUDY-2*DZDY+DZLDY)
					 XN = XN - SCM
                  ENDIF
			   ENDIF

			   IF (INTP.EQ.2) THEN
                  ZMF = L%CF(I,J,1)*L%Z(I,JM1PN,2)					&
						+ L%CF(I,J,2)*L%Z(I,JPN,2)					&
						+ L%CF(I,J,3)*L%Z(I,JP1PN,2)				&
						+ L%CF(I,J,4)*L%Z(I,JP2PN,2)
				  ZMB = L%CB(I,J,1)*L%Z(I,JM1MN,2)					&
						+ L%CB(I,J,2)*L%Z(I,JMN,2)					&
						+ L%CB(I,J,3)*L%Z(I,JP1MN,2)				&
						+ L%CB(I,J,4)*L%Z(I,JP2MN,2)
				  DZMDY = (ZMF-ZMB)
				  XN = (1.-FF)*L%N(I,J,1)-GRY/ALPHA*HN*DZMDY
				  IF (L%MODSCM.EQ.0) THEN
                     ZRF = L%CF(I,J,1)*L%Z(IPNN,JM1PN,2)			&
							+ L%CF(I,J,2)*L%Z(IPNN,JPN,2)			&
							+ L%CF(I,J,3)*L%Z(IPNN,JP1PN,2)			&
							+ L%CF(I,J,4)*L%Z(IPNN,JP2PN,2)
				     ZRB = L%CB(I,J,1)*L%Z(IPNN,JM1MN,2)			&
							+ L%CB(I,J,2)*L%Z(IPNN,JMN,2)			&
							+ L%CB(I,J,3)*L%Z(IPNN,JP1MN,2)			&
							+ L%CB(I,J,4)*L%Z(IPNN,JP2MN,2)
                     ZLF = L%CF(I,J,1)*L%Z(IMNN,JM1PN,2)			&
							+ L%CF(I,J,2)*L%Z(IMNN,JPN,2)			&
							+ L%CF(I,J,3)*L%Z(IMNN,JP1PN,2)			&
							+ L%CF(I,J,4)*L%Z(IMNN,JP2PN,2)
				     ZLB = L%CB(I,J,1)*L%Z(IMNN,JM1MN,2)			&
							+ L%CB(I,J,2)*L%Z(IMNN,JMN,2)			&
							+ L%CB(I,J,3)*L%Z(IMNN,JP1MN,2)			&
							+ L%CB(I,J,4)*L%Z(IMNN,JP2MN,2)
                     
				     DZRDY = (ZRF-ZRB)
				     DZLDY = (ZLF-ZLB)
				     ZADD = DZRDY-2.0*DZMDY+DZLDY
					 GAMMA = L%ALPHA(I,J)**2/NS**2
					 SCM = GAMMA*GRY*TWLVTH*HN*ZADD
 			         XN = XN - SCM
				  ENDIF
			   ENDIF

			   IF (INTP.EQ.3) THEN
                  ZMF = L%CF(I,J,1)*L%Z(I,JM1PN,2)					&
							+ L%CF(I,J,2)*L%Z(I,JPN,2)				&
							+ L%CF(I,J,3)*L%Z(I,JP1PN,2)			&
							+ L%CF(I,J,4)*L%Z(I,JP2PN,2)
				  ZMB = L%CB(I,J,1)*L%Z(I,JM1MN,2)					&
							+ L%CB(I,J,2)*L%Z(I,JMN,2)				&
							+ L%CB(I,J,3)*L%Z(I,JP1MN,2)			&
							+ L%CB(I,J,4)*L%Z(I,JP2MN,2)
				  DZMDY = (ZMF-ZMB)
				  XN = (1.-FF)*L%N(I,J,1)-GRY/ALPHA*HN*DZMDY
				  IF (L%MODSCM.EQ.0) THEN
                     ZRF = L%CF(I,J,1)*L%Z(IPNN,JM1PN,2)			&
							+ L%CF(I,J,2)*L%Z(IPNN,JPN,2)			&
							+ L%CF(I,J,3)*L%Z(IPNN,JP1PN,2)			&
							+ L%CF(I,J,4)*L%Z(IPNN,JP2PN,2)
				     ZRB = L%CB(I,J,1)*L%Z(IPNN,JM1MN,2)			&
							+ L%CB(I,J,2)*L%Z(IPNN,JMN,2)			&
							+ L%CB(I,J,3)*L%Z(IPNN,JP1MN,2)			&
							+ L%CB(I,J,4)*L%Z(IPNN,JP2MN,2)
                     ZRRF = L%CF(I,J,1)*L%Z(IPNN+NS,JM1PN,2)		&
							+ L%CF(I,J,2)*L%Z(IPNN+NS,JPN,2)		&
							+ L%CF(I,J,3)*L%Z(IPNN+NS,JP1PN,2)		&
							+ L%CF(I,J,4)*L%Z(IPNN+NS,JP2PN,2)
				     ZRRB = L%CB(I,J,1)*L%Z(IPNN+NS,JM1MN,2)		&
							+ L%CB(I,J,2)*L%Z(IPNN+NS,JMN,2)		&
							+ L%CB(I,J,3)*L%Z(IPNN+NS,JP1MN,2)		&
							+ L%CB(I,J,4)*L%Z(IPNN+NS,JP2MN,2)
                     ZLF = L%CF(I,J,1)*L%Z(IMNN,JM1PN,2)			&
							+ L%CF(I,J,2)*L%Z(IMNN,JPN,2)			&
							+ L%CF(I,J,3)*L%Z(IMNN,JP1PN,2)			&
							+ L%CF(I,J,4)*L%Z(IMNN,JP2PN,2)
				     ZLB = L%CB(I,J,1)*L%Z(IMNN,JM1MN,2)			&
							+ L%CB(I,J,2)*L%Z(IMNN,JMN,2)			&
							+ L%CB(I,J,3)*L%Z(IMNN,JP1MN,2)			&
							+ L%CB(I,J,4)*L%Z(IMNN,JP2MN,2)
                     ZLLF = L%CF(I,J,1)*L%Z(IMNN-NS,JM1PN,2)		&
							+ L%CF(I,J,2)*L%Z(IMNN-NS,JPN,2)		&
							+ L%CF(I,J,3)*L%Z(IMNN-NS,JP1PN,2)		&
							+ L%CF(I,J,4)*L%Z(IMNN-NS,JP2PN,2)
				     ZLLB = L%CB(I,J,1)*L%Z(IMNN-NS,JM1MN,2)		&
							+ L%CB(I,J,2)*L%Z(IMNN-NS,JMN,2)		&
							+ L%CB(I,J,3)*L%Z(IMNN-NS,JP1MN,2)		&
							+ L%CB(I,J,4)*L%Z(IMNN-NS,JP2MN,2)

				     DZRDY = (ZRF-ZRB)
				     DZLDY = (ZLF-ZLB)
				     DZRRDY = (ZRRF-ZRRB)
				     DZLLDY = (ZLLF-ZLLB)
				     ZADD = (-2.*DZRRDY+32.*DZRDY-60.*DZMDY			&
										+32.*DZLDY-2.*DZLLDY)/24.
					 GAMMA = L%ALPHA(I,J)**2/NS**2
					 SCM = GAMMA*GRY*TWLVTH*HN*ZADD
 			         XN = XN - SCM
				  ENDIF
			   ENDIF

			   !START TO CALCULATING NONLINEAR TERMS
			   DVDY = 0.0
			   DWXDX = 0.0
			   VADD = 0.0
			   WADD = 0.0
			   FADD = 0.0
			   IF (L%LAYGOV.EQ.3 .AND. L%MASK(I,J).EQ.1) THEN
			      IF (NL.EQ.1) THEN
			         VF = B1*V(I,JM1PN) + B2*V(I,JPN)
				     VB = B2*V(I,JM1MN) + B1*V(I,JMN)

				     WXF = B1*WX(IM1PN,J) + B2*WX(IPN,J)
				     WXB = B2*WX(IM1MN,J) + B1*WX(IMN,J)

                     VN  = (B1*V(I,JPN)+B2*V(I,JP1PN))				&
									- (B2*V(I,JMN)+B1*V(I,JP1MN))
					 VN0 = (B1*V0(I,JM1PN)+B2*V0(I,JPN))			&
									- (B2*V0(I,JM1MN)+B1*V0(I,JMN))

                     WR  = 0.5*((B1*W(I,JM1PN) + B2*W(I,JPN))		&
									+ (B1*W(IM1PN,J)+B2*W(IPN,J)))
				     WL  = 0.5*((B1*W(IM1,JM1PN)+B2*W(IM1,JPN))		&
									+ (B2*W(IM1MN,J)+B1*W(IMN,J)))
				     W0R = 0.5*((B1*W0(IM1PN,JM1)+B2*W0(IPN,JM1))	&
								+ (B2*W0(IM1MN,J) + B1*W0(IMN,J)))
				     W0L = 0.5*((B2*W0(IM1MN,JM1)+B1*W0(IMN,JM1))	&
								+ (B2*W0(IM1,JM1MN)+B1*W0(IM1,JMN)))

				     DVDY = (VF - VB)/DYS
				     DWXDX = (WXF - WXB)/DXS
				     VADD = (VN-VN0)/2.0/DXS
				     WADD = (WR-WL-W0R+W0L)/2.0/DXS
				  ENDIF

				  IF (NL.EQ.2) THEN
				     DVDY = (V(I,J)-V(I,JM1))/L%DY
					 DWXDX = (WX(I,J)-WX(IM1,J))/L%DX
					 VADD = (V(I,JP1)-V(I,J)-V0(I,J)+V0(I,JM1))		&
														/(2.0*L%DY)
					 WADD = (W(I,JP1)-W(IM1,JP1)-W0(I,J)+W0(IM1,J))	&
														/(2.0*L%DX)
				  ENDIF
				  IF (NL.EQ.3) THEN
				     IF (L%MODSCM .EQ. 1) A = 1.0
				     DVDY = (V(I,J)-V(I,JM1))/L%DY
					 DWXDX = (WX(I,J)-WX(IM1,J))/L%DX
					 VADD = (A*(V(I,JP1)-V(I,J))					&
								-(A-1.)*(V(I,J)-V(I,JM1))			&
								-(V0(I,J)-V0(I,JM1)))/(2.0*L%DY)
					 WADD = (A*(WX(I,JP1)-WX(IM1,JP1))				&
								-(A-1.)*(WX(I,J)-WX(IM1,J))			&
								-(WX0(I,J)-WX0(IM1,J)))/(2.0*L%DX)
				  ENDIF
				  IF (NL.EQ.0) THEN
				     DVDX = 0.0
					 DWXDX = 0.0
					 VADD = 0.0
					 WADD = 0.0 
				  ENDIF
                  XN = XN - L%DT*(DVDY+DWXDX) -L%DT*(VADD+WADD)
               ENDIF

			   !END OF CALCULATING NONLINEAR TERMS
			   !CALCULATING 5TH-ORDER DERIVATIVES
			   IF (IT4.EQ.1) THEN
                     DZDY4 = ((L%Z(I,JP2,2)+L%Z(I,JM2,2))			&
								-4.*(L%Z(I,JP1,2)+L%Z(I,JM1,2))		&
								+6.*L%Z(I,J,2))/(L%DY**4)
					 DZDY3F = ((L%Z(I,JP2,2)-L%Z(I,JM2,2))			&
								-2.*(L%Z(I,JP1,2)-L%Z(I,JM1,2)))	&
								/(2.*L%DY**3)
					 DZDY3B = ((L%Z(I,JP2,1)-L%Z(I,JM2,1))			&
								-2.*(L%Z(I,JP1,1)-L%Z(I,JM1,1)))	&
								/(2.*L%DY**3)
					 DZDY3T = (DZDY3F - DZDY3B)/L%DT
					 DZDX2Y2 = (   (-2.*L%Z(IM1,JM2,2)				&
							+32.*L%Z(IM1,JM1,2)-60.*L%Z(IM1,J,2)	&
							+32.*L%Z(IM1,JP1,2)-2.*L%Z(IM1,JP2,2))	&
							-2.*(-2.*L%Z(I,JM2,2)+32.*L%Z(I,JM1,2)	&
							-60.*L%Z(I,J,2)+32.*L%Z(I,JP1,2)		&
							-2.*L%Z(I,JP2,2))+(-2.*L%Z(IP1,JM2,2)	&
							+32.*L%Z(IP1,JM1,2)-60.*L%Z(IP1,J,2)	&
							+32.*L%Z(IP1,JP1,2)-2.*L%Z(IP1,JP2,2))) &
							/(24.*L%DX**2*L%DY**2)

					 DZDX2YF = ((-2.*L%Z(IM2,JP1,2)					&
							+32.*L%Z(IM1,JP1,2)-60.*L%Z(I,JP1,2)	&
							+32.*L%Z(IP1,JP1,2)-2.*L%Z(IP2,JP1,2))	&
					        -(-2.*L%Z(IM2,J,2)+32.*L%Z(IM1,J,2)		&
							-60.*L%Z(I,J,2)+32.*L%Z(IP1,J,2)		&
							-2.*L%Z(IP2,J,2)))/(24.*L%DX**2*L%DY)
					 DZDX2YB = ((-2.*L%Z(IM2,JP1,1)					&
							+32.*L%Z(IM1,JP1,1)-60.*L%Z(I,JP1,1)	&
							+32.*L%Z(IP1,JP1,1)-2.*L%Z(IP2,JP1,1))	&
					        -(-2.*L%Z(IM2,J,1)+32.*L%Z(IM1,J,1)		&
							-60.*L%Z(I,J,1)+32.*L%Z(IP1,J,1)		&
							-2.*L%Z(IP2,J,1)))/(24.*L%DX**2*L%DY)
					 DZDX2YT = (DZDX2YF-DZDX2YB)/L%DT

					 TERM1 = (L%ALPHA(I,J)*L%DY)**3*DZDY4
					 TERM2 = (L%ALPHA(I,J)*L%DY)**2*L%DT*DZDY3T
					 TERM3 = -(L%ALPHA(I,J)*L%DY)*(L%DT**2)			&
													*(DZDY4+DZDX2Y2)
					 TERM4 = -(L%DT**3)*(DZDX2YT+DZDY3T)
					 FADD = -(HN*(TERM1+TERM2)+HN**2*(TERM3+TERM4))/48.

					 XN = XN - L%DT*FADD
			   ENDIF
			   !END OF CALCULATING 5TH-ORDER DERIVATIVES                    
			ELSE
			   XN = (1.-FF)*L%N(I,J,1)-GRY*HN*(L%Z(I,JP1,2)-L%Z(I,J,2))
			   IF (L%MODSCM .EQ. 0) THEN
			      SCM = GRY*TWLVTH*HN*((L%Z(IP1,JP1,2)			&
							-2*L%Z(I,JP1,2)+L%Z(IM1,JP1,2))			&
							-(L%Z(IP1,J,2)-2*L%Z(I,J,2)+L%Z(IM1,J,2)))
                  XN = XN - SCM
			   ENDIF
            ENDIF
!           !USE BOTTOM FRICTION            
            IF (L%FRIC_SWITCH.NE.1) XN = XN/(1.0+FF)
            IF (ABS(XN) .LT. EPS) XN = ZERO
            L%N(I,J,2) = XN
          END IF
        END DO
      END DO
!!!$omp end parallel		 
	  ENDIF

	  IF (IDIM.EQ.1) THEN
	     J = FLOOR(L%NY/2.0)
	     IXM1 = L%NX-1
	     IF (L%ID .EQ. 1) THEN
	       IS = 1
	     ELSE
	       IS = 2
	     END IF
!OMP 111025 1b
!!!$omp parallel
!!!$omp do private(I,IP1,IP2,IM1,IM2,HM,A,SHIFT,NN,DXS,BETA,B1,B2,IPN,IMN,&
!!!$omp NS,IP1PN,IM1PN,IP1MN,IM1MN,IP2PN,IP2MN,SCM,ZX1,ZX2,ZX3,Z1,Z2,ZADD,&
!!!$omp A1X,A2X,DZMDX,XM,ZMF,ZMB,DUDX,UADD,DZDX)
         DO I=IS,IXM1
            IP1 = I+1
		    IP2 = I+2
		    IM1 = I-1
		    IM2 = I-2
		    IF (IP1 .GE. L%NX) IP1 = L%NX
		    IF (IP2 .GE. L%NX) IP2 = L%NX
		    IF (IM1 .LE. 1) IM1 = 1
		    IF (IM2 .LE. 1) IM2 = 1
            IF ((L%H(I,J).GT.GX) .AND. (L%H(IP1,J).GT.GX)) THEN
               HM = L%HP(I,J)+0.5*(L%Z(I,J,2)+L%Z(IP1,J,2))
               A = L%ALPHA(I,J)
			   SHIFT = 0.5*(A+1.0)
               NN = FLOOR(SHIFT)

			   DXS = L%DX*L%ALPHA(I,J)
               IF (INTP.EQ.1) THEN
			      BETA = SHIFT - NN
			      B1 = (1.0-BETA)/DXS
			      B2 = BETA/DXS
			   ENDIF

               IPN = I+NN
			   IMN = I-NN

               NS = NINT(A)
			   IF (NS.LT.1) NS = 1

			   IP1PN = IP1+NN
			   IM1PN = IM1+NN
			   IP1MN = IP1-NN
			   IM1MN = IM1-NN
			   IP2PN = IP2+NN
			   IP2MN = IP2-NN

			   SCM = 0.0
			   ZX1 = 0.0
			   ZX2 = 0.0
			   ZX3 = 0.0
			   Z1 = 0.0
			   Z2 = 0.0
			   ZADD = 0.0
			   IF (L%MASK(I,J) .EQ. 1) THEN
			      IF (INTP.EQ.1) THEN  !YOON (2002) INTERPOLATION
		             A1X = L%A1X(I,J) !(ALPHA**2-1)/(24.*L%DX)
			         A2X = L%A2X(I,J) !3.*(9.-ALPHA**2)/(24.*L%DX)
			         DZMDX = A1X*(L%Z(I+2,J,2)-L%Z(I-1,J,2))		&
									+ A2X*(L%Z(I+1,J,2)-L%Z(I,J,2))
				     XM = (1.-FF)*L%M(I,J,1)-GRT*HM*DZMDX
				     IF (L%MODSCM .EQ. 0) THEN
						SCM = 0.0
					    XM = XM - SCM
				     ENDIF
                  ENDIF

			      IF (INTP.EQ.2) THEN !4-PTS LAGRANGE INTERPOLATION
                     ZMF = L%CF(I,J,1)*L%Z(IM1PN,J,2)				&
								+ L%CF(I,J,2)*L%Z(IPN,J,2)			&
								+ L%CF(I,J,3)*L%Z(IP1PN,J,2)		&
								+ L%CF(I,J,4)*L%Z(IP2PN,J,2)
				     ZMB = L%CB(I,J,1)*L%Z(IM1MN,J,2)				&
								+ L%CB(I,J,2)*L%Z(IMN,J,2)			&
								+ L%CB(I,J,3)*L%Z(IP1MN,J,2)		&
								+ L%CB(I,J,4)*L%Z(IP2MN,J,2)
				     DZMDX = (ZMF-ZMB)
				     XM = (1.-FF)*L%M(I,J,1)-GRX/ALPHA*HM*DZMDX
				     IF (L%MODSCM .EQ. 0) THEN
					    SCM = 0.0
 			            XM = XM - SCM
				     ENDIF
			      ENDIF

				 ! COMPUTE NONLINEAR CONVECTION TERMS				     
				  IF (NL.EQ.2) THEN
					 DUDX = (U(I,J)-U(IM1,J))/L%DX
                     UADD = ((U(IP1,J)-U(I,J))						&
									-(U0(I,J)-U0(IM1,J)))/(2.0*L%DX)
					 XM = XM -L%DT*(DUDX) - L%DT*(UADD)
			      ENDIF
               ELSE
				  DZDX = (L%Z(IP1,J,2)-L%Z(I,J,2))/L%DX
			      XM = L%M(I,J,1)-GRT*HM*DZDX
				  IF (L%MODSCM .EQ. 0) THEN
					 SCM = 0.0
 			         XM = XM - SCM
				  ENDIF	
				  DUDX = (U(I,J)-U(IM1,J))/L%DX
				  UADD = ((U(IP1,J)-U(I,J))							&
									-(U0(I,J)-U0(IM1,J)))/(2.0*L%DX)			  
                  XM = XM -L%DT*(DUDX) - L%DT*(UADD)
			   ENDIF
            ELSE
			   XM = 0.0
			ENDIF
			IF (ABS(XM) .LT. EPS) XM = ZERO
            L%M(I,:,2) = XM
	     ENDDO
!!!$omp end parallel			
	  ENDIF

!
      RETURN
      END




!----------------------------------------------------------------------
      SUBROUTINE DPDX_DISP (L,DPDX,DQDY,I,J)	!<= NOT BE USED
! ....SOLVE CONTINUITY EQUATION (LINEAR) IN CARTESIAN COORD. 
!     LAYID = 1, OUTEST LAYER
!     OTHERWISE, INNER LAYER 
!
!NOTES: 
!	  #. ADD SUPPORT FOR DX\=DY (FOR HIGH-LATITUDE, 05/04/2007)
!            RX = L%R
!            RY = L%DT/L%DY

!     SUBROUTINE DESIGNED TO INCCLUDE DISPERSION IN SWE
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) 	:: L
	  REAL ALPHA, DPDX, DQDY, A1, A2
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
      DATA UB/99.0/

!*	  RX = L%RX
!*	  RY = L%RY
!*	  GRT = L%DT*GRAV
	  
!.....DIMENSIONALITY INCLUDED IN THE COMPUTATION
!*      IDIM = 2   
!.....INTERPOLATION METHOD. 
!		1 - YOON2002; 
!		2 - LAGRANGE 4 POINTS (CUBIC)
      INTP = 2   

!
!*      IS = 2
!*      JS = 2
!*	  IF(L%ID .EQ. 1)THEN  !OUTTEST LAYER				 
!*	    IE = L%NX -1
!*	    JE = L%NY -1
!*	  ELSE				  ! INNER LAYER
!*	    IE = L%NX
!*	    JE = L%NY
!*	  ENDIF

!*      IF (IDIM.EQ.2) THEN
!*      DO J=JS,JE
        JM1 = J-1
		JM2 = J-2
		JP1 = J+1
		JP2 = J+2
		IF (JM1.LE.1) JM1 = 1
		IF (JM2.LE.1) JM2 = 1
		IF (JP1.GE.L%NY) JP1 = L%NY
		IF (JP2.GE.L%NY) JP2 = L%NY
!*        DO I=IS,IE
		  IM1 = I-1
		  IM2 = I-2
		  IP1 = I+1
		  IP2 = I+2
		  IF (IM1.LE.1) IM1 = 1
		  IF (IM2.LE.1) IM2 = 1
		  IF (IP1.GE.L%NX) IP1 = L%NX
		  IF (IP2.GE.L%NX) IP2 = L%NX

		    IF (L%MASK(I,J).EQ.1) THEN
			   IF (INTP.EQ.1) THEN
		          A1X = L%A1X(I,J)   !(ALPHA**2-1)/(24.*L%DX)
			      A1Y = L%A1Y(I,J)
			      A2X = L%A2X(I,J)   !3.*(9.-ALPHA**2)/(24.*L%DX)
			      A2Y = L%A2Y(I,J)
			      DPDX = A1X*(L%M(IP1,J,1)-L%M(IM2,J,1))			&
							+A2X*(L%M(I,J,1)-L%M(IM1,J,1))
                  DQDY = A1Y*(L%N(I,JP1,1)-L%N(I,JM2,1))			&
							+A2Y*(L%N(I,J,1)-L%N(I,JM1,1))
			   ENDIF
			   IF  (INTP.EQ.2) THEN
				  A = L%ALPHA(I,J)
			      SHIFT = 0.5*(A+1.0)
                  NN = FLOOR(SHIFT)

		          DXS = L%DX*L%ALPHA(I,J)
			      DYS = L%DY*L%ALPHA(I,J)

                  PF = L%CF(I,J,1)*L%M(IM1+NN,J,1)					&
						+ L%CF(I,J,2)*L%M(I+NN,J,1)					&
						+ L%CF(I,J,3)*L%M(IP1+NN,J,1)				&
						+ L%CF(I,J,4)*L%M(IP2+NN,J,1)
                  PB = L%CB(I,J,1)*L%M(IM1-NN,J,1)					&
						+ L%CB(I,J,2)*L%M(I-NN,J,1)					&
						+ L%CB(I,J,3)*L%M(IP1-NN,J,1)				&
						+ L%CB(I,J,4)*L%M(IP2-NN,J,1)
				  QF = L%CF(I,J,1)*L%N(I,JM1+NN,1)					&
						+ L%CF(I,J,2)*L%N(I,J+NN,1)					&
						+ L%CF(I,J,3)*L%N(I,JP1+NN,1)				&
						+ L%CF(I,J,4)*L%N(I,JP2+NN,1)
				  QB = L%CB(I,J,1)*L%N(I,JM1-NN,1)					&
						+ L%CB(I,J,2)*L%N(I,J-NN,1)					&
						+ L%CB(I,J,3)*L%N(I,JP1-NN,1)				&
						+ L%CB(I,J,4)*L%N(I,JP2-NN,1)
				  DP = (PF-PB)
			      DQ = (QF-QB)
				  DPDX = DP/DXS
				  DQDY = DQ/DYS
			   ENDIF
			ENDIF
      RETURN
      END

!----------------------------------------------------------------------
      SUBROUTINE DZDX_DISP (L,DZDX,I,J)	!<= NOT BE USED
! ....SOLVE CONTINUITY EQUATION (LINEAR) IN CARTESIAN COORD. 
!     LAYID = 1, OUTEST LAYER
!     OTHERWISE, INNER LAYER 
!
!NOTES: 
!	  #. ADD SUPPORT FOR DX\=DY (FOR HIGH-LATITUDE, 05/04/2007)
!            RX = L%R
!            RY = L%DT/L%DY

!     SUBROUTINE DESIGNED TO INCCLUDE DISPERSION IN SWE
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) 	:: L
	  REAL ALPHA, DPDX, DQDY, A1, A2
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
      DATA UB/99.0/

!*	  RX = L%RX
!*	  RY = L%RY
!*	  GRT = L%DT*GRAV
	  
!.....DIMENSIONALITY INCLUDED IN THE COMPUTATION
!*      IDIM = 2   
!.....INTERPOLATION METHOD. 
!		1 - YOON2002; 
!		2 - LAGRANGE 4 POINTS (CUBIC)
      INTP = 2   

!
!*      IS = 2
!*      JS = 2
!*	  IF(L%ID .EQ. 1)THEN  !OUTTEST LAYER				 
!*	    IE = L%NX -1
!*	    JE = L%NY -1
!*	  ELSE				  ! INNER LAYER
!*	    IE = L%NX
!*	    JE = L%NY
!*	  ENDIF

!*      IF (IDIM.EQ.2) THEN
!*      DO J=JS,JE
        JM1 = J-1
		JM2 = J-2
		JP1 = J+1
		JP2 = J+2
		IF (JM1.LE.1) JM1 = 1
		IF (JM2.LE.1) JM2 = 1
		IF (JP1.GE.L%NY) JP1 = L%NY
		IF (JP2.GE.L%NY) JP2 = L%NY
!*        DO I=IS,IE
		  IM1 = I-1
		  IM2 = I-2
		  IP1 = I+1
		  IP2 = I+2
		  IF (IM1.LE.1) IM1 = 1
		  IF (IM2.LE.1) IM2 = 1
		  IF (IP1.GE.L%NX) IP1 = L%NX
		  IF (IP2.GE.L%NX) IP2 = L%NX

!*          IF (L%H(I,J) .GT. GX) THEN



		    IF (L%MASK(I,J).EQ.1) THEN
			   IF (INTP.EQ.1) THEN
		          A1X = L%A1X(I,J) !(ALPHA**2-1)/(24.*L%DX)
			      A2X = L%A2X(I,J) !3.*(9.-ALPHA**2)/(24.*L%DX)
			      DZDX = A1X*(L%Z(I+2,J,2)-L%Z(I-1,J,2))			&
									+ A2X*(L%Z(I+1,J,2)-L%Z(I,J,2))
			   ENDIF
			   IF  (INTP.EQ.2) THEN
                  A = L%ALPHA(I,J)
			      SHIFT = 0.5*(A+1.0)
                  NN = FLOOR(SHIFT)

                  IPN = I+NN
			      IMN = I-NN

                  NS = NINT(A)
			      IF (NS.LT.1) NS = 1
			      JPNN = J+NS
			      JMNN = J-NS

			      IP1PN = IP1+NN
			      IM1PN = IM1+NN
			      IP1MN = IP1-NN
			      IM1MN = IM1-NN
			      IP2PN = IP2+NN
			      IP2MN = IP2-NN

		          DXS = L%DX*L%ALPHA(I,J)
                  ZMF = L%CF(I,J,1)*L%Z(IM1PN,J,2)					&
						+ L%CF(I,J,2)*L%Z(IPN,J,2)					&
						+ L%CF(I,J,3)*L%Z(IP1PN,J,2)				&
						+ L%CF(I,J,4)*L%Z(IP2PN,J,2)
				  ZMB = L%CB(I,J,1)*L%Z(IM1MN,J,2)					&
						+ L%CB(I,J,2)*L%Z(IMN,J,2)					&
						+ L%CB(I,J,3)*L%Z(IP1MN,J,2)				&
						+ L%CB(I,J,4)*L%Z(IP2MN,J,2)
				  DZDX = (ZMF-ZMB)/DXS
			   ENDIF
			ENDIF

      RETURN
      END


!----------------------------------------------------------------------
      SUBROUTINE DZDY_DISP (L,DZDY,I,J) !<= NOT BE USED
! ....SOLVE CONTINUITY EQUATION (LINEAR) IN CARTESIAN COORD. 
!     LAYID = 1, OUTEST LAYER
!     OTHERWISE, INNER LAYER 
!
!NOTES: 
!	  #. ADD SUPPORT FOR DX\=DY (FOR HIGH-LATITUDE, 05/04/2007)
!            RX = L%R
!            RY = L%DT/L%DY

!     SUBROUTINE DESIGNED TO INCCLUDE DISPERSION IN SWE
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) 	:: L
	  REAL ALPHA, DPDX, DQDY, A1, A2
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
      DATA UB/99.0/

!*	  RX = L%RX
!*	  RY = L%RY
!*	  GRT = L%DT*GRAV
	  
!.....DIMENSIONALITY INCLUDED IN THE COMPUTATION
!*      IDIM = 2   
!.....INTERPOLATION METHOD. 
!		1 - YOON2002; 
!		2 - LAGRANGE 4 POINTS (CUBIC)
      INTP = 2  

!
!*      IS = 2
!*      JS = 2
!*	  IF(L%ID .EQ. 1)THEN  !OUTTEST LAYER				 
!*	    IE = L%NX -1
!*	    JE = L%NY -1
!*	  ELSE				  ! INNER LAYER
!*	    IE = L%NX
!*	    JE = L%NY
!*	  ENDIF

!*      IF (IDIM.EQ.2) THEN
!*      DO J=JS,JE
        JM1 = J-1
		JM2 = J-2
		JP1 = J+1
		JP2 = J+2
		IF (JM1.LE.1) JM1 = 1
		IF (JM2.LE.1) JM2 = 1
		IF (JP1.GE.L%NY) JP1 = L%NY
		IF (JP2.GE.L%NY) JP2 = L%NY
!*        DO I=IS,IE
		  IM1 = I-1
		  IM2 = I-2
		  IP1 = I+1
		  IP2 = I+2
		  IF (IM1.LE.1) IM1 = 1
		  IF (IM2.LE.1) IM2 = 1
		  IF (IP1.GE.L%NX) IP1 = L%NX
		  IF (IP2.GE.L%NX) IP2 = L%NX

!*          IF (L%H(I,J) .GT. GX) THEN

		    IF (L%MASK(I,J).EQ.1) THEN
			   IF (INTP.EQ.1) THEN
		          A1Y = L%A1Y(I,J) !(ALPHA**2-1)/(24.*L%DY)
			      A2Y = L%A2Y(I,J) !3.*(9.-ALPHA**2)/(24.*L%DY)
			      DZDY = A1Y*(L%Z(I,JP2,2)-L%Z(I,J-1,2))			&
						+A2Y*(L%Z(I,JP1,2)-L%Z(I,J,2))
			   ENDIF
			   IF (INTP.EQ.2) THEN
                  A = L%ALPHA(I,J)
			      SHIFT = 0.5*(A+1.0)
                  NN = FLOOR(SHIFT)

                  JPN = J+NN
			      JMN = J-NN
			      JP1PN = JP1+NN
			      JM1PN = JM1+NN
			      JP1MN = JP1-NN
			      JM1MN = JM1-NN
			      JP2PN = JP2+NN
			      JP2MN = JP2-NN

                  NS = NINT(A)
			      IF (NS.LT.1) NS = 1
		          IPNN = I+NS
			      IMNN = I-NS

			      DYS = L%DY*L%ALPHA(I,J)
                  ZMF = L%CF(I,J,1)*L%Z(I,JM1PN,2)					&
						+ L%CF(I,J,2)*L%Z(I,JPN,2)					&
						+ L%CF(I,J,3)*L%Z(I,JP1PN,2)				&
						+ L%CF(I,J,4)*L%Z(I,JP2PN,2)
				  ZMB = L%CB(I,J,1)*L%Z(I,JM1MN,2)					&
						+ L%CB(I,J,2)*L%Z(I,JMN,2)					&
						+ L%CB(I,J,3)*L%Z(I,JP1MN,2)				&
						+ L%CB(I,J,4)*L%Z(I,JP2MN,2)
				  DZDY = (ZMF-ZMB)/DYS
			   ENDIF
			ENDIF

      RETURN
      END


!----------------------------------------------------------------------
      SUBROUTINE HOT_START (LO,LA,START_TYPE,START_STEP)
!     HOT START FUNCTION
!     START_TYPE:
!          = 0: SAVE RESUMING SNAPSHOTS
!          = 1: LOAD RESUMING DATA FROM ONLY FIRST-LEVEL GRIDS (LAYER1)
!          = 2: LOAD RESUMING DATA FROM ALL GRIDS
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  TYPE (LAYER)  :: LO
	  TYPE (LAYER), DIMENSION(NUM_GRID)  :: LA
	  INTEGER       :: START_TYPE,START_STEP,SWITCH
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

	  CALL HOTSTART_DATA (LO,START_TYPE,START_STEP)
	  IF (START_TYPE .NE. 1) THEN
	     DO I = 1,NUM_GRID
	        IF (LA(I)%LAYSWITCH .EQ. 0) CALL HOTSTART_DATA (LA(I),	&
											START_TYPE,START_STEP)
		 ENDDO
      ENDIF

	  RETURN
	  END


!----------------------------------------------------------------------
      SUBROUTINE HOTSTART_DATA (LO,START_TYPE,START_STEP)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  TYPE (LAYER)  :: LO
	  INTEGER       :: START_TYPE,START_STEP,SWITCH
	  INTEGER IOSTAT
      CHARACTER(LEN=36) FNAME1,FNAME2,FNAME3,FNAME4
	  CHARACTER(LEN=36) FNAME5,FNAME6
	  CHARACTER(LEN=36) FNAME10,FNAME11
	  CHARACTER(LEN=36) FNAME12  !130904
      
	  LAYID = LO%ID
	  IF ( LAYID .EQ. 1) THEN
	     IS = 1
	     IE = LO%NX
	     JS = 1
	     JE = LO%NY
	  ELSE
	     IS = 2
		 JS = 2
		 IE = LO%NX
		 JE = LO%NY
	  ENDIF

      WRITE (FNAME1,1) LAYID,START_STEP
 1    FORMAT('./hotstart/z1_',I2.2,'_',I7.7,'.dat') ! 150430
!      WRITE (FNAME2,2) LAYID,START_STEP
! 2    FORMAT('./hotstart/Z2_',I2.2,'_',I7.7,'.dat')
      WRITE (FNAME3,3) LAYID,START_STEP
 3    FORMAT('./hotstart/m1_',I2.2,'_',I7.7,'.dat') ! 150430
!      WRITE (FNAME4,4) LAYID,START_STEP
! 4    FORMAT('./hotstart/m2_',I2.2,'_',I7.7,'.dat')
      WRITE (FNAME5,5) LAYID,START_STEP
 5    FORMAT('./hotstart/n1_',I2.2,'_',I7.7,'.dat') ! 150430
!      WRITE (FNAME6,6) LAYID,START_STEP
! 6    FORMAT('./hotstart/n2_',I2.2,'_',I7.7,'.dat')
      WRITE (FNAME10,10) LAYID,START_STEP
 10   FORMAT('./hotstart/zmax1_',I2.2,'_',I7.7,'.dat') ! 150430
      WRITE (FNAME11,11) LAYID,START_STEP
 11   FORMAT('./hotstart/zmin1_',I2.2,'_',I7.7,'.dat') ! 150430
      WRITE (FNAME12,12) LAYID,START_STEP  !130904
 12   FORMAT('./hotstart/h1_',I2.2,'_',I7.7,'.dat') ! 150430
!  ----- OUTPUT DATA FOR FUTURE HOT START -----------
!! OUTPUT WATER SURFACE DISPLACEMENT DATA Z
      IF (START_TYPE .EQ. 0) THEN
         OPEN (25,FILE=FNAME1,STATUS='UNKNOWN')
         DO J = JS,JE
!            WRITE (25,'(10F12.5)') (LO%Z(I,J,1),I=IS,IE)
            WRITE (25,*) LO%Z(:,J,1) !150612
         ENDDO
         CLOSE (25)
!! OUTPUT FLUX DATA IN X DIRECTION
         OPEN (25,FILE=FNAME3,STATUS='UNKNOWN')
         DO J = JS,JE
!            WRITE (25,'(10F12.5)') (LO%M(I,J,1),I=IS,IE)
			WRITE (25,*) LO%M(:,J,1)  !150612
         ENDDO
         CLOSE (25)
!! OUTPUT FLUX DATA IN Y DIRECTION
         OPEN (25,FILE=FNAME5,STATUS='UNKNOWN')
         DO J = JS,JE
!           WRITE (25,'(10F12.5)') (LO%N(I,J,1),I=IS,IE)
           WRITE (25,*) LO%N(:,J,1) !150612
         ENDDO
         CLOSE (25)
!! OUTPUT MAXIMUM SURFACE ELEVATION DATA
         OPEN (25,FILE=FNAME10,STATUS='UNKNOWN')
         DO J = JS,JE
!           WRITE (25,'(10F12.5)') (LO%Z_MAX(I,J),I=IS,IE)
			WRITE (25,*) LO%Z_MAX(:,J) !150612
         ENDDO
         CLOSE (25)
!! OUTPUT MAXIMUM SURFACE DEPRESSION DATA
         OPEN (25,FILE=FNAME11,STATUS='UNKNOWN')
         DO J = JS,JE
!           WRITE (25,'(10F12.5)') (LO%Z_MIN(I,J),I=IS,IE)
           WRITE (25,*) LO%Z_MIN(:,J) !150612
         ENDDO
         CLOSE (25)
!! OUTPUT DEPTH DATA  130904
		 IF (LO%FRIC_SWITCH .EQ.3 ) THEN
            OPEN (25,FILE=FNAME12,STATUS='UNKNOWN')
            DO J = JS,JE
!               WRITE (25,'(10F12.5)') (LO%H(I,J),I=IS,IE)
               WRITE (25,*) LO%H(:,J) !150612
            ENDDO
            CLOSE (25)
	     ENDIF
	  ELSE
!------- LOAD DATA FOR HOT START ------------------------------------
!! LOAD WATER SURFACE DISPLACEMENT DATA FOR HOT START
         OPEN (UNIT=25,FILE=FNAME1,STATUS='OLD',IOSTAT=ISTAT,		&
												FORM='FORMATTED')
         IF (ISTAT /= 0) THEN
            PRINT *,"WARNING:: HOTSTART CAN'T OPEN Z FILE; USE ZEROS INSTEAD."
			LO%Z(:,:,1) = 0.0
         ELSE
            DO J = JS,JE
!				READ (25,'(10F12.5)') (LO%Z(I,J,1),I=IS,IE) 
				READ (25,*) LO%Z(:,J,1) !150612
            ENDDO
			LO%Z(:,:,2)=LO%Z(:,:,1) !130904 �u�O���F�j�p������1:1���p����ϰ��X�ɦ���
		 ENDIF         
         CLOSE (25)         
!! LOAD VOLUME FLUX DATA IN X DIRECTION FOR HOT START
		 OPEN (UNIT=25,FILE=FNAME3,STATUS='OLD',IOSTAT=ISTAT,		&
												FORM='FORMATTED')
         IF (ISTAT /= 0) THEN
            PRINT *,"WARNING:: HOTSTART CAN'T OPEN P FILE; USE ZEROS INSTEAD."
			LO%M(:,:,1) = 0.0
         ELSE
            DO J = JS,JE
!               READ (25,'(10F12.5)') (LO%M(I,J,1),I=IS,IE) 
				READ (25,*) LO%M(:,J,1) !150612
            ENDDO
			LO%M(:,:,2)=LO%M(:,:,1) !130904 �u�O���F�j�p������1:1���p����ϰ��X�ɦ���
		 ENDIF
         CLOSE (25)
!! LOAD VOLUME FLUX DATA IN Y DIRECTION FOR HOT START
		 OPEN (UNIT=25,FILE=FNAME5,STATUS='OLD',IOSTAT=ISTAT,		&
												FORM='FORMATTED')
         IF (ISTAT /= 0) THEN
            PRINT *,"WARNING:: HOTSTART CAN'T OPEN Q FILE; USE ZEROS INSTEAD."
			LO%N(:,:,1) = 0.0
         ELSE
            DO J = JS,JE
!               READ (25,'(10F12.5)') (LO%N(I,J,1),I=IS,IE)
               READ (25,*) LO%N(:,J,1) !150612
            ENDDO
            LO%N(:,:,2)=LO%N(:,:,1) !130904 �u�O���F�j�p������1:1���p����ϰ��X�ɦ���
		 ENDIF
         CLOSE (25)
!! LOAD MAXIMUM SURFACE ELEVATION DATA FOR HOT START
		 OPEN (UNIT=25,FILE=FNAME10,STATUS='OLD',IOSTAT=ISTAT,		&
												FORM='FORMATTED')
         IF (ISTAT /= 0) THEN
            PRINT *,"WARNING:: HOTSTART CAN'T OPEN ZMAX FILE; USE ZEROS INSTEAD."
			LO%Z_MAX(:,:) = 0.0
         ELSE
            DO J = JS,JE
!               READ (25,'(10F12.5)') (LO%Z_MAX(I,J),I=IS,IE)
				READ (25,*) LO%Z_MAX(:,J) !150612
            ENDDO
		 ENDIF
         CLOSE (25)
!! LOAD MAXIMUM SURFACE DEPRESSION DATA FOR HOT START
		 OPEN (UNIT=25,FILE=FNAME11,STATUS='OLD',IOSTAT=ISTAT,		&
												FORM='FORMATTED')
         IF (ISTAT /= 0) THEN
            PRINT *,"WARNING:: HOTSTART CAN'T OPEN ZMIN FILE; USE ZEROS INSTEAD."
			LO%Z_MIN(:,:) = 0.0
         ELSE
            DO J = JS,JE
!               READ (25,'(10F12.5)') (LO%Z_MIN(I,J),I=IS,IE)
				READ (25,*) LO%Z_MIN(:,J) !150612
            ENDDO
		 ENDIF
         CLOSE (25)
!! LOAD DEPTH DATA FOR HOT START 130904
		 IF (LO%FRIC_SWITCH .EQ.3 ) THEN

		 OPEN (UNIT=25,FILE=FNAME12,STATUS='OLD',IOSTAT=ISTAT,		&
												FORM='FORMATTED')
         IF (ISTAT /= 0) THEN
            PRINT *,"WARNING:: HOTSTART CAN'T OPEN H FILE"
			stop
         ELSE
            DO J = JS,JE
!               READ (25,'(10F12.5)') (LO%H(I,J),I=IS,IE)
               READ (25,*) LO%H(:,J) !150612
            ENDDO
		 ENDIF
         CLOSE (25)

		 ENDIF
	  ENDIF

      RETURN
	  END



!----------------------------------------------------------------------
!     SUBROUTINE READ_CONFIG (LO,LA,TEND,TMIN_INV,INI_SURF,           &
      SUBROUTINE READ_CONFIG (LO,LA,TEND,INI_SURF,                    &
	                         WAVE_INFO,FAULT_INFO,LANDSLIDE_INFO,     &
							 BCI_INFO,START_TYPE,START_TIME,BC_TYPE,  &
							 OUT_OPT,JOB,BACKUP_TIME)
!......................................................................
!DESCRIPTION:
!	  #. OBTAIN ALL THE PARAMETERS FROM COMCOT.CTL;
!	  #. START_TYPE = 
!				0: COLD START (SIMULATION STARTS FROM T = 0)
!				1: HOT START (SIMULATION STARTS FROM RESUMING TIME)
!				20: COLD START WITH TIDE LEVEL ADJUSTMENT
!				21: HOT START WITH TIDE LEVEL ADJUSTMENT
!	  #. INI_SURF = 
!				0: USE FAULT MODEL TO DETERMINE SEAFLOOR DEFORMATION
!				1: USE DATA FILE TO DETERMINE INITIAL WATER SURFACE
!				2: USE INCIDENT WAVE MODEL TO GENERATE WAVES
!				3: USE TRANSIENT FLOOR MOTION MODEL (LANDSLIDE);
!				4: USE FAULT MODEL + LANDSLIDE;
!				   FAULT_MULTI.CTL IS REQUIRED FOR MULTI-FAULT SETUP;
!				9: USE MANSINHA AND SMYLIES' MODEL TO CALC DEFORMATION
!INPUT:
!	  #. COMCOT.CTL (AND FAULT_MULTI.CTL FOR MORE THAN ONE FAULT PLANE)
!OUTPUT:
!	  #. GENERAL INFORMAITON FOR A SIMULATION;
!     #. GRID SETUP;
!NOTES:
!     #. CREATED INITIALLY BY TOM LOGAN, ARSC (2005)
!     #. MODIFIED BY XIAOMING WANG (SEP 2005)
!     #. UPDATED ON SEP17 2006 (XIAOMING WANG, CORNELL UNIV.)
!     #. UPDATED ON NOV 21 2008 (XIAOMING WANG, GNS)
!     #. UPDATED ON DEC 22 2008 (XIAOMING WANG, GNS)
!	  #. UPDATED ON JAN05 2009 (XIAOMING WANG, GNS)
!	  #. UPDATED ON APR03 2009 (XIAOMING WANG)
!		 1. IMPROVE COUPLING SCHEME BETWEEN SPHERICAL AND CARTESIAN
!	  #. UPDATED ON APR09 2009 (XIAOMING WANG, GNS)
!		 1. ADD SUPPORT ON IMPORTING MULTIPLE FAULT PLANE PARAMETERS 
!			FROM A DATA FILE;
!-------------------------------------------------------------------------	
	  USE LAYER_PARAMS
	  USE WAVE_PARAMS
	  USE FAULT_PARAMS
	  USE LANDSLIDE_PARAMS
	  USE BCI_PARAMS
      TYPE (LAYER)						:: LO
	  TYPE (LAYER), DIMENSION(NUM_GRID)	:: LA
	  TYPE (WAVE)						:: WAVE_INFO
	  TYPE (FAULT),DIMENSION(NUM_FLT)		:: FAULT_INFO
	  TYPE (LANDSLIDE)					:: LANDSLIDE_INFO
	  TYPE (BCI)						:: BCI_INFO
      INTEGER		   :: INI_SURF
	  !REAL 		       :: TEND, TMIN_INV, FM, DT, H_LIMIT, START_TIME
      REAL 		       :: TEND, FM, DT, H_LIMIT, START_TIME
	  REAL		       :: ARC
      INTEGER 	       :: I,J,K, LAYNUM,STAT,POS,PARENT
	  INTEGER          :: COUNT
	  INTEGER          :: BC_TYPE
	  INTEGER          :: OUT_OPT
	  INTEGER          :: START_TYPE,START_STEP
	  CHARACTER(LEN=200)    :: LINE,LINE1,LINE2,LINE3
	  CHARACTER(LEN=200)    :: DUMP,TMP,TMPNAME,FNAME
	  CHARACTER(LEN=200)	:: JOB

	  LOGICAL alive                   ! 111118
      REAL             :: BACKUP_TIME ! 130904
	  
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

      ! mkdir
      INQUIRE(FILE='layer/.',exist=alive) ! 111118
      IF (alive .EQV. .false.) THEN
        CALL SYSTEM('mkdir -p ./layer')
      ENDIF
      
	  INQUIRE(FILE='zamp/.',exist=alive) ! 111118
      IF (alive .EQV. .false.) THEN
        CALL SYSTEM('mkdir -p ./zamp')
      ENDIF
     
      INQUIRE(FILE='z/.',exist=alive) ! 111118
      IF (alive .EQV. .false.) THEN
        CALL SYSTEM('mkdir -p ./z')
      ENDIF
	              	       
	 
	 INQUIRE(FILE='hotstart/.',exist=alive) !111118
     IF (alive .EQV. .false.) THEN
       CALL SYSTEM('mkdir -p ./hotstart')
     ENDIF

	  !LOAD CONTROL FILE COMCOT.CTL
      WRITE(*,*) 'READING PARAMETERS FOR SIMULATION...'
      OPEN(UNIT=666,FILE='comcot1715_sp9.ctl',STATUS='OLD',IOSTAT=ISTAT)
      IF (ISTAT /=0) THEN
         PRINT *,"ERROR:: CAN'T OPEN CONFIG FILE comcot1715_sp9.ctl; EXITING."
         STOP
      END IF

	  !----------------------------------------------
	  ! READING GENERAL PARAMETERS FOR SIMULATION
	  !----------------------------------------------
	  WRITE (*,*) '    READING GENERAL INFORMATION......'
      READ (666,'(8/)')
      READ (666,'(A)')          DUMP					!  READ JOB DESCRIPTION 
      READ (666,'(49X,F30.6)')  TEND					!  TOTAL SIMULATED PHYSICAL TIME
!      READ (666,'(49X,F30.6)')  TMIN_INV				!  TIME INTERVAL FOR DATA OUTPUT 130912o
	  READ (666,'(49X,I30)')    OUT_OPT					!  0-OUTPUT MAX TSUNAI AMP; 1-OUTPUT TIMEHISTORY; 2-OUTPUT BOTH
	  READ (666,'(49X,I30)')    START_TYPE				!  0-COLD START (T=0.0); 1-HOT START (FROM T = START_TIME); 20-COLDSTART WITH TIDE CORRECTION; 21-HOTSTART WITH TIDE CORRECTION
      READ (666,'(49X,F30.6)')  START_TIME				!  STARTING TIME STEP IF HOT START
	  READ (666,'(49X,F30.6)')  H_LIMIT					!  LIMITATION ON WATER DEPTH, SHALLOWER THAN THIS WILL BE TREATED AS LAND; 0.0 MEANS ORIGINAL SHORELINE WITHOUT VERTICAL WALL
	  READ (666,'(56X,I30)')    INI_SURF				!  INITIAL CONDITION: 0-FAULT; 1-FILE; 2-WAVEMAKER;3-LANDSLIDE;4-FAULT+LANDSLIDE
	  READ (666,'(49X,I30)')    BC_TYPE					!  BOUNDARY CONDITION: 0- RADIATION;1-SPONGE;2-WALL;3-FACTS
      READ (666,'(A)')          LINE1					!  READ FILE NAME OF Z INPUT
	  READ (666,'(A)')          LINE2					!  READ FILE NAME OF U INPUT
	  READ (666,'(A)')          LINE3					!  READ FILE NAME OF V INPUT
      READ (666,'(49X,F30.6)')  BACKUP_TIME				!  130904 BACKUP TIME INTERVAL FOR HOT START
	  READ (666,'(49X,I30)')    BCI_INFO%SIDE(1)		!  USE FACTS TO INTERPLOT TOP    B.C.  1:USE 150402
	  READ (666,'(49X,I30)')    BCI_INFO%SIDE(2)		!  USE FACTS TO INTERPLOT BOTTOM B.C.  1:USE 150402
	  READ (666,'(49X,I30)')    BCI_INFO%SIDE(3)		!  USE FACTS TO INTERPLOT LEFT   B.C.  1:USE 150402
	  READ (666,'(49X,I30)')    BCI_INFO%SIDE(4)		!  USE FACTS TO INTERPLOT RIGHT  B.C.  1:USE 150402
	  
      IF ( (OUT_OPT .EQ. 1) .or. (OUT_OPT .EQ. 2)) THEN !111118 �إߩw�I����ؿ�
		INQUIRE(FILE='ts/.',exist=alive)
		IF (alive .EQV. .false.) THEN
			CALL SYSTEM('mkdir -p ./ts')
		ENDIF
      ENDIF
	  
	  JOB = DUMP

	  POS = INDEX(LINE1,':')
	  IF (POS>0) THEN 
	     BCI_INFO%FNAMEH = TRIM(LINE1(POS+1:200))
	  ELSE
	     BCI_INFO%FNAMEH = ' '
      ENDIF
	  LINE1 = ''
	  POS = INDEX(LINE2,':')
	  IF (POS>0) THEN 
	     BCI_INFO%FNAMEU = TRIM(LINE2(POS+1:200))
	  ELSE
	     BCI_INFO%FNAMEU = ' '
      ENDIF
	  LINE2 = ''
	  POS = INDEX(LINE3,':')
	  IF (POS>0) THEN 
	     BCI_INFO%FNAMEV = TRIM(LINE3(POS+1:200))
	  ELSE
	     BCI_INFO%FNAMEV = ' '
      ENDIF
	  LINE3 = ''
	  
!!!	  IF (BC_TYPE.EQ.3) INI_SURF = 999 !150402

      !----------------------------------------
      !  READING PARAMETERS FOR FAULT MODEL
	  !----------------------------------------
!	  IF (INI_SURF.EQ.0 .OR. INI_SURF.EQ.4) THEN 
      IF (INI_SURF.EQ.0 .OR. INI_SURF.EQ.4 .OR. INI_SURF.EQ.9) THEN !131014
		 WRITE (*,*) '    READING PARAMETERS FOR FAULT MODEL......'
	  ENDIF
      READ (666,'(3/)')
	  READ (666,'(49X,I30)')   FAULT_INFO(1)%NUM_FLT	! TOTAL NO. OF FAULT PLANES
!	  IF (INI_SURF.EQ.0 .OR. INI_SURF.EQ.4) THEN 
	  IF (INI_SURF.EQ.0 .OR. INI_SURF.EQ.4 .OR. INI_SURF.EQ.9) THEN  !131014
	     IF (FAULT_INFO(1)%NUM_FLT.GT.1) THEN
			WRITE (*,*) '    MULTI-FAULTING CONFIGURATION IS IMPLEMENTED'
			IF (FAULT_INFO(1)%NUM_FLT.NE.999) THEN
			   K = 1
			   WRITE (*,*) '    READING PARAMETERS FOR FAULT SEGMENT',K
			ENDIF
		 ENDIF
	  ENDIF
      READ (666,'(49X,F30.6)') FAULT_INFO(1)%T0         !  RUPTURING TIME OF FAULT PLANE 01
	  READ (666,'(49X,I30)')   FAULT_INFO(1)%SWITCH     !  OPTION: 1 - MODEL; 2 - DATA;
      READ (666,'(49X,F30.6)') FAULT_INFO(1)%HH			!  FOCAL DEPTH (UNIT: METER)
      READ (666,'(49X,F30.6)') FAULT_INFO(1)%L			!  LENGTH OF SOURCE AREA (UNIT: METER)
      READ (666,'(49X,F30.6)') FAULT_INFO(1)%W			!  WIDTH OF SOURCE AREA (UNIT: METER)
      READ (666,'(49X,F30.6)') FAULT_INFO(1)%D			!  DISLOCATION (UNIT: METER)
      READ (666,'(49X,F30.6)') FAULT_INFO(1)%TH			!  (=THETA) STRIKE DIRECTION (UNIT: DEGREE)
      READ (666,'(49X,F30.6)') FAULT_INFO(1)%DL			!  (=DELTA) DIP ANGLE (UNIT : DEGREE)
      READ (666,'(49X,F30.6)') FAULT_INFO(1)%RD			!  (=LAMDA) SLIP ANGLE (UNIT: DEGREE)
      READ (666,'(49X,F30.6)') FAULT_INFO(1)%YO			!  ORIGIN OF COMPUTATION (LATITUDE :DEGREE)
      READ (666,'(49X,F30.6)') FAULT_INFO(1)%XO			!  ORIGIN OF COMPUTATION (LONGITUDE:DEGREE)
      READ (666,'(49X,F30.6)') FAULT_INFO(1)%Y0			!  EPICENTER (LATITUDE :DEGREE)	
      READ (666,'(49X,F30.6)') FAULT_INFO(1)%X0			!  EPICENTER (LONGITUDE:DEGREE)
	  READ (666,'(A)')         LINE						!  NAME OF DEFORMATION DATA FILE
	  READ (666,'(49X,I30)')   FAULT_INFO(1)%FS			!  FORMAT OF DEFORMATION FILE:0-COMCOT;1-MOST;2-XYZ

	  POS = INDEX(LINE,':')
	  IF (POS>0) THEN 
	     FAULT_INFO(1)%DEFORM_NAME = TRIM(LINE(POS+1:200))
	  ELSE
	     FAULT_INFO(1)%DEFORM_NAME = 'ini_surface.dat'
      ENDIF
	  LINE = ''
	  SN = SIN(RAD_DEG*FAULT_INFO(1)%DL)
	  CS = COS(RAD_DEG*FAULT_INFO(1)%DL)
	  IF (ABS(SN) .LT. EPS) FAULT_INFO(1)%DL = FAULT_INFO(1)%DL+EPS
	  IF (ABS(CS) .LT. EPS) FAULT_INFO(1)%DL = FAULT_INFO(1)%DL+EPS
	  ! READING PARAMETERS FOR OTHER FAULT PLANES IF > 1
!	  IF (INI_SURF.EQ.0 .OR. INI_SURF.EQ.4) THEN 
	  IF (INI_SURF.EQ.0 .OR. INI_SURF.EQ.4 .OR. INI_SURF.EQ.9) THEN !131014
	     IF (FAULT_INFO(1)%NUM_FLT.GT.1) THEN
			IF (FAULT_INFO(1)%NUM_FLT.NE.999) THEN
			   CALL GET_MULTIFAULT_PARAMETERS (LO,FAULT_INFO)
			ELSE
			   CALL READ_MULTIFAULT_DATA (LO,FAULT_INFO)
			ENDIF
		 ENDIF
	  ENDIF
       
      !----------------------------------------
      !  READING PARAMETERS FOR WAVE MAKER
	  !----------------------------------------
	  IF (INI_SURF .EQ. 2) THEN
		 WRITE (*,*) '    READING PARAMETERS FOR WAVE MAKER......'
	  ENDIF
      READ (666,'(3/)')
	  READ (666,'(49X,I30)')   WAVE_INFO%MK_TYPE		!  WAVE TYPE ( 1:SOLITARY WAVE; 2:GIVEN FORM) 
	  READ (666,'(A)')         LINE						!  FILENAME OF CUSTOMIZED INPUT PROFILE, ONLY FOR WAVE TYPE=2
	  READ (666,'(49X,I30)')   WAVE_INFO%INCIDENT		!  WAVE INCIDENT DIRECTION: (1:TOP,2:BOTTOM,3:LEFT,4RIGHT)
	  READ (666,'(49X,F30.6)') WAVE_INFO%AMP			!  CHARACTERISTIC WAVE HEIGHT (UNIT: METER)
	  READ (666,'(49X,F30.6)') WAVE_INFO%DEPTH			!  CHARACTERISTIC WATER DEPTH (IN METERS)
	  READ (666,'(49X,F30.6)') WAVE_INFO%WK_END         !  TIME TO STOP WAVE MAKER AND LET BC OPEN (SEC) 150402
	  
      ! OBTAIN FILENAME OF GIVEN PROFILE
	  POS = INDEX(LINE,':')
	  IF (POS>0) THEN 
	     WAVE_INFO%FORM_NAME = TRIM(LINE(POS+1:200))
	  ELSE
	     WAVE_INFO%FORM_NAME = 'fse.dat'
      ENDIF
	  LINE = ''
!!!	  WAVE_INFO%WK_END = TEND    ! 150402
	  WAVE_INFO%MK_BC = 0 	  !�S�Q�ϥ�

	  !-----------------------------------------
	  !READING PARAMETERS FOR LAND SLIDE MODEL
	  !----------------------------------------
      IF (INI_SURF .EQ. 3) THEN
		 WRITE (*,*) '    READING PARAMETERS FOR LAND SLIDE MODEL......'
	  ENDIF
      READ (666,'(3/)')
	  READ (666,'(49X,F30.6)')   LANDSLIDE_INFO%X_START  !  STARTING X COORD. OF LAND SLIDE REGION
	  READ (666,'(49X,F30.6)')   LANDSLIDE_INFO%X_END    !  ENDING X COORD. OF LAND SLIDE REGION
      READ (666,'(49X,F30.6)')   LANDSLIDE_INFO%Y_START  !  STARTING Y COORD. OF LAND SLIDE REGION
	  READ (666,'(49X,F30.6)')   LANDSLIDE_INFO%Y_END    !  ENDING Y COORD. OF LAND SLIDE REGION
	  READ (666,'(A)')           LINE                    !  NAME OF LANDSLIDE SNAPSHOT DATA FILE
      READ (666,'(49X,I30)')     LANDSLIDE_INFO%OPTION   !  FORMAT OF LANDSLIDE:0-OLD COMCOT;1-XYT;2-FUNCTION

	  POS = INDEX(LINE,':')
	  IF (POS>0) THEN 
	     LANDSLIDE_INFO%FILENAME = TRIM(LINE(POS+1:200))
      ENDIF
!	  WRITE(*,*) LO%DEPTH_NAME
	  LINE = ''

      !-----------------------------------------
	  !  READING PARAMETERS FOR LAYER 1
	  !-----------------------------------------
	  WRITE (*,*) '    READING PARAMETERS FOR GRID LAYER......'
      READ (666,'(5/)')
      READ (666,'(49X,I30)')    LO%LAYSWITCH		!  SWITCH TO THIS LAYER:0-RUN THIS LAYER;1-DON'T RUN THIS LAYER
      READ (666,'(49X,I30)')    LO%LAYCORD			!  COORDINATES: 0-SPHERICAL; 1-CARTESIAN
      READ (666,'(49X,I30)')    LO%LAYGOV			!  GOVERNING EQUATION: 0-LINEAR SWE; 1-NONLINEAR SWE; 2-LSWE W/ DISP.; 3-NLSWE W/ DISP.
      READ (666,'(49X,F30.6)')  LO%DX				!  GRID SIZE; IN MUNITES FOR SPHERICAL COORD., IN METERS FOR CARTESIAN
      READ (666,'(49X,F30.6)')  LO%DT				!  TIME STEP SIZE, IN SECONDS; WILL BE ADJUSTED IF CFL STABILITY CONDITION NOT SATISFIED;
      READ (666,'(49X,I30)')    LO%FRIC_SWITCH		!  FRICTION SWITCH: 0-CONSTANT ROUGHNESS;1-NO ROUGHNESS;2-VARIABLE ROUGHNESS, ROUGHNESS DATA FILE REQUIRED;3:SEDIMENT MODEL
      READ (666,'(49X,F30.6)')  LO%FRIC_COEF		!  MANNING'S ROUGHNESS COEF FOR FRICTION SWITCH = 0;
      READ (666,'(49X,I30)')    LO%FLUXSWITCH	    !  OUTPUT OPTION: 0-Z+HU+HZ; 1-Z; 2-NONE; 9-Z W/ MODIFIED BATHYMETRY;
      READ (666,'(49X,F30.6)')  LO%X_START			!  STARTING X COORDINATE OF COMPUTATIONAL DOMAIN
      READ (666,'(49X,F30.6)')  LO%X_END			!  ENDING X COORDINATE OF COMPUTATIONAL DOMAIN
      READ (666,'(49X,F30.6)')  LO%Y_START			!  STARTING Y COORDINATE OF COMPUTATIONAL DOMAIN
      READ (666,'(49X,F30.6)')  LO%Y_END			!  ENDING Y COORDINATE OF COMPUTATIONAL DOMAIN
      READ (666,'(A)')          LINE				!  NAME OF BATHYMETRY DATA FILE FOR LAYER01
      READ (666,'(49X,I30)')    LO%FS				!  FORMAT OF BATHYMETRY DATA: 0-OLD COMCOT; 1-MOST-FORMATTED; 2-XYZ; 3-ETOPO
      READ (666,'(49X,I30)')    LO%ID				!  GRID IDENTIIFCATION NUMBER
      READ (666,'(49X,I30)')    LO%LEVEL			!  GRID LEVEL IN NESTED GRID HIERACHY
      READ (666,'(49X,I30)')    LO%PARENT			!  ID OF IT'S PARENT GRID	  
      READ (666,'(49X,F30.6)')  LO%T_INV			!  130912 TIME INTERVAL FOR DATA OUTPUT

!      IF (LO%FLUXSWITCH .EQ. 3) THEN !130904
!	    INQUIRE(FILE='s/.',exist=alive) 
!        IF (alive .EQV. .false.) THEN
!          CALL SYSTEM('mkdir -p ./s')
!        ENDIF
!	  ENDIF
	  IF (LO%FLUXSWITCH .EQ. 0) THEN !111118 �p�G����X�y�q �إ߬y�q�ؿ�
		INQUIRE(FILE='m/.',exist=alive)
		IF (alive .EQV. .false.) THEN
			CALL SYSTEM('mkdir -p ./m')
		ENDIF
	    INQUIRE(FILE='n/.',exist=alive)
        IF (alive .EQV. .false.) THEN
          CALL SYSTEM('mkdir -p ./n')
        ENDIF
      ENDIF

      
      POS = INDEX(LINE,':')
      IF (POS>0) THEN 
          LO%DEPTH_NAME = TRIM(LINE(POS+1:200))
!*	     TMP = TRIM(LINE(POS+1:200))
!*	     POS = INDEX(TRIM(TMP),' ',BACK=.TRUE.)
!*		 LEN_CHAR = LEN_TRIM(TMP(POS+1:200))
!*	     LO%DEPTH_NAME = TRIM(TMP(POS+1:POS+LEN_CHAR))
      ELSE
	      LO%DEPTH_NAME = 'layer01.dep'
      ENDIF
!*	  WRITE(*,*) LEN_CHAR,LO%DEPTH_NAME
      LINE = ''
      LO%LAYSWITCH = 0
      LO%ID = 1

!     TIDAL LEVEL CORRECTION CONTRAL
      LO%TIDE_LEVEL = 0.0		! RUN AT MEAN SEA LEVEL
      IF (START_TYPE.EQ.20 .OR. START_TYPE.EQ.21) THEN
          IF (START_TYPE.EQ.20) START_TYPE = 0
          IF (START_TYPE.EQ.21) START_TYPE = 1
          WRITE (*,*) '>>>>PLEASE INPUT TIDAL LEVEL CORRECTION TO MSL:'
          READ *, LO%TIDE_LEVEL
      ENDIF

!	  GENERATE 'SQUARE' GRIDS FOR DISPERSION-IMPROVED SCHEME
      IF (LO%LAYGOV.GE.2) LO%PARENT = 0
      LO%DIM = 2
      IF (BC_TYPE.EQ.9) LO%DIM = 1
!*	  LO%PARENT = -1
      LO%H_LIMIT = H_LIMIT
      LO%INI_SWITCH = INI_SURF
      LO%BC_TYPE = BC_TYPE
      LO%UPZ = .TRUE.
      LO%SC_OPTION = 0
! �U��ⶵ comcot.ctl��fault_multi.ctl��J��
! Origin of Comp. Domain (Layer 01) (Lat, degree): ����FAULT_INFO%YO
! Origin of Comp. Domain (Layer 01) (Lon, degree): ����FAULT_INFO%XO
!  �u��d���y�Ц��v�T
! ���I�H�U�誺��(�Ĥ@�h)����
	  IF (LO%LAYCORD .EQ. 0) THEN 
	     LO%SOUTH_LAT = LO%Y_START
	  ELSE
	     LO%SOUTH_LAT = FAULT_INFO(1)%YO 
	     LO%XO = FAULT_INFO(1)%XO
	     LO%YO = FAULT_INFO(1)%YO
	  ENDIF

      CALL DX_CALC (LO)

	  START_STEP = NINT(START_TIME/LO%DT)

      IF (LO%LAYCORD.EQ.0) THEN
         FAULT_INFO(1)%YO = LO%Y_START
		 FAULT_INFO(1)%XO = LO%X_START
	  ENDIF
	  WRITE (*,*) '    READING PARAMETERS FOR GRID LAYER ID',LO%ID

      !----------------------------------------
      !  READING PARAMETERS FOR SUB-LEVEL GRIDS
	  !----------------------------------------
!.....READING PARAMETERS FOR SUB GRIDS  
!.....READING PARAMETERS FOR SUB-LEVEL GRIDS: LAYER02 TO LAYER13
      DO I=1,NUM_GRID
         READ (666,'(3/)')
         READ (666,'(49X,I30)')    LA(I)%LAYSWITCH
         READ (666,'(49X,I30)')    LA(I)%LAYCORD
         READ (666,'(49X,I30)')    LA(I)%LAYGOV
         READ (666,'(49X,I30)')    LA(I)%FRIC_SWITCH
         READ (666,'(49X,F30.6)')  LA(I)%FRIC_COEF
         READ (666,'(49X,I30)')    LA(I)%FLUXSWITCH
         READ (666,'(49X,I30)')    LA(I)%REL_SIZE		!  GRID SIZE RATIO OF IT'S PARENT GRID TO THIS GRID
         READ (666,'(49X,F30.6)')  LA(I)%X_START		!  STARTING X COORDINATE OF THIS GRID LAYER IN ITS PARENT GRID 
         READ (666,'(49X,F30.6)')  LA(I)%X_END			!  ENDING X COORDINATE OF THIS GRID LAYER IN ITS PARENT GRID
         READ (666,'(49X,F30.6)')  LA(I)%Y_START		!  STARTING Y COORDINATE OF THIS GRID LAYER IN ITS PARENT GRID
         READ (666,'(49X,F30.6)')  LA(I)%Y_END			!  ENDING Y COORDINATE OF THIS GRID LAYER IN ITS PARENT GRID
         READ (666,'(A)')          LINE				!  NAME OF BATHYMETRY DATA FILE FOR LAYER21
         READ (666,'(49X,I30)')    LA(I)%FS			!  FORMAT OF BATHYMETRY DATA
         READ (666,'(49X,I30)')    LA(I)%ID			!  GRID IDENTIFICATION NUMBER
         READ (666,'(49X,I30)')    LA(I)%LEVEL			!  GRID LEVEL IN NESTED GRID CONFIGURATION
         READ (666,'(49X,I30)')    LA(I)%PARENT			!  ID OF ITS PARENT GRID LAYER	     
         READ (666,'(49X,F30.6)')  LA(I)%T_INV	!  130912 TIME INTERVAL FOR DATA OUTPUT

	     IF (LA(I)%FLUXSWITCH .EQ. 0) THEN !111118
		   INQUIRE(FILE='m/.',exist=alive)
		   IF (alive .EQV. .false.) THEN
		   	   CALL SYSTEM('mkdir -p ./m')
		   ENDIF
	       INQUIRE(FILE='n/.',exist=alive)
           IF (alive .EQV. .false.) THEN
             CALL SYSTEM('mkdir -p ./n')
           ENDIF
         ENDIF

	 
         POS = INDEX(LINE,':')
         IF (POS>0) THEN 
             LA(I)%DEPTH_NAME = TRIM(LINE(POS+1:200))
         ELSE
             WRITE (FNAME,1) LA(I)%ID
 1           FORMAT('layer',I2.2,'.dep')
             LA(I)%DEPTH_NAME = FNAME
             FNAME = ''
         ENDIF
!	     WRITE(*,*) LA(I)%DEPTH_NAME
	     LINE = ''
		 LA(I)%H_LIMIT = H_LIMIT
		 LA(I)%TIDE_LEVEL = LO%TIDE_LEVEL
		 LA(I)%INI_SWITCH = INI_SURF
 		 LA(I)%BC_TYPE = BC_TYPE
		 LA(I)%DIM = 2
		 IF (BC_TYPE .EQ. 9) LA(I)%DIM = 1
		 LA(I)%UPZ = .TRUE.  ! UPZ=.TRUE.: SAME COORDINATES (DEFAULT); .FALSE. DIFFERENT COORDINATES DEFAULT
		 LA(I)%SC_OPTION = 0
		 IF (LA(I)%LAYSWITCH .EQ. 9) THEN
			LA(I)%UPZ = .FALSE.
			LA(I)%LAYSWITCH = 0
		 ENDIF
         IF (LA(I)%LAYSWITCH .EQ. 0) THEN
			WRITE (*,*) '    READING PARAMETERS FOR GRID LAYER ID',LA(I)%ID
		 ENDIF
      ENDDO

      CLOSE(666)


!.... PROCESSING DEPENDENT PARAMETERS FOR TOP LAYER
	  !DETERMINE THE NUMBER OF ITS CHILD GRID LAYERS
	  COUNT = 0
	  DO I=1,NUM_GRID
	     IF (LA(I)%LAYSWITCH.EQ.0 .and. LA(I)%PARENT.EQ.LO%ID) THEN
			COUNT = COUNT+1
		 ENDIF
	  ENDDO
	  LO%NUM_CHILD = COUNT
	  CALL ALLOC(LO,1)
	  ! READ FRICTION COEF. DATA FROM FILE
	  IF (LO%FRIC_SWITCH .EQ. 2) CALL READ_FRIC_COEF (LO)

! MATCH 2ND-LEVEL GRIDS WITH 1ST-LEVEL GRID
	  DO I=1,NUM_GRID
	     IF (LA(I)%LAYSWITCH.EQ.0 .AND. LA(I)%PARENT.EQ.LO%ID) THEN
			IF (LO%LAYCORD.EQ.0 .AND. LA(I)%LAYCORD.EQ.1) THEN
			   !SC_OPTION = 0: TRADITIONAL COUPLING SCHEME
			   !SC_OPTION = 1: IMPROVED COUPLING SCHEME
			   LA(I)%SC_OPTION = 1
			   IF (LA(I)%UPZ .EQV. .FALSE.) THEN
				  LA(I)%SC_OPTION = 0
			   ENDIF
			ENDIF
            CALL SUBGRID_MATCHING(LO,LA(I))
			CALL ALLOC(LA(I),2)
			LA(I)%DT = LO%DT/2.0		!TENTATIVE VALUE
	        ! READ FRICTION COEF. DATA FROM FILE
	        IF (LA(I)%FRIC_SWITCH .EQ. 2) CALL READ_FRIC_COEF (LA(I))
			!DETERMINE THE NUMBER OF ITS CHILD GRID LAYERS
			COUNT = 0
			DO K = 1,NUM_GRID
			   IF (LA(K)%LAYSWITCH.EQ.0 .AND.						&
									LA(K)%PARENT.EQ.LA(I)%ID) THEN
				  COUNT = COUNT + 1
			   ENDIF
			ENDDO
			LA(I)%NUM_CHILD = COUNT
         ENDIF
	  ENDDO

! MATCH 3 - 12TH LEVEL GRIDS WITH 2ND-LEVEL GRIDS
      NUM_LEVEL = NUM_GRID+1
      DO KL = 2,NUM_LEVEL
	     DO I=1,NUM_GRID
	        IF (LA(I)%LAYSWITCH.EQ.0 .AND. LA(I)%LEVEL.EQ.KL) THEN
		       DO J = 1,NUM_GRID
			      IF (LA(J)%LAYSWITCH.EQ.0 .AND.					&
									LA(J)%PARENT.EQ.LA(I)%ID) THEN
					 IF (LA(I)%LAYCORD.EQ.0 .AND.					&
											LA(J)%LAYCORD.EQ.1) THEN
						!SC_OPTION = 0: TRADITIONAL COUPLING SCHEME
						!SC_OPTION = 1: IMPROVED COUPLING SCHEME
						LA(J)%SC_OPTION = 1
						IF (LA(J)%UPZ .EQV. .FALSE.) THEN
						   LA(I)%SC_OPTION = 0
						ENDIF
					 ENDIF
                     CALL SUBGRID_MATCHING(LA(I),LA(J))
			         CALL ALLOC(LA(J),KL+1)
					 LA(J)%DT = LA(I)%DT/2.0		!TENTATIVE VALUE
	                 !READ FRICTION COEF. DATA FROM FILE
	                 IF (LA(J)%FRIC_SWITCH .EQ. 2) THEN
						CALL READ_FRIC_COEF (LA(J))
					 ENDIF
					 !DETERMINE THE NUMBER OF ITS CHILD GRID LAYERS
					 COUNT = 0
					 DO K = 1,NUM_GRID
						IF (LA(K)%LAYSWITCH.EQ.0 .AND.				&
									LA(K)%PARENT.EQ.LA(J)%ID) THEN
							COUNT = COUNT + 1
						ENDIF
					 ENDDO
					 LA(J)%NUM_CHILD = COUNT
			      ENDIF
			   ENDDO
            ENDIF
         ENDDO
	  ENDDO     
	 		 	  
	  RETURN
	  END


!----------------------------------------------------------------------
      SUBROUTINE GET_INI_SURF (LO,LA,INI_SURF,WAVE_INFO,FAULT_INFO,	&
													LANDSLIDE_INFO)
!......................................................................
!DESCRIPTION:
!	  #. OBTAIN INITIAL FREE SURFACE DISPLACEMENT FROM FAULT MODEL,
!	     CUSTOMIZED DATA FILE OR LANDSLIDE MODEL;
!	  #. INTERPOLATE FREE SURFACE DISPLACEMENT INTO NESTED GRID LAYERS;
!	  #. INI_SURF = 
!			0: USE OKADA'S FAULT MODEL TO CALCULATE DEFORMATION
!			1: USE AN EXTERNAL FILE TO DETERMINE INITIAL SURFACE
!			2: USE INCIDENT WAVE MODEL TO DETERMINE INITIAL SURFACE
!			3: USE SUBMARINE LANDSLIDE MODEL
!			4: USE MULTIPLE FAULTS + LANDSLIDE (REQUIRE FAULT_MULTI.CTL)
!			9: USE MANSINHA AND SMYLIES' MODEL TO CALCULATE DEFORMATION
!	  #. FAULT MODELS ARE CALLED IN THIS SUBROUTINE
!INPUT:
!	  #. GRID INFORMATION, FAULT PARAMETERS
!OUTPUT:
!	  #. INITIAL WATER SURFACE DISPLACEMENTS OF ALL GRID LAYERS
!     #. INITIAL SURFACE DISPLACEMENT IS SAVED IN INI_SURFACE.DAT
!     #. SEAFLOOR DISPLACEMENTS ARE SAVED IN DEFORM_SEGXX.DAT
!NOTES:
!     #. CREATED INITIALLY BY TOM LOGAN (ARSC,2005)
!     #. UPDATED ON DEC 2005 (XIAOMING WANG, CORNELL UNIV.)
!     #. UPDATED ON SEP17 2006 (XIAOMING WANG, CORNELL UNIV.)
!     #. UPDATED ON NOV 21 2008 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      USE WAVE_PARAMS
      USE FAULT_PARAMS
	  USE LANDSLIDE_PARAMS
      TYPE (LAYER)	:: LO
	  TYPE (LAYER), DIMENSION(NUM_GRID)  :: LA
      TYPE (WAVE)	:: WAVE_INFO
      TYPE (FAULT),DIMENSION(NUM_FLT)	:: FAULT_INFO
	  TYPE (LANDSLIDE)				:: LANDSLIDE_INFO
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
      
      SELECT CASE (INI_SURF)   ! case 0,9 �O�Y LO%INI_SWITCH
	     CASE (0)  
            !GENERATE DEFORMATION PROFILE FROM BUILT-IN FAULT MODEL
	        !REF.: OKADA (1985)
			CALL GET_FLOOR_DEFORM (LO,LA,FAULT_INFO,0.0)
	     CASE (1)
		    !LOAD CUSTOMIZED WATER SURFACE DISPLACEMENT FROM A FILE
			CALL READ_INI_SURFACE (LO,LA,FAULT_INFO)
		 CASE (2)
		    CALL READ_WAVE (WAVE_INFO)
		 CASE (3)
			CALL READ_LANDSLIDE (LO,LANDSLIDE_INFO)
		 CASE (4)
			CALL GET_FLOOR_DEFORM (LO,LA,FAULT_INFO,0.0)
			CALL READ_LANDSLIDE (LO,LANDSLIDE_INFO)
		 CASE (5)			
			CALL READ_INI_SURFACE (LO,LA,FAULT_INFO)
		    CALL READ_WAVE (WAVE_INFO)
         CASE (9)
            !GENERATE DEFORMATION PROFILE FROM BUILT-IN FAULT MODEL
            !REF.: MANSINHA AND SMYLIE (1971) 
			CALL GET_FLOOR_DEFORM (LO,LA,FAULT_INFO,0.0)

      END SELECT

!.....WRITE INITIAL CONDITION INTO DATA FILE NAMED "INI_SURFACE.DAT"
!	  CALL WRITE_INI (LO) !130905
      

      RETURN
      END




!----------------------------------------------------------------------
      SUBROUTINE GET_MULTIFAULT_PARAMETERS (LO,FLT) 
!......................................................................
!DESCRIPTION:
!	  #. OBTAIN FAULT PARAMETERS FOR SINGLE/MULTIPLE FAULT;
!	  #. FAULT_MULTI.CTL IS REQUIRED IF TOTAL NUMBER OF FAULT PLANES
!		 IS LARGER THAN 1
!INPUT:
!	  #. COMCOT.CTL AND FAULT_MULTI.CTL IF REQUIRED;
!OUTPUT:
!	  #. FAULT PARAMETERS FOR ALL FAULT PLANES INCLUDED;
!NOTES:
!     #. CREATED ON DEC 18, 2008 (XIAOMING WANG, GNS) 
!     #. UPDATED ON DEC 21 2008 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  USE FAULT_PARAMS
      TYPE (LAYER) 	:: LO
      TYPE (FAULT), dimension(NUM_FLT)  :: FLT
      REAL TIME, TEMP(LO%NX)
	  INTEGER NUM_FLT
	  CHARACTER(LEN=200)    :: line,line1,line2,line3
	  CHARACTER(LEN=200)    :: dump,tmp,tmpname,fname
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
      DATA OSIXTY/0.016666666667/, BIG/-999./

!*      WRITE(*,*) '    MULTI-FAULTING CONFIGURATION IS IMPLEMENTED...'
      OPEN(UNIT=23,FILE='fault_multi.ctl',STATUS='OLD',IOSTAT=ISTAT)
      IF (ISTAT /=0) THEN
         PRINT *,"ERROR:: CAN'T OPEN CONFIG FILE FAULT_MULTI.CTL; EXITING."
         STOP
      END IF
      
	  !----------------------------------------------
	  ! READING FAULT PARAMETERS FOR EACH SEGMENT
	  !----------------------------------------------
      READ (23,'(8/)')
      !----------------------------------------
      !  READING PARAMETERS FOR EACH FAULT SEGMENT
	  !----------------------------------------
	  DO K = 2,FLT(1)%NUM_FLT
	     WRITE (*,*) '    READING PARAMETERS FOR FAULT SEGMENT',K
         READ (23,'(3/)')
         READ (23,'(49X,F30.9)') FLT(K)%T0			!  RUPTURING TIME OF THIS FAULT PLANE
	     READ (23,'(49X,I30)')   FLT(K)%SWITCH		!  OPTION OF OBTAINING DEFORMATION: 0-FAULT MODEL; 1-DATA FILE;
         READ (23,'(49X,F30.9)') FLT(K)%HH			!  FOCAL DEPTH (UNIT: METER)
         READ (23,'(49X,F30.9)') FLT(K)%L			!  LENGTH OF SOURCE AREA (UNIT: METER)
         READ (23,'(49X,F30.9)') FLT(K)%W			!  WIDTH OF SOURCE AREA (UNIT: METER)
         READ (23,'(49X,F30.9)') FLT(K)%D			!  DISLOCATION (UNIT: METER)
         READ (23,'(49X,F30.9)') FLT(K)%TH			!  (=THETA) STRIKE DIRECTION (UNIT: DEGREE)
         READ (23,'(49X,F30.9)') FLT(K)%DL			!  (=DELTA) DIP ANGLE (UNIT : DEGREE)
         READ (23,'(49X,F30.9)') FLT(K)%RD			!  (=LAMDA) SLIP ANGLE (UNIT: DEGREE)
         READ (23,'(49X,F30.9)') FLT(K)%YO			!  ORIGIN OF COMPUTATION (LATITUDE :DEGREE)	
         READ (23,'(49X,F30.9)') FLT(K)%XO			!  ORIGIN OF COMPUTATION (LONGITUDE:DEGREE)
         READ (23,'(49X,F30.9)') FLT(K)%Y0			!  EPICENTER (LATITUDE :DEGREE)	
         READ (23,'(49X,F30.9)') FLT(K)%X0			!  EPICENTER (LONGITUDE:DEGREE)
	     READ (23,'(A)')         LINE				!  NAME OF DEFORMATION DATA FILE
	     READ (23,'(49X,I30)')   FLT(K)%FS			!  FORMAT OF DEFORMATION DATA FILE: 0-OLD COMCOT FORMAT;1-MOST;2-XYZ;
	     POS = INDEX(LINE,':')
	     IF (POS>0) THEN 
	        FLT(K)%DEFORM_NAME = TRIM(LINE(int(POS)+1:200))
	     ELSE
	        FLT(K)%DEFORM_NAME = 'ini_surface.dat'
         ENDIF
	     LINE = ''
	     SN = SIN(RAD_DEG*FLT(K)%DL)
	     CS = COS(RAD_DEG*FLT(K)%DL)
		 IF (ABS(SN) .LT. EPS) FLT(K)%DL = FLT(K)%DL+GX
		 IF (ABS(CS) .LT. EPS) FLT(K)%DL = FLT(K)%DL+GX
!	     IF (SN .EQ. 0.0) FLT(K)%DL = FLT(K)%DL+EPS
!	     IF (CS .EQ. 0.0) FLT(K)%DL = FLT(K)%DL+EPS
         FLT(K)%NUM_FLT = FLT(1)%NUM_FLT
         FLT(K)%XO = FLT(1)%XO
	     FLT(K)%YO = FLT(1)%YO
	  ENDDO
	  CLOSE(23)

	  RETURN
	  END

!----------------------------------------------------------------------
      SUBROUTINE READ_MULTIFAULT_DATA (LO,FLT) 
!......................................................................
!DESCRIPTION:
!	  #. OBTAIN FAULT PARAMETERS FOR MULTIPLE FAULT SEGMENTS;
!	  #. PARAMETERS FOR FAULT SEGMENTS ARE OBTAINED FROM AN EXTERNAL
!	     DATA FILE GIVEN AT LINE 40 IN COMCOT.CTL;
!	  #. THE DATA FILE CONTAINS ALL THE INFORMATION FOR EACH SEGMENT;
!		 EACH ROW FOR ONE SEGMENT: TIME,LON,LAT,L,W,H,THETA,DELTA,LAMBDA,SLIP;
!	  #. TO USE THIS FUNCTION, INPUT 999 AT LINE 26 IN COMCOT.CTL;
!INPUT:
!	  #. PARAMETER DATA FILE;
!OUTPUT:
!	  #. FAULT PARAMETERS FOR ALL FAULT PLANES INCLUDED;
!NOTES:
!     #. CREATED ON APR 09, 2009 (XIAOMING WANG, GNS)
!	  #. UPDATED ON APR09 2009 (XIAOMING WANG, GNS)
!		 1. ADD SUPPORT ON IMPORTING FAULT PARAMETERS FOR MULTIPLE
!			FAULT SEGMENTS FROM A DATA FILE;
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  USE FAULT_PARAMS
      TYPE (LAYER) 	:: LO
      TYPE (FAULT), dimension(NUM_FLT)  :: FLT
      REAL TIME, TEMP(LO%NX)
	  INTEGER NUM_FLT,COUNT
	  CHARACTER(LEN=200)    :: line,line1,line2,line3
	  CHARACTER(LEN=200)    :: dump,tmp,tmpname,fname
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
      DATA OSIXTY/0.016666666667/, BIG/-999./

!*      WRITE(*,*) '    MULTI-FAULTING CONFIGURATION IS IMPLEMENTED...'
      OPEN(UNIT=23,FILE=FLT(1)%DEFORM_NAME,STATUS='OLD',IOSTAT=ISTAT)
      IF (ISTAT /=0) THEN
         PRINT *,"ERROR:: CAN'T OPEN FAULT PARAMETER DATA FILE; EXITING."
         STOP
      END IF
      
!.....DETERMINE THE TOTAL NUMBER OF FAULT SEGMENTS
	  COUNT = 0
	  DO WHILE (ISTAT ==0)
		 COUNT = COUNT + 1
		 READ (23,*,IOSTAT=ISTAT) T1,T2,T3,T4,T5,T6,T7,T8,T9,T10
	  ENDDO
	  FLT(1)%NUM_FLT = COUNT
	  REWIND(23)
	  K = 1
	  WRITE (*,*) '    READING PARAMETERS FOR FAULT SEGMENT ',K,' TO ',COUNT
      !----------------------------------------
      !  READING PARAMETERS FOR EACH FAULT SEGMENT
	  !----------------------------------------
	  DO K = 1,FLT(1)%NUM_FLT
         READ (23,*) FLT(K)%T0,FLT(K)%X0,FLT(K)%Y0,FLT(K)%L,		&
						FLT(K)%W,FLT(K)%HH,FLT(K)%TH,FLT(K)%DL,		&
						FLT(K)%RD,FLT(K)%D
		 IF (K.EQ.1) THEN
			SN = SIN(RAD_DEG*FLT(K)%DL)
			CS = COS(RAD_DEG*FLT(K)%DL)
			IF (ABS(SN) .LT. EPS) FLT(K)%DL = FLT(K)%DL+GX
			IF (ABS(CS) .LT. EPS) FLT(K)%DL = FLT(K)%DL+GX
		 ENDIF
		 IF (K.GT.1) THEN
			FLT(K)%SWITCH = FLT(1)%SWITCH
			SN = SIN(RAD_DEG*FLT(K)%DL)
			CS = COS(RAD_DEG*FLT(K)%DL)
			IF (ABS(SN) .LT. EPS) FLT(K)%DL = FLT(K)%DL+GX
			IF (ABS(CS) .LT. EPS) FLT(K)%DL = FLT(K)%DL+GX
			FLT(K)%NUM_FLT = FLT(1)%NUM_FLT
			FLT(K)%DEFORM_NAME = FLT(1)%DEFORM_NAME
			FLT(K)%FS = FLT(1)%FS
			FLT(K)%XO = FLT(1)%XO
			FLT(K)%YO = FLT(1)%YO
		 ENDIF
	  ENDDO
	  CLOSE(23)

	  RETURN
	  END


!----------------------------------------------------------------------
      SUBROUTINE GET_LANDSLIDE_PARAMETERS (LO,LS) 
!......................................................................
!DESCRIPTION:
!	  #. OBTAIN ADDITIONAL PARAMETERS FOR LANDSLIDE CONFIGURATION;
!	  #. THESE ADDITIONAL PARAMETERS ARE USED TO DETERMINE WATER DEPTH 
!	     VARIATIONS VIA WATTS ET AL (2003)'S LANDSLIDE THEORY;
!	  #. LANDSLIDE.CTL IS REQUIRED IF THE OPTION IN LANDSLIDE SECTION 
!		 IN COMCOT.CTL IS LARGER THAN 1
!INPUT:
!	  #. COMCOT.CTL AND LANDSLIDE.CTL IF REQUIRED;
!OUTPUT:
!	  #. ADDITIONAL LANDSLIDE PARAMETERS FOR LANDSLIDE CONFIGURATION;
!NOTES:
!     #. CREATED ON FEB 13, 2008 (XIAOMING WANG, GNS) 
!     #. UPDATED ON ???
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  USE LANDSLIDE_PARAMS
      TYPE (LAYER) 		:: LO
      TYPE (LANDSLIDE)	:: LS
	  REAL T0,T1
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
      DATA OSIXTY/0.016666666667/, BIG/-999./

	  !----------------------------------------------
	  ! READING PARAMETERS FOR BUILT-IN SLIDING MODEL
	  !----------------------------------------------
!*      WRITE(*,*) '    MULTI-FAULTING CONFIGURATION IS IMPLEMENTED...'
      OPEN(UNIT=23,FILE='landslide.ctl',STATUS='OLD',IOSTAT=ISTAT)
      IF (ISTAT /=0) THEN
         PRINT *,"ERROR:: CAN'T OPEN CONFIG FILE LANDSLIDE.CTL; EXITING."
         STOP
      END IF
      
      READ (23,'(8/)')
	  WRITE (*,*) '    READING PARAMETERS FOR LAND SLIDE CONFIGURATION'
      READ (23,'(3/)')
      READ (23,'(49X,F30.9)') T0				!  LAND SLIDE STARTING TIME (SECONDS)
	  READ (23,'(49X,F30.9)') T1				!  LAND SLIDE ENDING TIME (SECONDS)
      READ (23,'(49X,F30.9)') LS%XS				!  X COORD OF STARTING LOCATION (CENTER OF MASS) 
      READ (23,'(49X,F30.9)') LS%YS				!  Y COORD OF STARTING LOCATION (CENTER OF MASS) 
      READ (23,'(49X,F30.9)') LS%XE				!  X COORD OF STOPPING LOCATION (CENTER OF MASS) 
      READ (23,'(49X,F30.9)') LS%YE				!  Y COORD OF STOPPING LOCATION (CENTER OF MASS)
      READ (23,'(49X,F30.9)') LS%SLOPE			!  TYPICAL SLOPE ANGLE ALONG SLIDING PATH (DEGREE)
      READ (23,'(49X,F30.9)') LS%A				!  LENGTH OF SLIDING VOLUME (IN METERS ALONG PATH)
      READ (23,'(49X,F30.9)') LS%B				!  WIDTH OF SLIDING VOLUME (IN METERS CROSS PATH)
      READ (23,'(49X,F30.9)') LS%THICKNESS		!  TYPICAL THICKNESS OF SLIDE VOLUME (IN METERS) 
	  CLOSE(23)

	  LS%DURATION = T1 - T0
	  LS%NT = NINT((T1-T0)/LO%DT)+1

	  ALLOCATE(LS%T(LS%NT))
	  LS%T = 0.0

	  DO K = 1,LS%NT
	     LS%T(K) = (K-1.0)*LO%DT + T0
	  ENDDO

	  WRITE (*,*) 'T0=',T0
	  WRITE (*,*) 'T1=',T1
	  WRITE (*,*) 'NT=',LS%NT
	  WRITE (*,*) 'T(1)=',LS%T(1)
	  WRITE (*,*) 'T(NT)=',LS%T(LS%NT)
	  WRITE (*,*) 'SLOPE=',LS%SLOPE
	  WRITE (*,*) 'THICKNESS=',LS%THICKNESS

	  RETURN
	  END

!----------------------------------------------------------------------
      SUBROUTINE DX_CALC (LO)
!......................................................................	  
!DESCRIPTION:
!	  #. CALCULATE GRID SIZE AND X,Y COORDINATES OF 1ST-LEVEL GRIDS 
!		 FOR 'SQUARE' GRID CELLS WHEN SPHERICAL COORDINATE IS ADOPTED, 
!		 DESIGNED FOR DISPERSION IMPROVEMENT PURPOSE;
!	  #. GRID_SWITCH  - FLAG ONLY FOR SPHERICAL COORDINATES
!         0 - CREATE A 'SQUARE' GRID CELL IN SPHERICAL COORDINATE,
!			  I.E., LENGTH OF DX = LENGTH OF DY;
!		  1 - CREATE A 'NORMAL' GRID CELL IN SPHERICAL COORDINATE,
!			  I.E., DX = DY IN ARC MINUTES, BUT LENGTH ARE DIFFERENT;
!     #. *** HERE, LO%PARENT IS TEMPORARILY USED FOR TEST PURPOSE:
!            =  0: 'SQUARE' GRID CELL WILL BE CREATED FOR LO
!			 = -1: 'NORMAL' GRID CELL WILL BE CREATED FOR LO 
!NOTE:
!     #. CREATED ON SEP 18 2006 (XIAOMING WANG, CORNELL UNIV.)
!	  #. UPDATED ON DEC.17 2008 (XIAOMING WANG, GNS)
!	  #. UPDATED ON JAN03 2009 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  TYPE (LAYER) :: LO,LA
	  REAL X,Y,X0,Y0,DX_ARC
	  REAL, ALLOCATABLE :: YTMP(:),DEL_Y(:)
	  INTEGER GRID_SWITCH
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

	  
!.....TENTATIVE VALUES
	  LO%DY = LO%DX
	  LO%REL_SIZE = 1
	  LO%REL_TIME = 1
!.....IF THE CARTESIAN COORDINATE IS ADOPTED,
!     CALCULATE THE GRID DIMENSION, X AND Y COORDINATES;
	  IF (LO%LAYCORD.EQ.1) THEN
		 LO%NX = NINT((LO%X_END-LO%X_START)/LO%DX)+1
	     LO%NY = NINT((LO%Y_END-LO%Y_START)/LO%DY)+1
	     ALLOCATE(LO%X(LO%NX))
	     ALLOCATE(LO%Y(LO%NY))
		 ALLOCATE(LO%DEL_X(LO%NX))
         ALLOCATE(LO%DEL_Y(LO%NY))
	     DO I = 1,LO%NX
	        LO%X(I) = LO%X_START + (I-1)*LO%DX
		 END DO
	     DO J = 1,LO%NY
	        LO%Y(J) = LO%Y_START + (J-1)*LO%DY
		 END DO
		 LO%DEL_X(:) = LO%DX
		 LO%DEL_Y(:) = LO%DY
		 !SPHERICAL COORDINATES, FOR FACTS INPUT
         IF (LO%BC_TYPE.EQ.3 .or. LO%BC_TYPE.EQ.4) THEN
		    ALLOCATE(LO%CXY(LO%NX,LO%NY,2))
			LO%CXY = 0.0
!OMP 111025 v1
!$omp parallel
!$omp do private(I,J)
            DO I = 1,LO%NX
              DO J = 1,LO%NY
!!!                  CALL COORD_CONVERT (LO%X(I),LO%Y(J),				& ! �쥻ha.xyt,ua.xyt,va.xyt���Ŷ���쬰�g�n��
!!!                    LO%CXY(I,J,1),LO%CXY(I,J,2),LO%XO,LO%YO,1)         ! �Nha.xyt,ua.xyt,va.xyt���g�n���ন�d���y��
			     !150402 xyt�ɪ��Ŷ���쪽������m, LO%LAYCORD.EQ.1 �d���y�� ���ΦA�g�n����d��
                  LO%CXY(I,J,1)=LO%X(I) !!!!!!150402 
                  LO%CXY(I,J,2)=LO%Y(J) !!!!!!150402
              ENDDO
            ENDDO
!$omp end parallel
         ENDIF
       ENDIF	  	     

!.....IF SPHERICAL COORDINATE IS IMPLEMENTED,
!     CALCULATE THE GRID DIMENSION, X AND Y COORDINATES;
!.....IF GRID_SWITCH = 0, GRID SIZE IN Y DIRECTION WILL BE ADJUSTED 
!	  ACCORDING TO LATITUDE SO THAT 'SQUARE' GRID CELLS WILL BE CREATED 
!	  IN SPHERICAL COORDINATES;

!.....GRID_SWITCH  - FLAG ONLY FOR SPHERICAL COORDINATES
!         0 - CREATE A 'SQUARE' GRID CELL IN SPHERICAL COORDINATE,
!			  I.E., LENGTH OF DX = LENGTH OF DY;
!		  1 - CREATE A 'NORMAL' GRID CELL IN SPHERICAL COORDINATE,
!			  I.E., DX = DY IN ARC MINUTES, BUT LENGTH ARE DIFFERENT;
	  GRID_SWITCH = 0
	  IF (LO%PARENT .EQ. -1) GRID_SWITCH = 1 !FOR TEST PURPOSE

	  IF (LO%LAYCORD .EQ. 0) THEN
	     ! WHEN SQUARE GRID IS REQUIRED
	     IF (GRID_SWITCH.EQ.0) THEN
		!CONVERT MINUTES TO DEGREES
		DX = LO%DX/60.0
                DY = LO%DY/60.0	
		LO%NX = NINT((LO%X_END-LO%X_START)/DX)+1
	        ALLOCATE(LO%X(LO%NX))
			ALLOCATE(LO%DEL_X(LO%NX))
!OMP 111025 v1
!$omp parallel
!$omp do private(I)
    	    DO I = 1,LO%NX
	           LO%X(I) = (I-1)*DX + LO%X_START
		    END DO
!$omp end parallel
			LO%DEL_X(:) = LO%DX
			!CREATE 'NON-UNIFORM' GRID SIZE IN Y DIRECTION (LATITUDE)
			NY = NINT((LO%Y_END-LO%Y_START)/DY)+1
			ALLOCATE(YTMP(5*NY))
			ALLOCATE(DEL_Y(5*NY))
			YTMP = 0.0
			DEL_Y = 0.0

		    K = 1
		    YTMP(1) = LO%Y_START
	        DO WHILE (YTMP(K).LE.LO%Y_END)
		       ANG_K = YTMP(K)*RAD_DEG
		       DEL_Y(K) = DX*COS(ANG_K)
			   DY = DX*COS(ANG_K+0.5*DEL_Y(K)*RAD_DEG)
	           YTMP(K+1) = YTMP(K) + DY
			   K = K + 1
		    END DO	
			LO%NY = K-1
			ALLOCATE(LO%Y(LO%NY))
			ALLOCATE(LO%DEL_Y(LO%NY))
			LO%Y(:) = YTMP(1:LO%NY)
			LO%DEL_Y(:) = DEL_Y(1:LO%NY)*60.0  
			LO%XO = LO%X(1)
			LO%YO = LO%Y(1)
		 !WHEN SQUARE GRID IS NOT REQUIRED
		 ELSE
		    DX = LO%DX/60.0
		    DY = LO%DY/60.0	
		    LO%NX = NINT((LO%X_END-LO%X_START)/DX)+1
	        LO%NY = NINT((LO%Y_END-LO%Y_START)/DY)+1
	        ALLOCATE(LO%X(LO%NX))
	        ALLOCATE(LO%Y(LO%NY))
			ALLOCATE(LO%DEL_X(LO%NX))
            ALLOCATE(LO%DEL_Y(LO%NY))
!OMP 111025 v1
!$omp parallel
!$omp do private(I)
	        DO I = 1,LO%NX
	           LO%X(I) = LO%X_START + (I-1)*DX
		    END DO
!$omp barrier
!$omp do private(J)
	        DO J = 1,LO%NY
	           LO%Y(J) = LO%Y_START + (J-1)*DY
		    END DO
!$omp end parallel
			LO%DEL_X(:) = LO%DX	
			LO%DEL_Y(:) = LO%DY
			LO%XO = LO%X(1)
			LO%YO = LO%Y(1)
		 ENDIF
	  ENDIF	       

	  DEALLOCATE(YTMP,DEL_Y,STAT = ISTAT)

      RETURN
	  END


!----------------------------------------------------------------------
      SUBROUTINE SUBGRID_MATCHING (LO,LA)
!......................................................................
!DESCRIPTION:
!     #. CALCULATE GRID DIMENSION AND COORDINATES OF GRID LAYER LA AND 
!		 ITS POSITION IN ITS PARENT LAYER LO
!	  #. ARRAYS RELATED TO DIMENSION ARE ALLOCATED HERE
!	  #. LA%UPZ = 
!			.TRUE. - PARENT GRID, LO, AND CHILD GRID, LA, ADOPT 
!					 THE SAME COORDINATE SYSTEM;
!			.FALSE. - PARENT GRID, LO, AND CHILD GRID, LA, ADOPT  
!					  DIFFERENT COORDINATE SYSTEM;
!	  #. SC_OPTION: COUPLING SCHEME BETWEEN SPHERICAL AND CARTESIAN
!			 = 0: TRADITIONAL COUPLING SCHEME BETWEEEN SPH AND CART;
!			 = 1: IMPROVED COUPLING SCHEME BETWEEN SPH AND CART;
!INPUT:
!     LO: PARENT GRID LAYER
!OUTPUT:
!     LA: CURRENT GRID LAYER
!NOTE:
!     #. CREATED ON NOV 05 2008 (XIAOMING WANG, GNS)
!     #. UPDATED ON JAN05 2008 (XIAOMING WANG)
!	  #. UPDATED ON APR03 2009 (XIAOMING WANG)
!		 1. IMPROVE COUPLING SCHEME BETWEEN SPHERICAL AND CARTESIAN
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  TYPE (LAYER) :: LO,LA
	  REAL SOUTH_LAT,DX_ARC
	  REAL LAT,LON,LAT0,LON0,X,Y,X0,Y0
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

	  WRITE (*,*) '    GENERATING NESTED GRIDS IN LAYER',LO%ID

!.....DETERMINE TIME STEP SIZE OF CHILD GRID
!*	  LA%REL_TIME = LA%REL_SIZE
!*	  LA%DT=LO%DT/LA%REL_SIZE

!.....DETERMINE POSITION INDICES OF CHILD GRID IN ITS PARENT GRID LAYER
      IS = 2
	  IE = LO%NX-1
	  JS = 2
	  JE = LO%NY-1
!OMP 111025 v1
!$omp parallel
!$omp do private(K)
      DO K = IS,IE
	     IF (LA%X_START.GE.(LO%X(K-1)+LO%X(K))/2.0 .AND.			&
		   LA%X_START.LT.(LO%X(K)+LO%X(K+1))/2.0) LA%CORNERS(1) = K+1
		 IF (LA%X_END.GE.(LO%X(K-1)+LO%X(K))/2.0 .AND.				&
		     LA%X_END.LT.(LO%X(K)+LO%X(K+1))/2.0) LA%CORNERS(2) = K-1
	  ENDDO
!$omp barrier
!$omp do private(K)
	  DO K = JS,JE
	     IF (LA%Y_START.GE.(LO%Y(K-1)+LO%Y(K))/2.0 .AND.			&
		    LA%Y_START.LT.(LO%Y(K)+LO%Y(K+1))/2.0) LA%CORNERS(3) = K+1
		 IF (LA%Y_END.GE.(LO%Y(K-1)+LO%Y(K))/2.0 .AND.				&
		     LA%Y_END.LT.(LO%Y(K)+LO%Y(K+1))/2.0) LA%CORNERS(4) = K-1
	  ENDDO
!$omp end parallel
!.....DETERMINE THE DIMENSION OF CHILD GRID LAYER
	  IF (LO%LAYCORD .EQ. LA%LAYCORD) THEN
		 LA%NX = (LA%CORNERS(2)-LA%CORNERS(1)+1)*LA%REL_SIZE+1
		 LA%NY = (LA%CORNERS(4)-LA%CORNERS(3)+1)*LA%REL_SIZE+1
		 ALLOCATE(LA%X(LA%NX))
		 ALLOCATE(LA%Y(LA%NY))
		 ALLOCATE(LA%DEL_X(LA%NX))
		 ALLOCATE(LA%DEL_Y(LA%NY))
		 LA%X = 0.0
		 LA%Y = 0.0
		 LA%DEL_X = 0.0
		 LA%DEL_Y = 0.0
	  ENDIF

!DETERMINE GRID SIZE AND X,Y COORDINATES OF CHILD GRID LAYER: LA
!WHEN BOTH LO AND LA ADOPT CARTESIAN COORDINATES
	  IF (LO%LAYCORD.EQ.1 .AND. LA%LAYCORD.EQ.1) THEN
         LA%DX = LO%DX/DBLE(LA%REL_SIZE)
		 LA%DY = LO%DY/DBLE(LA%REL_SIZE)
		 XS = 0.5*(LO%X(LA%CORNERS(1))+LO%X(LA%CORNERS(1)-1))-LA%DX/2.0
		 YS = 0.5*(LO%Y(LA%CORNERS(3))+LO%Y(LA%CORNERS(3)-1))-LA%DY/2.0
!OMP 111025 v1
!$omp parallel
!$omp do private(I)
         DO I = 1,LA%NX
		    LA%X(I) = (I-1)*LA%DX + XS
		 ENDDO
!$omp do private(J)
		 DO J = 1,LA%NY
		    LA%Y(J) = (J-1)*LA%DY + YS
	     ENDDO
!$omp end parallel		 
		 LA%DEL_X(:) = LA%DX
		 LA%DEL_Y(:) = LA%DY
	  ENDIF

!WHEN BOTH LO AND LA USE SPHERICAL COORDINATES
	  IF (LO%LAYCORD .EQ. 0) THEN
	     IF (LA%LAYCORD .EQ. 0) THEN
	        LA%DX = LO%DX/DBLE(LA%REL_SIZE)
			LA%DY = LO%DY/DBLE(LA%REL_SIZE)
			LA%DEL_X(:) = LA%DX
			LA%DEL_Y(:) = LA%DY
	        DX = LA%DX/60.0  !CONVERT MINUTES TO DEGREES
		    XS = 0.5*(LO%X(LA%CORNERS(1))+LO%X(LA%CORNERS(1)-1))-DX/2.0
!OMP 111025 v1
!$omp parallel
!$omp do private(I)
            DO I = 1,LA%NX
		       LA%X(I) = (I-1)*DX + XS
		    ENDDO
!$omp end parallel
			JS = LA%CORNERS(3)
			JE = LA%CORNERS(4)
			DY = LO%DEL_Y(JS-1)/DBLE(LA%REL_SIZE)
		    LA%SOUTH_LAT = 0.5*(LO%Y(JS)+LO%Y(JS-1)) - 0.5*DY/60.0
			LA%Y(1) = LA%SOUTH_LAT
			LA%DEL_Y(1) = DY
!OMP 111025 v1
!$omp parallel
!$omp do private(J,K) firstprivate(DY,YS,KS)
			DO J = JS,JE
			   DY = LO%DEL_Y(J)/DBLE(LA%REL_SIZE)
		       YS = 0.5*(LO%Y(J)+LO%Y(J-1))
			   KS = (J-JS)*LA%REL_SIZE + 1
			   DO K = 1,LA%REL_SIZE
				  LA%DEL_Y(KS+K) = DY
			      LA%Y(KS+K) = YS + (K-0.5)*DY/60.0
			   ENDDO
			ENDDO
!$omp end parallel
!			WRITE(*,*) LA%NY,LA%DEL_Y(1),LA%DEL_Y(NINT(LA%NY/2.0)),LA%DEL_Y(LA%NY)
!*!CALCULATE POSITION AND PARAMETERS REQUIRED FOR DATA COMMUNICATION
!*!*BETWEEN LO AND LA
		 ENDIF
	  ENDIF

!WHEN LO USES SPHERICAL COORDINATES AND LA USES CARTESIAN COORDINATES
	  IF (LO%LAYCORD .EQ. 0) THEN
		 IF (LA%LAYCORD .EQ. 1) THEN
			!GRID SIZE IN DEGREES
	        DX = LO%DX/60.0/DBLE(LA%REL_SIZE)
	        DY = LO%DEL_Y(LA%CORNERS(3))/60.0/DBLE(LA%REL_SIZE)
																			
			LA%SOUTH_LAT = 0.5*(LO%Y(LA%CORNERS(3))					&
								+ LO%Y(LA%CORNERS(3)-1)) - DY/2.0

			!ADJUSTED POSITION IN DEGREES
		    XS = 0.5*(LO%X(LA%CORNERS(1))+LO%X(LA%CORNERS(1)-1))-DX/2.0
		    XE = 0.5*(LO%X(LA%CORNERS(2))+LO%X(LA%CORNERS(2)+1))-DX/2.0
		    YS = 0.5*(LO%Y(LA%CORNERS(3))+LO%Y(LA%CORNERS(3)-1))-DY/2.0
		    YE = 0.5*(LO%Y(LA%CORNERS(4))+LO%Y(LA%CORNERS(4)+1))-DY/2.0

			LA%NX = (LA%CORNERS(2)-LA%CORNERS(1)+1)*LA%REL_SIZE+1
			LA%NY = (LA%CORNERS(4)-LA%CORNERS(3)+1)*LA%REL_SIZE+1
			ALLOCATE(LA%X(LA%NX))
			ALLOCATE(LA%Y(LA%NY))
			ALLOCATE(LA%XT(LA%NX))
			ALLOCATE(LA%YT(LA%NY))
			ALLOCATE(LA%DEL_X(LA%NX))
			ALLOCATE(LA%DEL_Y(LA%NY))
		    LA%X = 0.0
		    LA%Y = 0.0
		    LA%XT = 0.0
		    LA%YT = 0.0
		    LA%DEL_X = 0.0
		    LA%DEL_Y = 0.0

			CALL COORD_CONVERT (LA%X(LA%NX),LA%Y(1),XE,YS,XS,YS,0)
			CALL COORD_CONVERT (LA%X(1),LA%Y(LA%NY),XS,YE,XS,YS,0)
			CALL COORD_CONVERT (LA%X(1),LA%Y(1),XS,YS,XS,YS,0)
			XLEN = LA%X(LA%NX) - LA%X(1)
			YLEN = LA%Y(LA%NY) - LA%Y(1)
!			WRITE(*,*) LA%X(1),LA%X(LA%NX),LA%Y(1),LA%Y(LA%NY),XLEN,YLEN
						
!*			!GRID SIZE IN METERS, SQUARE GRID CELL (LA%DX=LA%DY)
			LA%DX = XLEN/(LA%NX-1)
			LA%DY = YLEN/(LA%NY-1)
			LA%DEL_X(:) = LA%DX
			LA%DEL_Y(:) = LA%DY
			! X,Y COORDINATES IN METERS
!OMP 111025 v1
!$omp parallel
!$omp do private(I)
            DO I = 2,LA%NX
		       LA%X(I) = (I-1)*LA%DX + LA%X(1)
		    ENDDO
!$omp do private(J)
		    DO J = 2,LA%NY
		       LA%Y(J) = (J-1)*LA%DY + LA%Y(1)
	        ENDDO
			! X,Y COORDINATES IN DEGREES (CAUSION: COORD NOT EXACT)
!$omp do private(I)
            DO I = 1,LA%NX
		       LA%XT(I) = (I-1)*(XE-XS)/(LA%NX-1) + XS
		    ENDDO
!$omp do private(J)
            DO J = 1,LA%NY
		       LA%YT(J) = (J-1)*(YE-YS)/(LA%NY-1) + YS
		    ENDDO
!$omp end parallel
!CALCULATE POSITION AND PARAMETERS REQUIRED FOR DATA COMMUNICATION
!*BETWEEN LO AND LA
!***********DETERMINE IJ POSITION OF LAYER LA GRIDS IN LAYER LO*********
!***********FOR INTERPOLATION FROM LO TO LA ***
			IF (LA%SC_OPTION .EQ. 1) THEN
			ALLOCATE(LA%POS(LA%NX,LA%NY,2))
			ALLOCATE(LA%CXY(LA%NX,LA%NY,4))	
			LA%POS = 0
			LA%CXY = 0.0
			IMIN = LO%NX
			IMAX = 1
			JMIN = LO%NY
			JMAX = 1
!...........DETERMINE IJ POSITION OF LA GRID IN LO
			!NATURAL ORIGIN (LOWER-LEFT CORNER GRID) IN DEGREES
	        LAT0 = YS
	        LON0 = XS
			!NATURAL ORIGIN (LOWER-LEFT CORNER GRID) IN METERS
	        X0 = LA%X(1)
	        Y0 = LA%Y(1)
!OMP 111025 v1
!$omp parallel
!$omp do private(I,J,K) firstprivate(LON,LAT,KI,KJ,IMAX,IMIN,JMAX,JMIN,&
!$omp DELTA_X,DELTA_Y,CX,CY)
	        DO I = 1,LA%NX
		       DO J = 1,LA%NY
			      ! CONVERT UTM TO LATTIUDE AND LONGITUDE
			      CALL COORD_CONVERT (LA%X(I),LA%Y(J),LON,LAT,		&
														LON0,LAT0,1)
		   	      KI = 0
			      KJ = 0
			      DO K = 2,LO%NX-1
			         IF (LON.GE.LO%X(K) .AND. LON.LT.LO%X(K+1)) KI = K
			      ENDDO
			      DO K = 2,LO%NY-1
			         IF (LAT.GE.LO%Y(K) .AND. LAT.LT.LO%Y(K+1)) KJ = K
			      ENDDO
				  LA%POS(I,J,1) = KI
				  LA%POS(I,J,2) = KJ

				  IF (KI.GT.IMAX) IMAX = KI
				  IF (KI.LT.IMIN) IMIN = KI
				  IF (KJ.GT.JMAX) JMAX = KJ
				  IF (KJ.LT.JMIN) JMIN = KJ

			      IF (KI.GE.1 .AND. KI.LT.LO%NX) THEN
			         IF (KJ.GE.1 .AND. KJ.LT.LO%NY) THEN
			            DELTA_X = LO%X(KI+1)-LO%X(KI)
			            DELTA_Y = LO%Y(KJ+1)-LO%Y(KJ)
			            CX = (LON-LO%X(KI))/DELTA_X
			            CY = (LAT-LO%Y(KJ))/DELTA_Y
						!COEF OF LOWER LEFT CORNER
                        LA%CXY(I,J,1) = (1.0-CX)*(1.0-CY)
						!COEF OF LOWER RIGHT CORNER				
			            LA%CXY(I,J,2) = (CX)*(1.0-CY)
						!COEF OF UPPER LEFT CORNER				
			            LA%CXY(I,J,3) = (1.0-CX)*(CY)
						!COEF OF UPPER RIGHT CORNER					
			            LA%CXY(I,J,4) = (CX)*(CY)						
			         ENDIF
			      ENDIF
               ENDDO
            ENDDO
!$omp end parallel
			LA%CORNERS(1) = IMIN
			LA%CORNERS(2) = IMAX
			LA%CORNERS(3) = JMIN
			LA%CORNERS(4) = JMAX
!			WRITE (*,*) IMIN,IMAX,JMIN,JMAX
			ENDIF
		 ENDIF
	  ENDIF
!	  WRITE (*,*) LA%X(1),LA%X(LA%NX),LA%Y(1),LA%Y(LA%NY)

      RETURN
	  END



!----------------------------------------------------------------------
      SUBROUTINE CR_CHECK (LO,LA)
!......................................................................	  
!DESCRIPTION:
!     #. CHECK COURANT CONDITION AND ADJUST TIME STEP SIZE OF LO 
!		 IF NECESSARY AND DETERMINE TIME STEP SIZES OF ALL SUB-LEVEL
!		 GRID LAYERS AND THE TIME RATIOS OF LO TO LA.
!	  #. TIME STEP SIZE IS DETERMINED BY THE MAXIMUM WATER DEPTH OF A 
!	     GRID LAYER WITH COURANT NUMBER SET TO 0.5; IF NONLINEAR SWE IS
!		 IMPLEMENTED, COURANT NUMBER IS SET TO 0.4;
!INPUT:
!	  #. WATER DEPTH AND GRID SIZE OF LO AND LA, LO%DT
!OUTPUT:
!	  #. TIME STEP SIZE DT OF LO IF ADJUSTMENT IS REQUIRED
!	  #. TIME STEP SIZE RATIO OF LO TO LA
!NOTE:
!     #. CREATED ON SEP 18 2006 (XIAOMING WANG, CORNELL UNIV.)
!     #. UPDATED ON DEC. 20 2008 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  TYPE (LAYER) :: LO,LA(NUM_GRID)
	  REAL H_MAX,SOUTH_LAT,LAT_MAX,DX,DY,DT,DT1,DEL_X,CR
	  INTEGER IR
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

	  WRITE (*,*) '    VALIDATING AND DETERMINING TIME STEP SIZES......'
      
	  H_MAX = GX
	  G = GRAV
	  CR_LIMIT = 0.5

      DT = LO%DT
!.....CHECK COURANT CONDITION FOR 1ST-LEVEL GRIDS
      !CAN'T OMP
	  DO I=1,LO%NX
	     DO J=1,LO%NY
		    IF ( LO%H(I,J) .GT. H_MAX ) H_MAX = LO%H(I,J)
         ENDDO
      ENDDO
      
      IF (LO%LAYCORD .EQ. 0) THEN 
		 !CONVERT TO ARC LENGTH (M) IF SPHERICAL COORD.
	     LAT_MAX = AMAX1(ABS(LO%Y(1)),ABS(LO%Y(LO%NY)))*RAD_DEG
		 DX = R_EARTH*COS(LAT_MAX)*(LO%DX*RAD_MIN)
		 DY = R_EARTH*(LO%DY*RAD_MIN)
	  ELSE
	     DX = LO%DX
		 DY = LO%DY
	  ENDIF

	  DEL_X = AMIN1(DX,DY) !FIND THE SMALLER BETWEEN DX AND DY
	  
      IF (LO%LAYSWITCH .EQ. 0) THEN
	     CR = LO%DT/(DEL_X/SQRT(GRAV*H_MAX))
		 CR_LIMIT = 0.5
		 IF (LO%LAYGOV.EQ.1 .OR. LO%LAYGOV.EQ.3) CR_LIMIT = 0.35
	     IF (CR .GT. CR_LIMIT) THEN
		    WRITE (*,*) '       WARNING: CR TOO LARGE, DT ADJUSTED!'
			DT = CR_LIMIT*DEL_X/SQRT(GRAV*H_MAX)
		 ENDIF
		 IF (DT.LE.LO%DT) LO%DT = DT
      ENDIF

!.....ASSIGN DEPENDENT VARIABLES
	  IF (LO%LAYCORD.EQ.1) THEN
	     LO%RX = LO%DT/LO%DX
	     LO%RY = LO%DT/LO%DY
	     LO%GRX = GRAV*LO%RX
	     LO%GRY = GRAV*LO%RY
	  ENDIF

!.....CHECK COURANT CONDITION FOR 2ND-LEVEL GRIDS
      !CAN'T OMP
	  DO K=1,NUM_GRID
	     IF (LA(K)%LAYSWITCH.EQ.0 .AND. LA(K)%PARENT.EQ.LO%ID) THEN
			H_MAX = GX
	        DO I=1,LA(K)%NX
	           DO J=1,LA(K)%NY
		          IF ( LA(K)%H(I,J) .GT. H_MAX ) H_MAX = LA(K)%H(I,J)
               ENDDO
            ENDDO
            IF (LA(K)%LAYCORD .EQ. 0) THEN 
			   !CONVERT TO ARC LENGTH (M) IF SPHERICAL COORD.
	           LAT_MAX = AMAX1(ABS(LA(K)%Y(1)),						&
								ABS(LA(K)%Y(LA(K)%NY)))*RAD_DEG
		       DX = R_EARTH*COS(LAT_MAX)*(LA(K)%DX*RAD_MIN)
		       DY = R_EARTH*(LA(K)%DY*RAD_MIN)
	        ELSE
	           DX = LA(K)%DX
		       DY = LA(K)%DY
	        ENDIF
			CR_LIMIT = 0.5
			IF (LA(K)%LAYGOV.EQ.1 .OR. LA(K)%LAYGOV.EQ.3)			&
													CR_LIMIT = 0.35
	        DEL_X = AMIN1(DX,DY) !FIND THE SMALLER BETWEEN DX AND DY
			DT = CR_LIMIT*DEL_X/SQRT(GRAV*H_MAX)
			IF (DT .GE. LO%DT) THEN
			   LA(K)%DT = LO%DT
			   LA(K)%REL_TIME = 1
			ELSE
			   IR = FLOOR(LO%DT/DT)+1
			   LA(K)%REL_TIME = IR
			   LA(K)%DT = LO%DT/IR
			ENDIF
!			LA(K)%REL_TIME = 2
!			LA(K)%DT = LO%DT/LA(K)%REL_TIME
!!			ASSIGN DEPENDENT VARIABLES
			IF (LA(K)%LAYCORD.EQ.1) THEN
			   LA(K)%RX = LA(K)%DT/LA(K)%DX
			   LA(K)%RY = LA(K)%DT/LA(K)%DY
			   LA(K)%GRX = GRAV*LA(K)%RX
			   LA(K)%GRY = GRAV*LA(K)%RY
			ENDIF
         ENDIF
	  ENDDO

! 3 - 12TH LEVEL GRIDS
      NUM_LEVEL = NUM_GRID+1
      DO KL = 3,NUM_LEVEL
	     DO I=1,NUM_GRID
	        IF (LA(I)%LAYSWITCH.EQ.0 .AND. LA(I)%LEVEL.EQ.KL-1) THEN
		       DO J = 1,NUM_GRID
			      IF (LA(J)%LAYSWITCH.EQ.0 .AND.					&
									LA(J)%PARENT.EQ.LA(I)%ID) THEN
					 H_MAX = GX
					 DO KI=1,LA(J)%NX
	                    DO KJ=1,LA(J)%NY
		                   IF ( LA(J)%H(KI,KJ) .GT. H_MAX )			&
										H_MAX = LA(J)%H(KI,KJ)
                        ENDDO
					 ENDDO
					 IF (LA(J)%LAYCORD .EQ. 0) THEN
					 !CONVERT TO ARC LENGTH (M) IF SPHERICAL COORD. 
						LAT_MAX = AMAX1(ABS(LA(J)%Y(1)),			&
									ABS(LA(J)%Y(LA(J)%NY)))*RAD_DEG

					    DX = R_EARTH*COS(LAT_MAX)*(LA(J)%DX*RAD_MIN)
					    DY = R_EARTH*(LA(J)%DY*RAD_MIN)
					 ELSE
						DX = LA(J)%DX
						DY = LA(J)%DY
					 ENDIF

					 CR_LIMIT = 0.5
					 IF (LA(J)%LAYGOV.EQ.1 .OR. LA(J)%LAYGOV.EQ.3)	&
													CR_LIMIT = 0.35
					 !FIND THE SMALLER BETWEEN DX AND DY
					 DEL_X = AMIN1(DX,DY) 
					 DT = CR_LIMIT*DEL_X/SQRT(GRAV*H_MAX)
					 IF (DT .GE. LA(I)%DT) THEN
						LA(J)%DT = LA(I)%DT
						LA(J)%REL_TIME = 1

					 ELSE
						IR = FLOOR(LA(I)%DT/DT)+1
						LA(J)%REL_TIME = IR
						LA(J)%DT = LA(I)%DT/IR
					 ENDIF
!					 LA(J)%REL_TIME = 2
!					 LA(J)%DT = LA(I)%DT/LA(J)%REL_TIME
!!					 ASSIGN DEPENDENT VARIABLES
					 IF (LA(J)%LAYCORD.EQ.1) THEN
					    LA(J)%RX = LA(J)%DT/LA(J)%DX
					    LA(J)%RY = LA(J)%DT/LA(J)%DY
					    LA(J)%GRX = GRAV*LA(J)%RX
					    LA(J)%GRY = GRAV*LA(J)%RY
					 ENDIF
			      ENDIF
			   ENDDO
            ENDIF
         ENDDO
	  ENDDO

	  RETURN
	  END


!----------------------------------------------------------------------
      SUBROUTINE COORD_CONVERT (X_UTM,Y_UTM,LON,LAT,OLON,OLAT,OPTION)
!......................................................................	  
!DESCRIPTION:
!     #. MAKE CONVERSION BETWEEN UTM AND LATITUDE AND LONGITUDE
!	  #. BE CAREFUL NOT TO CROSS DIFFERENT ZONES (INCL. THE EQUATOR);
!	  #. OPTION:
!			= 0: CONVERT LATITUDE/LONGITUDE TO UTM (X,Y);
!			= 1: CONVERT UTM (X,Y) TO LATITUDE/LONGITUDE;
!INPUT:
!	  #. LATITUDE AND LONGITUDE FOR OPTION = 0;
!	  #. X_UTM,Y_UTM,OLAT,OLON FOR OPTION = 1; OLAT AND OLON ARE USED TO
!		 IDENTIFY THE UTM ZONE;
!OUTPUT:
!	  #. UTM COORDINATES, X (EASTING) AND Y (NORTHING) WITH FALSE	
!		 NORTHING AND EASTING CORRECTION FOR OPTION = 0;
!	  #. LAT/LON COORDINATES FOR OPTION = 0;
!NOTE:
!     #. CREATED ON JAN 05 2009 (XIAOMING WANG, GNS)
!     #. UPDATED ON JAN 15 2009 (XIAOMING WANG, GNS)
!	  #. UPDATED ON MAR 10 2009 (XIAOMING WANG, GNS)
!		 1. ADD CONVERSION FROM UTM TO SPHERICAL
!----------------------------------------------------------------------
	  REAL X_UTM,Y_UTM,X,Y,X0,Y0,LAT,LON,LAT0,LON0,OLON,OLAT
	  REAL FALSE_NORTHING, FALSE_EASTING,ZONE_WIDTH
	  INTEGER NUM_ZONE,I,J,M,N,OPTION
	  REAL ZC(60)
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

	  LON0 = 0.0
	  LAT0 = 0.0
	  !DEFINE CENTRAL MERIDIAN OF UTM ZONES
	  !NOTE: THE INDEX NO. DOESN'T CORRESPOND TO TRUE UTM ZONE NUMBER
	  NUM_ZONE = 60		! TOTAL NUMBER OF UTM ZONES
	  ZONE_WIDTH = 6.0  ! WIDTH OF A UTM ZONE
	  ZC(1) = 3.0		!CENTRAL MERIDIAN OF THE FIRST UTM ZONE !-177.0
	  DO I = 2,NUM_ZONE
		 ZC(I) = ZC(1) + (I-1)*ZONE_WIDTH
	  ENDDO
	  !FIND THE UTM ZONE (CENTRAL MERIDIAN) OF INPUT COORDINATES
	  KI = 1
	  DO I = 1,NUM_ZONE
		 IF (OLON.GE.(ZC(I)-3.0) .AND. OLON.LT.(ZC(I)+3.0)) THEN
			LON0 = ZC(I)
		 ENDIF
	  ENDDO

	  IF (OLAT.LT.ZERO) THEN
		 FALSE_NORTHING = 10000000.0
      ELSE
		 FALSE_NORTHING = 0.0
	  ENDIF
	  FALSE_EASTING = 500000.0

	  IF (OPTION.EQ.0) THEN
	     X_UTM = 0.0
	     Y_UTM = 0.0
	     X = 0.0
	     Y = 0.0

	     CALL SPH_TO_UTM (X,Y,LON,LAT,LON0,LAT0)

	     X_UTM = X + FALSE_EASTING
	     Y_UTM = Y + FALSE_NORTHING
	  ENDIF

	  IF (OPTION.EQ.1) THEN
		 X = X_UTM - FALSE_EASTING
		 Y = Y_UTM - FALSE_NORTHING

	     CALL UTM_TO_SPH (X,Y,LON,LAT,LON0,LAT0)

	  ENDIF
	  
	  RETURN
	  END


!----------------------------------------------------------------------
      SUBROUTINE UTM_TO_SPH (X,Y,LON,LAT,LON0,LAT0)
!......................................................................
!DESCRIPTION:
!     #. MAPPING A POINT ON A PLANE ONTO THE ELLIPSOID SURFACE;
!	  #. USE REVERSE TRANSVERSE MERCATOR PROJECTION;
!     #. CONVERT UTM (NO FALSE NORTHING/EASTING) TO LATITUDE/LONGITUDE;
!     #. UTM COORDINATES RELATIVE TO USER-DEFINED NATURAL ORIGIN
!INPUT:
!     X: X COORDINATE/EASTING IN METERS RELATIVE TO NATURAL ORIGIN
!     Y: Y COORDINATE/NORTHING IN METERS RELATIVE TO NATURAL ORIGIN
!     LAT0: LATITUDE OF NATURAL ORIGIN IN DEGREES (USER-DEFINED)
!     LON0: LONGITUDE OF NATURAL ORIGIN IN DEGREES (USER-DEFINED)
!OUTPUT:
!     LAT: LATITUDE IN DEGREES
!     LON: LONGITUDE IN DEGREES
!REFERENCES:
!	  #. SNYDER, J.P. (1987). MAP PROJECTIONS - A WORKING MANUAL.
!                          USGS PROFESSIONAL PAPER 1395
!	  #. POSC SPECIFICATIONS 2.2
!     #. ELLIPSOIDAL DATUM: WGS84
!NOTES:
!     CREATED ON DEC22 2008 (XIAOMING WANG, GNS)     
!	  UPDATED ON JAN05 2009 (XIOAMING WANG, GNS)              
!----------------------------------------------------------------------
      REAL X,Y,XF,YF,LATIN,LONIN,LAT0,LON0,LAT,LON,LT0,LN0
	  REAL E,ES,F2,F4,F6,RHO,RHO0,M,N,NU,NU0
	  REAL LT1,NU1,RHO1,T1,C1,D,D1,CS1,E1,MU1,S1
	  REAL TMP,TMP0
	  REAL CS,SN,CS0,SN0,SIN1,TN,TN0,POLE,P,S,C,T
	  REAL K0,K1,K2,K3,K4,K5,K10,K20,K30,K40,K50
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

	  POLE = PI/2.0 - EPS	  !AVOID SINGULARITY AT POLES	  
!.....CONSTANTS BASED ON WGS84 DATUM
	  A = 6378137.0
	  B = 6356752.3142
	  K0 = 0.9996
	  
	  E = 0.081819190928906           ! E = SQRT(1-B**2/A**2)
	  ES = 0.006739496756587          ! ES = E**2/(1-E**2)
	  N = 0.001679220389937           ! N = (A-B)/(A+B)
	  	  
	  F2 = 0.006694380004261		! F2=E**2
	  F4 = 0.00004481472364144701   ! F4=E**4
	  F6 = 0.0000003000067898417773 ! F6=E**6

!.....FALSE EASTING AND NORTHING
	  XF = 0.0
	  YF = 0.0
!*	  XF = 500000.0							  ! FOR NORTH HEMISPHERE
!*	  IF (LATIN .LT. 0.0) YF = 10000000.0     ! FOR SOUTH HEMISPHERE
!.....CONVERT DEGREES TO RADIAN
	  LT0 = LAT0*RAD_DEG
	  LN0 = LON0*RAD_DEG

	  IF (LT0 .GT. POLE) LT0 = POLE
	  IF (LT0 .LT. -POLE) LT0 = -POLE

	  S0 = A*((1.0-F2/4.0-3.0*F4/64.0-5.0*F6/256.)*LT0				&
	         -(3.*F2/8.0+3.0*F4/32.0+45.0*F6/1024.0)*SIN(2.0*LT0)	&
			 +(15.0*F4/256.0+45.0*F6/1024.0)*SIN(4.0*LT0)			&
			 -(35.0*F6/3072.0)*SIN(6.0*LT0))

	  S1 = S0 + (Y-YF)/K0
	  MU1 = S1/A/(1.0-F2/4.0-3.0*F4/64.0-5.0*F6/256.0)
	  E1 = (1.0-SQRT(1.0-F2))/(1.0+SQRT(1.0-F2))
	  LT1 = MU1+(3.0*E1/2.0-27.0*E1**3/32.0)*SIN(2.0*MU1)			&
	           +(21.0*E1**2/16.0-55.0*E1**4/32.0)*SIN(4.0*MU1)		&
			   +(151.0*E1**3/96.0)*SIN(6.0*MU1)						&
			   +(1097.0*E1**4/512.0)*SIN(8.0*MU1)

	  IF (LT1 .GT. POLE) LT1 = POLE
	  IF (LT1 .LT. -POLE) LT1 = -POLE

	  TMP1 = SQRT(1.0-F2*SIN(LT1)**2)
	  NU1 = A/TMP1
	  RHO1 = A*(1.0-F2)/TMP1**3
	  T1 = TAN(LT1)**2
	  C1 = ES*COS(LT1)**2
	  D = (X-XF)/NU1/K0

	  LAT = LT1 - NU1*TAN(LT1)/RHO1*(D**2/2.0						&
	            -(5.0+3.0*T1+10.0*C1-4.0*C1**2-9.0*ES)*D**4/24.0	&
				+(61.0+90.0*T1+298.0*C1+45.0*T1**2-252*ES			&
				-3.0*C1**2)*D**6/720.0)

	  LON = LN0 + 1.0/COS(LT1) * (D-(1.0+2.0*T1+C1)*D**3/6.0		&
	            + (5.0-2.0*C1+28.0*T1-3.0*C1**2+8.0*ES+24.0*T1**2)	&
				* D**5/120.0)

!     CONVERT UNITS FROM RADIAN TO DEGREES
	  LAT = LAT*180.0/PI
	  LON = LON*180.0/PI
!	  WRITE(*,*) X,Y

      RETURN
      END        

!----------------------------------------------------------------------
      SUBROUTINE SPH_TO_UTM (X,Y,LONIN,LATIN,LON0,LAT0)
!......................................................................
!DESCRIPTION:
!     #. MAPPING A POINT ON THE ELLIPSOID SURFACE ONTO A PLANE;
!	  #. USE TRANSVERSE MERCATOR PROJECTION
!     #. CONVERT LATITUDE/LONGITUDE TO UTM (NO FALSE NORTHING/EASTING);
!     #. UTM COORDINATES RELATIVE TO USER-DEFINED NATURAL ORIGIN
!INPUT:
!     LATIN: LATITUDE IN DEGREES
!     LONIN: LONGITUDE IN DEGREES
!     LAT0: LATITUDE OF NATURAL ORIGIN IN DEGREES (USER-DEFINED)
!     LON0: LONGITUDE OF NATURAL ORIGIN IN DEGREES (USER-DEFINED)
!OUTPUT:
!     X: X COORDINATE/EASTING IN METERS RELATIVE TO NATURAL ORIGIN
!     Y: Y COORDINATE/NORTHING IN METERS RELATIVE TO NATURAL ORIGIN
!REFERENCES:
!	  #. SNYDER, J.P. (1987). MAP PROJECTIONS - A WORKING MANUAL.
!                          USGS PROFESSIONAL PAPER 1395
!	  #. POSC SPECIFICATIONS 2.2
!     #. ELLIPSOIDAL DATUM: WGS84
!NOTES:
!     CREATED ON DEC22 2008 (XIAOMING WANG, GNS)     
!	  UPDATED ON JAN05 2009 (XIOAMING WANG, GNS)              
!----------------------------------------------------------------------
      REAL X,Y,XF,YF,LATIN,LONIN,LAT0,LON0,LAT,LON,LT0,LN0
	  REAL E,ES,F2,F4,F6,RHO,RHO0,M,N,NU,NU0
	  REAL TMP,TMP0
	  REAL CS,SN,CS0,SN0,SIN1,TN,TN0,POLE,P,S,C,T
	  REAL K0,K1,K2,K3,K4,K5,K10,K20,K30,K40,K50
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

	  POLE = PI/2.0 - EPS	  !AVOID SINGULARITY AT POLES	  
!.....CONSTANTS BASED ON WGS84 DATUM
	  A = 6378137.0
	  B = 6356752.3142
	  K0 = 0.9996
	  
	  E = 0.081819190928906           ! E = SQRT(1-B**2/A**2)
	  ES = 0.006739496756587          ! ES = E**2/(1-E**2)
	  N = 0.001679220389937           ! N = (A-B)/(A+B)
	  	  
	  F2 = 0.006694380004261		! F2=E**2
	  F4 = 0.00004481472364144701   ! F4=E**4

	  F6 = 0.0000003000067898417773 ! F6=E**6

!.....FALSE EASTING AND NORTHING
!*	  XF = 0.0
!*	  YF = 0.0								! FOR NORTH HEMISPHERE
!*	  XF = 500000.0
!*	  IF (LATIN .LT. 0.0) YF = 10000000.0   ! FOR SOUTH HEMISPHERE;  
!.....CONVERT DEGREES TO RADIAN
	  LAT = LATIN*RAD_DEG
	  LON = LONIN*RAD_DEG
	  LT0 = LAT0*RAD_DEG
	  LN0 = LON0*RAD_DEG

	  IF (LAT .GT. POLE) LAT = POLE
	  IF (LAT .LT. -POLE) LAT = -POLE
	  IF (LT0 .GT. POLE) LT0 = POLE
	  IF (LT0 .LT. -POLE) LT0 = -POLE

	  CS = COS(LAT)
	  SN = SIN(LAT)
	  TN = SN/CS

	  CS0 = COS(LT0)
	  SN0 = SIN(LT0)
	  TN0 = SN0/CS0

	  TMP = SQRT(1.0-F2*SN**2)
	  NU = A/TMP

	  T = TN**2
	  C = ES*CS**2
	  P = (LON-LN0)*CS

	  S = A*((1.0-F2/4.0-3.0*F4/64.0-5.0*F6/256.0)*LAT				&
	         -(3.0*F2/8.0+3.0*F4/32.0+45.0*F6/1024.0)*SIN(2.0*LAT)	&
			 +(15.0*F4/256.0+45.0*F6/1024.0)*SIN(4.0*LAT)			&
			 -(35.0*F6/3072.0)*SIN(6.0*LAT))

	  S0 = A*((1.0-F2/4.0-3.0*F4/64.0-5.0*F6/256.)*LT0				&
	         -(3.*F2/8.0+3.0*F4/32.0+45.0*F6/1024.0)*SIN(2.0*LT0)	&
			 +(15.0*F4/256.0+45.0*F6/1024.0)*SIN(4.0*LT0)			&
			 -(35.0*F6/3072.0)*SIN(6.0*LT0))

	  X = K0*NU*(P+(1.0-T+C)*P**3/6.0 &
	         + (5.0-18.0*T+T**2+72.0*C-58.0*ES)*P**5/120.0)

	  Y = K0*(S-S0+NU*TN*(P**2/2.0+(5.0-T+9.0*C+4.0*C**2)*P**4/24.0 &
	         + (61.0-58.0*T+T**2+600.0*C-330.0*ES)*P**6/720.0))

!*	  X = XF + X
!*	  Y = YF + Y

!	  WRITE(*,*) X,Y

      RETURN
      END        


!----------------------------------------------------------------------
	  SUBROUTINE READ_INI_SURFACE (LO,LA,FAULT_INFO)
!......................................................................
!DESCRIPTION:
!	  #. READ BATHYMETRY DATA FROM WATER DEPTH FILES, CREATE COMCOT 
!		 GRIDS FOR NUMERICAL SIMULATION AND WRITE THE COMCOT GRID DATA
!	     INTO DATA FILES (PART OF ORIGINAL BATHYMETRY);
!NOTES:
!	  #. LAST REVISE: NOV.10 2008 (XIAOMING WANG, GNS)
!	  #. UPDATED ON FEB 26 2009 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  USE FAULT_PARAMS
      TYPE (LAYER) :: LO
	  TYPE (LAYER), DIMENSION(NUM_GRID)  :: LA
      TYPE (FAULT),DIMENSION(NUM_FLT)	:: FAULT_INFO
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
      
      WRITE (*,*) 'READING WATER SURFACE DISPLACEMENT DATA...'

	  !LOAD CUSTOMIZED WATER SURFACE DISPLACEMENT FROM A FILE
      IF (LO%LAYSWITCH.EQ.0 .AND. FAULT_INFO(1)%FS.EQ.0) THEN
	     CALL READ_COMCOT_DEFORM (LO,FAULT_INFO(1))
	  ENDIF
      IF (LO%LAYSWITCH.EQ.0 .AND. FAULT_INFO(1)%FS.EQ.1) THEN
	     CALL READ_MOST_DEFORM (LO,FAULT_INFO(1))
	  ENDIF
      IF (LO%LAYSWITCH.EQ.0 .AND. FAULT_INFO(1)%FS.EQ.2) THEN
	     CALL READ_XYZ_DEFORM (LO,FAULT_INFO(1))
	  ENDIF

	  !INTEROLATE WATER SURFACE DEFORMATION TO ALL SUB-GRIDS
	  CALL ININTERP(LO,LA)

	  !APPLY DISPLACEMENT ONTO ORIGINAL WATER SURFACE
	  IF (LO%LAYSWITCH .EQ. 0) THEN
	     LO%Z(:,:,1) = LO%Z(:,:,1) + LO%DEFORM(:,:)
	  ENDIF
	  DO K = 1,NUM_GRID
	     IF (LA(K)%LAYSWITCH .EQ. 0) THEN
		    LA(K)%Z(:,:,1) = LA(K)%Z(:,:,1) + LA(K)%DEFORM(:,:)
		 ENDIF
	  ENDDO


      RETURN
      END



!----------------------------------------------------------------------
	  SUBROUTINE READ_BATHYMETRY (LO,LA)
!......................................................................
!DESCRIPTION:
!	  #. READ BATHYMETRY DATA FROM WATER DEPTH FILES, CREATE COMCOT 
!		 GRIDS FOR NUMERICAL SIMULATION AND WRITE THE COMCOT GRID DATA
!	     INTO DATA FILES (PART OF ORIGINAL BATHYMETRY);
!NOTES:
!	  #. LAST REVISE: NOV.10 2008 (XIAOMING WANG, GNS)
!	  #. UPDATED ON FEB 26 2009 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) :: LO
      TYPE (LAYER), DIMENSION(NUM_GRID)  :: LA
      COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
            
      IF (LO%LAYSWITCH .EQ. 0) THEN	 
        WRITE (*,*) 'READING BATHYMETRY DATA...'	 
	    IF (LO%FS .EQ. 0) CALL READ_COMCOT_BATHY(LO)
	    IF (LO%FS .EQ. 1) CALL READ_MOST_BATHY(LO)
        IF (LO%FS .EQ. 2) CALL READ_XYZ_BATHY(LO)
	    IF (LO%FS .EQ. 3) CALL READ_ETOPO_BATHY(LO)
		!WRITE BATHYMETRY DATA OF COMPUTATIONAL DOMAIN INTO FILE
 	    CALL BATHY_WRITE (LO)
	  END IF

	 
	  DO I=1,NUM_GRID
        IF (LA(I)%LAYSWITCH .EQ. 0) THEN
        IF (LA(I)%FS .EQ. 0) CALL READ_COMCOT_BATHY(LA(I))
        IF (LA(I)%FS .EQ. 1) CALL READ_MOST_BATHY(LA(I))
        IF (LA(I)%FS .EQ. 2) CALL READ_XYZ_BATHY(LA(I))
        IF (LA(I)%FS .EQ. 3) CALL READ_ETOPO_BATHY(LA(I))
		!WRITE BATHYMETRY DATA OF COMPUTATIONAL DOMAIN INTO FILE
          CALL BATHY_WRITE (LA(I))
        END IF
	  END DO

!///// ADJUST BATHYMETRY, TIME STEP AND CALC DEPENDENT PARAMETERS /////
	  CALL ADJUST_BATHYMETRY (LO,LA) !190624
	  !WRITE BATHYMETRY DATA OF COMPUTATIONAL DOMAIN INTO FILE
	  CALL BATHY_WRITE (LO)	 	  

	  !WRITE BATHYMETRY DATA OF COMPUTATIONAL DOMAIN INTO FILE
	  DO I=1,NUM_GRID
        IF (LA(I)%LAYSWITCH .EQ. 0) THEN			
          CALL BATHY_WRITE (LA(I))
        END IF
	  END DO

      RETURN
      END


!----------------------------------------------------------------------
      SUBROUTINE READ_COMCOT_BATHY (LO)
!......................................................................
!DESCRIPTION:
!	  #. READ BATHYMETRY DATA WRITTEN IN COMCOT FORMAT
!NOTES:
!	  #. LAST REVISE: NOV.18 2008 (XIAOMING WANG)
!	  #. UPDATED ON DEC 18 2008 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) :: LO
      INTEGER      :: ISTAT, IS, JS, I, J
      INTEGER	   :: LENGTH, RC !, FLAG
	  INTEGER  NX,NY
	  REAL DX,DY
	  ! 120211 TMP�S�Ψ�,H��LO%H���N
	  !REAL,ALLOCATABLE :: H(:,:),TMP(:,:),X(:),Y(:)
	  REAL,ALLOCATABLE :: X(:),Y(:)
      CHARACTER(LEN=30) FNAME
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

	  IF (LO%LAYGOV.EQ.0) THEN
	     DX = LO%DX/60.0
	     DY = LO%DY/60.0
	  ELSE
	     DX = LO%DX
		 DY = LO%DY
	  ENDIF
	  NX = NINT((LO%X_END-LO%X_START)/DX)+1
	  NY = NINT((LO%Y_END-LO%Y_START)/DY)+1
	  ALLOCATE(X(NX))
	  ALLOCATE(Y(NY))
	  ! 120211 TMP�S�Ψ�,H��LO%H���N
	  !ALLOCATE(H(NX,NY))
	  !ALLOCATE(TMP(NX,NY))
	  X = 0.0
	  Y = 0.0
	  H = 0.0
	  TMP = 0.0
	  IF (LO%UPZ) THEN
!*	     DO I = 1,NX
!*	        X(I) = LO%X_START + (I-1)*DX
!*	     END DO
!*	     DO J = 1,NY
!*	        Y(J) = LO%Y_START + (J-1)*DY
!*	     END DO	
	  ELSE
	     DO I = 1,NX
	        X(I) = (I-1)*DX
	     END DO
	     DO J = 1,NY
	        Y(J) = (J-1)*DY
	     END DO	
	  ENDIF

      IF (LO%ID .EQ. 1) THEN
	    IS = 1
        JS = 1
      ELSE 
	    IS = 2
        JS = 2
      END IF

      WRITE (*,*) '    READING BATHMETRY DATA OF LAYER ID',LO%ID
      
      OPEN (UNIT=23,FILE=LO%DEPTH_NAME,STATUS='OLD',IOSTAT=ISTAT)
      IF (ISTAT /=0) THEN
         PRINT *,"ERROR:: CAN'T OPEN WATERDEPTH DATA FILE; EXITING."
         STOP
      END IF
      DO J=1,NY
!         READ (23,'(10F9.3)') (H(I,J),I=1,NX)
         READ (23,'(10F9.3)') (LO%H(I,J),I=1,NX)
         !DO I=1,NX
		 ! H��LO%H���N,�a�J���a���ɧ令�@��
         !  READ (23,*) LO%H(I,J) 
		 !END DO
      END DO	  
      CLOSE (23)
! 120211 old format bug?? ���Τ���
!MAP THE BATHYMETRY DATA ONTO NUMERICAL GRIDS VIA BILINEAR INTERPOLATION
!      IF (LO%LEVEL.EQ.1) THEN
!	     CALL GRID_INTERP (LO%H,LO%X,LO%Y,LO%NX,LO%NY,H,X,Y,NX,NY)
!	  ELSE
!         CALL GRID_INTERP (LO%H(2:LO%NX,2:LO%NY),LO%X(2:LO%NX),		&
!			               LO%Y(2:LO%NY),LO%NX-1,LO%NY-1,H,X,Y,NX,NY)
!	  ENDIF
!      WRITE(*,*) L%H(1,1),L%H(L%NX,L%NY)

      IF (LO%PARENT.GE.1) THEN
!.....INTERPOLATED TO GET BATH VALUE FOR ADDITIONAL COLUMN AND ROW
	     LO%H(1,:)=LO%H(2,:)*2.0-LO%H(3,:)
	     LO%H(:,1)=LO%H(:,2)*2.0-LO%H(:,3)
         LO%Y(1) = 2.0*LO%Y(2)-LO%Y(3)
      END IF

	  IF (LO%INI_SWITCH.EQ.3 .OR. LO%INI_SWITCH.EQ.4) THEN
         LO%HT(:,:,1) = LO%H(:,:)
	     LO%HT(:,:,2) = LO%H(:,:)
	  ENDIF

!*	  CALL PQ_DEPTH (LO)
      ! 120211 TMP�S�Ψ�,H��LO%H���N
	  !DEALLOCATE(H,TMP,X,Y,STAT = ISTAT)
      DEALLOCATE(X,Y,STAT = ISTAT)
      RETURN
      END


!----------------------------------------------------------------------
      SUBROUTINE READ_MOST_BATHY (LO)
!......................................................................
!DESCRIPTION:

!	  #. READ BATHYMETRY DATA FORMATTED FOR MOST MODEL
!NOTES:
!	  #. CREATED ON OCT 29 2008 (XIAOMING WANG, GNS)
!	  #. LAST REVISE: NOV.24 2008 (XIAOMING WANG)
!----------------------------------------------------------------------

      USE LAYER_PARAMS
      TYPE (LAYER) :: LO
      INTEGER      :: STAT, IS, JS, I, J, NX, NY
      INTEGER	   :: LENGTH, RC, POS !, FLAG
	  REAL,ALLOCATABLE :: H(:,:),TMP(:,:),X(:),Y(:),YTMP(:)
!      CHARACTER(LEN) FNAME
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

      WRITE (*,*) '    READING MOST-FORMATED BATHMETRY FOR LAYER ID',LO%ID
      OPEN (UNIT=23,FILE=LO%DEPTH_NAME,STATUS='OLD',IOSTAT=ISTAT,	&
													FORM='FORMATTED')
      IF (ISTAT /=0) THEN
         PRINT *,"ERROR:: CAN'T OPEN WATERDEPTH DATA FILE; EXITING."
         STOP
      END IF
      READ (23,*) NX,NY

      ALLOCATE(X(NX))
	  ALLOCATE(Y(NY))
	  ALLOCATE(YTMP(NY))
	  ALLOCATE(TMP(NX,NY))
	  ALLOCATE(H(NX,NY))
	  X = 0.0
	  Y = 0.0
	  YTMP = 0.0
	  TMP = 0.0
	  H = 0.0

      READ (23,*) (X(I), I=1,NX)
      READ (23,*) (YTMP(I), I=1,NY)
      DO J = 1,NY
        READ (23,*) (TMP(I,J), I=1,NX)
      END DO
      CLOSE (23)

!.....CONVERT THE FORMAT FROM MOST COORDINATES INTO COMCOT COORDINATES
! NOTE: IN MOST DATA, Y POINTING TO THE SOUTH
!       IN COMCOT, Y POINTING TO THE NORTH
!!....DATA NEED TO FLIP
      ! FLIP Y COORDINATES
!OMP 111025 v1
!$omp parallel
!$omp do private(J) firstprivate(K)
      DO J = 1,NY
	     K = NY-J+1
		 Y(K) = YTMP(J)
	  END DO
!$omp do private(I,J)  firstprivate(K)
      ! FLIP BATHYMETRY MATRIX
      DO I = 1,NX
	     DO J = 1,NY
		    K = NY - J + 1
			H(I,K) = TMP(I,J)
		 END DO
	  END DO
!$omp end parallel	  
!      WRITE(*,*) H(1,NY),H(NX,1)

      IF (X(1).EQ.LO%X(1) .AND. Y(1).EQ.LO%Y(LO%NY) .AND.			&
								NX.EQ.LO%NX .AND. NY.EQ.LO%NY) THEN
	     LO%H(:,:) = H(:,:)
	  ELSE
!MAP THE BATHYMETRY DATA ONTO NUMERICAL GRIDS VIA BILINEAR INTERPOLATION
         CALL GRID_INTERP (LO%H,LO%X,LO%Y,LO%NX,LO%NY,H,X,Y,NX,NY)
	  ENDIF

	  IF (LO%INI_SWITCH.EQ.3 .OR. LO%INI_SWITCH.EQ.4) THEN
         LO%HT(:,:,1) = LO%H(:,:)
	     LO%HT(:,:,2) = LO%H(:,:)
	  ENDIF

!*	  IF (ABS(LO%H_LIMIT).GT.0.00001) CALL DEPTH_LIMIT (LO)
!.....CALCULATE STILL WATER DEPTH AT VOLUME FLUX LOCATIONS
!*	  CALL PQ_DEPTH (LO)
	  DEALLOCATE(H,TMP,X,Y,YTMP,STAT=ISTAT) 

      RETURN
      END

!----------------------------------------------------------------------
      SUBROUTINE READ_XYZ_BATHY (LO)
!......................................................................
!DESCRIPTION:
!	  #. READ XYZ FORMAT (ASCII) BATHYMETRY DATA;
!     #. GRIDDED DEFORMATION DATA CONTAINS 3 COLUMNS: X COORDINATES,  
!		 Y COORDINATES, WATERDEPTH (Z);
!	  #. COORDINATE SYSTEM IS DEFINED SO THAT X POINTING TO THE EAST 
!		 (LONGITUDE) AND Y AXIS POINTING TO THE NORTH (LATITUDE);
!     #. GRID DATA IS WRITTEN ROW BY ROW (X FIRST) FROM WEST TO EAST, 
!		 FROM SOUTH TO NORTH (OR FOR NORTH TO SOUTH); 
!     #. NODATA TYPE, NAN, IS NOT ALLOWED
!NOTES: 
!     #. CREATED ON NOV 05 2008 (XIAOMING WANG, GNS)
!     #. LAST REVISE: NOV.24 2008 (XIAOMING WANG)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) :: LO
	  REAL,ALLOCATABLE :: HTMP(:,:),H(:,:)
	  REAL,ALLOCATABLE :: XCOL(:),YCOL(:),ZCOL(:) 
	  REAL,ALLOCATABLE :: X(:),Y(:),XTMP(:),YTMP(:)
      INTEGER      STAT, IS, JS, I, J
!      INTEGER	   LENGTH, RC, POS !, FLAG
	  INTEGER      COUNT
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

      WRITE (*,*) '    READING XYZ BATHMETRY DATA FOR LAYER ID',LO%ID
      OPEN (UNIT=23,FILE=LO%DEPTH_NAME,STATUS='OLD',				&
									IOSTAT=ISTAT,FORM='FORMATTED')
      IF (ISTAT /=0) THEN
         PRINT *,"ERROR:: CAN'T OPEN WATERDEPTH DATA FILE; EXITING."
         STOP
      END IF

!.....DETERMINE THE LENGTH OF BATHYMETRY DATA FILE
	  COUNT = 0
	  TEMP = 0.0
	  DO WHILE (ISTAT ==0)
		 COUNT = COUNT + 1
		 READ (23,*,IOSTAT=ISTAT) TEMP1,TEMP2,TEMP3
	  ENDDO
          COUNT=COUNT-1
          NXY = COUNT
	  ALLOCATE(XCOL(NXY))
	  ALLOCATE(YCOL(NXY))
	  ALLOCATE(ZCOL(NXY))
	  XCOL = 0.0
	  YCOL = 0.0
	  ZCOL = 0.0

!*!.....READING BATHYMETRY DATA
      REWIND(23)
	  DO I = 1,COUNT
         READ (23,*) XCOL(I), YCOL(I), ZCOL(I)
!		 IF (ISNAN(ZCOL(I))) ZCOL(I) = 9999.0
		 IF (ABS(ZCOL(I)).GE.HUGE(ZCOL(I))) ZCOL(I) = 9999.0
	  END DO
	  CLOSE (23)

!<<<  CHECK IF THE DATA IS WRITTEN ROW BY ROW
!.....DETERMINE GRID DIMENSION: NX,NY
      TMPX = XCOL(1)
	  TMPX1 = XCOL(2)
	  TMPY = YCOL(1)
	  TMPY1 = YCOL(2)
	  IF (ABS(TMPX1-TMPX).GT.EPS .AND. ABS(TMPY1-TMPY).LT.EPS) THEN
!*	  IF (TMPX1.NE.TMPX .AND. TMPY1.EQ.TMPY) THEN
	     K = 1
	     DO WHILE (TMPX1.GT.TMPX)
	        K=K+1
	        TMPX1 = XCOL(K)
	     ENDDO
	     NX = K-1
	     NY = NINT(DBLE(NXY/NX))
!	     WRITE (*,*) '       GRID DIMENSION OF BATHYMETRY: ', NX,NY
         ALLOCATE(X(NX))
	     ALLOCATE(Y(NY))
	     ALLOCATE(YTMP(NY))	
	     ALLOCATE(HTMP(NX,NY)) 
	     ALLOCATE(H(NX,NY))   
	     X = 0.0
	     Y = 0.0
	     YTMP = 0.0
	     HTMP = 0.0
	     H = 0.0 

!.....   OBTAINED X,Y COORDINATES
	     X(1:NX) = XCOL(1:NX)
	     !OMP 111025 1b
!$omp parallel
!$omp do private(J) firstprivate(K) 
	     DO J = 1,NY
	        K = (J-1)*NX + 1
	        YTMP(J) = YCOL(K)
	     END DO
	     !GENERATE GRID DATA
!$omp do private(J) firstprivate(KS,KE)
         DO J=1,NY
	        KS = (J-1)*NX + 1
		    KE = (J-1)*NX + NX
            HTMP(1:NX,J) = ZCOL(KS:KE)
         END DO
!$omp end parallel
	  ENDIF
!>>>>>
!<<<<<CHECK IF THE DATA IS WRITTEN COLUMN BY COLUMN
	  TMPX = XCOL(1)
	  TMPX1 = XCOL(2)
	  TMPY = YCOL(1)
	  TMPY1 = YCOL(2)
!	  write (*,*) TMPX,TMPX1,TMPY,TMPY1,NXY
	  IF (ABS(TMPX1-TMPX).LT.EPS .AND. ABS(TMPY1-TMPY).GT.EPS) THEN
!*	  IF (TMPX1.EQ.TMPX .AND. TMPY1.NE.TMPY) THEN
	     K = 1
	     DO WHILE (TMPX1.LE.TMPX)
	        K=K+1
	        TMPX1 = XCOL(K)
	     ENDDO
	     NY = K-1
!	     WRITE(*,*) NX
	     NX = NINT(DBLE(NXY/NY))

!*	     WRITE (*,*) '       GRID DIMENSION OF BATHYMETRY DATA: ', NX,NY
         ALLOCATE(X(NX))
	     ALLOCATE(Y(NY))
		 ALLOCATE(XTMP(NX))	
	     ALLOCATE(YTMP(NY))	
	     ALLOCATE(HTMP(NX,NY)) 
	     ALLOCATE(H(NX,NY))    
	     HTMP = 0.0
	     X = 0.0
	     Y = 0.0
	     YTMP = 0.0
	     H = 0.0
!........OBTAINED X,Y COORDINATES
	     YTMP(1:NY) = YCOL(1:NY)
!OMP 111025 v1
!$omp parallel
!$omp do private(I) firstprivate(K)
	     DO I = 1,NX
	        K = (I-1)*NY + 1
	        X(I) = XCOL(K)
	     END DO
	     !GENERATE GRID DATA
!$omp do private(I) firstprivate(KS,KE)
         DO I=1,NX
	        KS = (I-1)*NY + 1
		    KE = (I-1)*NY + NY
            HTMP(I,1:NY) = ZCOL(KS:KE)
         END DO
!$omp end parallel
	  ENDIF
!>>>>>


!!....DETERMINE IF THE DATA NEED FLIP
!     Y COORDINATE IS FROM NORTH TO SOUTH OR FROM SOUTH TO NORTH
!     IFLIP = 0: FLIP; 1: NO FLIP OPERATION
      IFLIP = 0
	  IF (YTMP(NY).LT.YTMP(NY-1)) IFLIP = 1
      
	  IF (IFLIP .EQ. 1) THEN
         ! FLIP Y COORDINATES
!OMP 111025 v1
!$omp parallel
!$omp do private(J) firstprivate(K)
         DO J = 1,NY
	        K = NY-J+1
		    Y(K) = YTMP(J)
	     END DO
		 
         ! FLIP BATHYMETRY MATRIX
!$omp do private(I,J) firstprivate(K)
         DO I = 1,NX
	        DO J = 1,NY
		       K = NY - J + 1
			   H(I,K) = HTMP(I,J)
		    END DO
	     END DO
!$omp end parallel
	  ELSE
	     Y = YTMP
		 H = HTMP
	  END IF
!*      WRITE (*,*) H(1,1),H(NX,NY),ZCOL(1),ZCOL(NXY)
!	  WRITE (*,*) 'THE CODE REACHES HERE!!!'
!MAP THE BATHYMETRY DATA ONTO NUMERICAL GRIDS VIA BILINEAR INTERPOLATION
      CALL GRID_INTERP (LO%H,LO%X,LO%Y,LO%NX,LO%NY,H,X,Y,NX,NY)

!      WRITE(*,*) L%H(1,1),L%H(L%NX,L%NY)

	  IF (LO%INI_SWITCH.EQ.3 .OR. LO%INI_SWITCH.EQ.4) THEN
         LO%HT(:,:,1) = LO%H(:,:)
	     LO%HT(:,:,2) = LO%H(:,:)
	  ENDIF

!	  WRITE (*,*) 'THE CODE finishes the interpolation!!!'
	  
!.....CALCULATE STILL WATER DEPTH AT DISCHARGE LOCATION P AND Q
!*	  CALL PQ_DEPTH (LO)
	  DEALLOCATE(HTMP,H,STAT=ISTAT)
	  DEALLOCATE(XCOL,YCOL,ZCOL,STAT=ISTAT)
	  DEALLOCATE(X,Y,XTMP,YTMP,STAT=ISTAT)

  
      RETURN
      END


!----------------------------------------------------------------------
      SUBROUTINE READ_ETOPO_BATHY (LO)
!......................................................................
!DESCRIPTION:
!	  #. READ XYZ FORMAT (ASCII) ETOPO BATHYMETRY DATA;
!     #. GRIDDED DEFORMATION DATA CONTAINS 3 COLUMNS: X COORDINATES,  
!		 Y COORDINATES, WATERDEPTH (Z);
!	  #. FOR ETOPO BATHYMETRY DATA, LONGITITUDE LARGER THAN 180E, IT 
!		 BECOMES A NEGATIVE VALUE; 3RD COLUMN SHOULD CHANGE SIGN TO 
!		 CONVERT IT TO WATERDEPTH;
!	  #. COORDINATE SYSTEM IS DEFINED SO THAT X POINTING TO THE EAST 
!		 (LONGITUDE) AND Y AXIS POINTING TO THE NORTH (LATITUDE);
!     #. GRID DATA IS WRITTEN ROW BY ROW (X FIRST) FROM WEST TO EAST, 
!		 FROM SOUTH TO NORTH (OR FOR NORTH TO SOUTH); 
!     #. NODATA TYPE, NAN, IS NOT ALLOWED
!NOTES: 
!     #. CREATED ON NOV 05 2008 (XIAOMING WANG, GNS)
!     #. LAST REVISE: FEB18 2009 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) :: LO
	  REAL,ALLOCATABLE :: HTMP(:,:),H(:,:)
	  REAL,ALLOCATABLE :: XCOL(:),YCOL(:),ZCOL(:) 
	  REAL,ALLOCATABLE :: X(:),Y(:),XTMP(:),YTMP(:)
      INTEGER      STAT, IS, JS, I, J
      INTEGER	   LENGTH, RC, POS !, FLAG
	  INTEGER      COUNT
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

      WRITE (*,*) '    READING ETOPO BATHMETRY DATA FOR LAYER ID',LO%ID
      write(*,*) LO%DEPTH_NAME
      OPEN (UNIT=23,FILE=LO%DEPTH_NAME,STATUS='OLD',IOSTAT=ISTAT,FORM='FORMATTED')

      IF (ISTAT /=0) THEN
         PRINT *,"ERROR:: CAN'T OPEN WATERDEPTH DATA FILE; EXITING."
         STOP
      END IF

!.....DETERMINE THE LENGTH OF BATHYMETRY DATA FILE
	  COUNT = 0
	  TEMP = 0.0
	  DO WHILE (ISTAT ==0)
		 COUNT = COUNT + 1
		 READ (23,*,IOSTAT=ISTAT) TEMP1,TEMP2,TEMP3
	  ENDDO
          COUNT=COUNT-1
          NXY = COUNT
	  ALLOCATE(XCOL(NXY))
	  ALLOCATE(YCOL(NXY))
	  ALLOCATE(ZCOL(NXY))
	  XCOL = 0.0
	  YCOL = 0.0
	  ZCOL = 0.0

!*!.....READING BATHYMETRY DATA
         REWIND(23)
	 DO I = 1,COUNT
         READ (23,*) XCOL(I), YCOL(I), ZCOL(I)
!		 IF (ISNAN(ZCOL(I))) ZCOL(I) = 9999.0
		 IF (ABS(ZCOL(I)).GE.HUGE(ZCOL(I))) ZCOL(I) = 9999.0
		 IF (XCOL(I).LT.0.0) XCOL(I) = XCOL(I) + 360.0
		 ZCOL(I) = -ZCOL(I)
	  END DO
	  CLOSE (23)

!<<<  CHECK IF THE DATA IS WRITTEN ROW BY ROW
!.....DETERMINE GRID DIMENSION: NX,NY
      TMPX = XCOL(1)
	  TMPX1 = XCOL(2)
	  TMPY = YCOL(1)
	  TMPY1 = YCOL(2)
	  IF (ABS(TMPX1-TMPX).GE.EPS .AND. ABS(TMPY1-TMPY).LT.EPS) THEN
!*	  IF (TMPX1.NE.TMPX .AND. TMPY1.EQ.TMPY) THEN
	     K = 1
	     DO WHILE (TMPX1.GT.TMPX)
	        K=K+1
	        TMPX1 = XCOL(K)
	     ENDDO
	     NX = K-1
	     NY = NINT(DBLE(NXY/NX))
!	     WRITE (*,*) '       GRID DIMENSION OF BATHYMETRY: ', NX,NY
         ALLOCATE(X(NX))
	     ALLOCATE(Y(NY))
	     ALLOCATE(YTMP(NY))	
	     ALLOCATE(HTMP(NX,NY)) 
	     ALLOCATE(H(NX,NY))   
	     X = 0.0
	     Y = 0.0
	     YTMP = 0.0
	     HTMP = 0.0
	     H = 0.0 

!.....   OBTAINED X,Y COORDINATES
	     X(1:NX) = XCOL(1:NX)
!OMP 111025 v1
!$omp parallel
!$omp do private(J) firstprivate(K)
	     DO J = 1,NY
	        K = (J-1)*NX + 1
	        YTMP(J) = YCOL(K)
	     END DO
	     !GENERATE GRID DATA
!$omp do private(J) firstprivate(KS,KE)
         DO J=1,NY
	        KS = (J-1)*NX + 1
		    KE = (J-1)*NX + NX
            HTMP(1:NX,J) = ZCOL(KS:KE)
         END DO
!$omp end parallel
	  ENDIF
!>>>>>
!<<<<<CHECK IF THE DATA IS WRITTEN COLUMN BY COLUMN
	  TMPX = XCOL(1)
	  TMPX1 = XCOL(2)
	  TMPY = YCOL(1)
	  TMPY1 = YCOL(2)
!	  write (*,*) TMPX,TMPX1,TMPY,TMPY1,NXY
	  IF (ABS(TMPX1-TMPX).LT.EPS .AND. ABS(TMPY1-TMPY).GT.EPS) THEN
!*	  IF (TMPX1.EQ.TMPX .AND. TMPY1.NE.TMPY) THEN
	     K = 1
	     DO WHILE (TMPX1.LE.TMPX)
	        K=K+1
	        TMPX1 = XCOL(K)
	     ENDDO
	     NY = K-1
!	     WRITE(*,*) NX
	     NX = NINT(DBLE(NXY/NY))

!*	     WRITE (*,*) '       GRID DIMENSION OF BATHYMETRY DATA: ', NX,NY
         ALLOCATE(X(NX))
	     ALLOCATE(Y(NY))
         ALLOCATE(XTMP(NX))	
	     ALLOCATE(YTMP(NY))	
	     ALLOCATE(HTMP(NX,NY)) 
	     ALLOCATE(H(NX,NY))    
	     HTMP = 0.0
	     X = 0.0
	     Y = 0.0
	     YTMP = 0.0
	     H = 0.0
!........OBTAINED X,Y COORDINATES
	     YTMP(1:NY) = YCOL(1:NY)
!OMP 111025 1b
!$omp parallel
!$omp do private(I) firstprivate(K)
	     DO I = 1,NX
	        K = (I-1)*NY + 1
	        X(I) = XCOL(K)
	     END DO
	     !GENERATE GRID DATA
!$omp do private(I) firstprivate(KS,KE)
         DO I=1,NX
	        KS = (I-1)*NY + 1
		    KE = (I-1)*NY + NY
            HTMP(I,1:NY) = ZCOL(KS:KE)
         END DO
!$omp end parallel
	  ENDIF
!>>>>>


!!....DETERMINE IF THE DATA NEED FLIP
!     Y COORDINATE IS FROM NORTH TO SOUTH OR FROM SOUTH TO NORTH
!     IFLIP = 0: FLIP; 1: NO FLIP OPERATION
      IFLIP = 0
	  IF (YTMP(NY).LT.YTMP(NY-1)) IFLIP = 1
      
	  IF (IFLIP .EQ. 1) THEN
         ! FLIP Y COORDINATES
!OMP 111025 1b
!$omp parallel
!$omp do private(J) firstprivate(K)
         DO J = 1,NY
	        K = NY-J+1
		    Y(K) = YTMP(J)
	     END DO
         ! FLIP BATHYMETRY MATRIX
!$omp do private(I,J) firstprivate(K)
         DO I = 1,NX
	        DO J = 1,NY
		       K = NY - J + 1
			   H(I,K) = HTMP(I,J)
		    END DO
	     END DO
!$omp end parallel
	  ELSE
	     Y = YTMP
		 H = HTMP
	  END IF
!*      WRITE (*,*) H(1,1),H(NX,NY),ZCOL(1),ZCOL(NXY)

!MAP THE BATHYMETRY DATA ONTO NUMERICAL GRIDS VIA BILINEAR INTERPOLATION
      CALL GRID_INTERP (LO%H,LO%X,LO%Y,LO%NX,LO%NY,H,X,Y,NX,NY)

!      WRITE(*,*) L%H(1,1),L%H(L%NX,L%NY)

	  IF (LO%INI_SWITCH.EQ.3 .OR. LO%INI_SWITCH.EQ.4) THEN
         LO%HT(:,:,1) = LO%H(:,:)
	     LO%HT(:,:,2) = LO%H(:,:)
	  ENDIF

!.....CALCULATE STILL WATER DEPTH AT DISCHARGE LOCATION P AND Q
!	  CALL PQ_DEPTH (LO)
	  DEALLOCATE(HTMP,H,STAT=ISTAT)
	  DEALLOCATE(XCOL,YCOL,ZCOL,STAT=ISTAT)
	  DEALLOCATE(X,Y,XTMP,YTMP,STAT=ISTAT)
	  
      RETURN
      END

!----------------------------------------------------------------------
      SUBROUTINE GRID_INTERP (H,H_X,H_Y,IX,JY,BATH,X,Y,NX,NY)
!......................................................................
!DESCRIPTION:
!	  #. INTERPOLATING THE GRIDDED INPUT DATA ONTO NUMERICAL GRIDS;
!     #. BILINEAR INTERPOLATION IS IMPLEMENTED;
!INPUT:
!	  #. BATH: INPUT GRIDDED DATA;
!	  #. X, Y: X AND Y COORDINATES OF THE INPUT GRIDDED DATA;
!	  #. NX, NY: X AND Y GRID DIMENSION OF THE INPUT GRIDDED DATA;
!	  #. H_X,H_Y: X AND Y COORDINATES OF THE GRID INTERPOLATED FROM
!		 THE INPUT GRIDDED DATA - 'H';
!	  #. IX, JY: X AND Y GRID DIMENSION OF 'H';
!OUTPUT:
!	  #. H: GRID DATA OBTAINED BY INTERPOLATING 'BATH';
!NOTES:
!     #. CREATED ON NOV 05 2008 (XIAOMING WANG, GNS);
!     #. LAST REVISE: NOV.24 2008 (XIAOMING WANG, GNS);
!	  #. UPDATED ON MAR 17 2009 (XIAOMING WANG, GNS);
!		 1. FIX THE PROBLEM WHEN 'H' AND 'BATH' HAVE THE SAME RANGE;
!----------------------------------------------------------------------
      INTEGER ISTAT, IS, JS, IE, JE, I0, J0, NX, NY
	  INTEGER IX,JY,ID
	  REAL H(IX,JY),H_X(IX),H_Y(JY)
	  REAL TMP(NX,NY), BATH(NX,NY)
	  REAL X(NX), Y(NY)
	  REAL DELTA_X,DELTA_Y,CX,CY,Z1,Z2,Z3,Z4

	  CX = 0.0
	  CY = 0.0
	  Z1 = 0.0
	  Z2 = 0.0
	  Z3 = 0.0
	  Z4 = 0.0
	  H = 0.0

      IS = 1
	  JS = 1
	  IE = IX
	  JE = JY

!.....BILINEAR INTERPOLATION
!OMP 111025 v1
!$omp parallel
!$omp do private(J,I,KS) firstprivate(KI,KJ,DELTA_X,DELTA_Y,CX,CY,Z1,Z2,Z3,Z4)
	  DO J = JS,JE
	     DO I = IS,IE
		    KI = 0
			KJ = 0
		    DO KS = 1,NX-1
		       IF (H_X(I).GE.X(KS) .AND. H_X(I).LT.X(KS+1)) THEN
				  KI = KS
			   END IF
		    END DO
			IF (H_X(I).GT.X(NX-1) .AND. H_X(I).LE.X(NX)) THEN
			   KI = NX-1
			ENDIF

		    DO KS = 1,NY-1
		       IF (H_Y(J).GE.Y(KS) .AND. H_Y(J).LT.Y(KS+1)) THEN
				  KJ = KS
			   END IF
			END DO
			IF (H_Y(J).GT.Y(NY-1) .AND. H_Y(J).LE.Y(NY)) THEN
			   KJ = NY-1
			ENDIF
	  
			IF (KI.GE.1 .AND. KI.LT.NX) THEN
			   IF (KJ.GE.1 .AND. KJ.LT.NY) THEN
			      DELTA_X = X(KI+1)-X(KI)
			      DELTA_Y = Y(KJ+1)-Y(KJ)
			      CX = (H_X(I)-X(KI))/DELTA_X
			      CY = (H_Y(J)-Y(KJ))/DELTA_Y
                  Z1 = BATH(KI,KJ)*(1.0-CX)*(1.0-CY)
			      Z2 = BATH(KI+1,KJ)*(CX)*(1.0-CY)
			      Z3 = BATH(KI,KJ+1)*(1.0-CX)*(CY)
			      Z4 = BATH(KI+1,KJ+1)*(CX)*(CY)
			      H(I,J) = Z1+Z2+Z3+Z4
			   ENDIF
			ENDIF
		 END DO
	  END DO
!$omp end parallel
      RETURN
      END


!----------------------------------------------------------------------
      SUBROUTINE DEPTH_LIMIT (LO)
!DESCRIPTION:
!	  #. SETUP VERTICAL WALL BOUNDARY AT SPECIFIED DEPTH CONTOUR BY 
!	     CHANGING WATER DEPTH SHALLOWER THAN H_LIMIT TO LAND
!NOTE:
!	  #. CREATED ON OCT 25 2008 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  TYPE (LAYER) :: LO
!OMP 111025 v1
!$omp parallel
!$omp do private(I,J)
      DO I = 1,LO%NX
	     DO J = 1,LO%NY
!		    IF (LO%H(I,J) .LE. LO%H_LIMIT) THEN !original code start
!			   LO%H(I,J) = -999.0 !���v���`�p��̤p���`, ����������(-999.0)
!			   IF (LO%INI_SWITCH.EQ.3 .OR. LO%INI_SWITCH.EQ.4) THEN
!                  LO%HT(I,J,1) = -999.0
!	              LO%HT(I,J,2) = -999.0
!	           END IF
!			END IF !original code end
			!--- 190624 start --- ���v���`�p��̤p���`, ��������̤p���`
		    IF (LO%H(I,J) .LE. LO%H_LIMIT .AND. LO%H(I,J) .GT. -0.001) THEN 
			   LO%H(I,J) = LO%H_LIMIT
			   IF (LO%INI_SWITCH.EQ.3 .OR. LO%INI_SWITCH.EQ.4) THEN
                  LO%HT(I,J,1) = LO%H_LIMIT
	              LO%HT(I,J,2) = LO%H_LIMIT
	           END IF
			END IF
			!--- 190624 end ---
		 END DO
	  END DO
!$omp end parallel
	  RETURN
	  END


!----------------------------------------------------------------------
      SUBROUTINE TIDAL_CORRECTION (LO)
!DESCRIPTION:
!	  #. SETUP TIDAL LEVEL CORRECTION FOR TSUNAMIS RUNNING OVER HIGH
!		 TIDAL LEVEL OR LOW TIDAL LEVEL;
!	     
!NOTE:
!	  #. CREATED ON FEB 26 2008 (XIAOMING WANG, GNS)
!	  #. UPDATED ON MAR 12 2009 (XIAOMING WANG, GNS)
!		 1. ADD TREATMENT FOR THOSE LAND AREAS SHOULD NOT BE SUBMERGED
!			ALTHOUGH BELOW HIGH TIDAL LEVEL;
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  TYPE (LAYER) :: LO
	  REAL TEMP(LO%NX,LO%NY)

	  TEMP = LO%H

	  LO%H(:,:) = LO%H(:,:) + LO%TIDE_LEVEL
	  IF (LO%INI_SWITCH.EQ.3 .OR. LO%INI_SWITCH.EQ.4) THEN
	     LO%HT(:,:,1) = LO%HT(:,:,1) + LO%TIDE_LEVEL
	     LO%HT(:,:,2) = LO%HT(:,:,2) + LO%TIDE_LEVEL
	  ENDIF
!	  !SPECIAL TREATMENT
!	  IF (LO%LAYGOV.EQ.1) THEN
!		 DO I  = 1,LO%NX
!		    DO J = 1,LO%NY
!			   IF (TEMP(I,J).LT.0.0 .AND.							&
!							TEMP(I,J)+LO%TIDE_LEVEL.GT.0.0) THEN
!				  LO%Z(I,J,1) = - (TEMP(I,J)+LO%TIDE_LEVEL)
!				  LO%DZ(I,J,1) = 0.0
!			   ENDIF
!		    ENDDO
!	     ENDDO
!	  ENDIF

	  RETURN
	  END


!----------------------------------------------------------------------
      SUBROUTINE UPDATE_BATH (LO,LA)
!DESCRIPTION:	
!	  #. UPDATE BATHYMETRY/TOPOGRAPHY TO ACCOUNT FOR THE DEFORMATION 
!		 CAUSED BY EARTHUAKE;
!	  #. STILL WATER DEPTH AT DISCHARGE LOCATION (EDGE CENTER OF A CELL)
!		 WILL ALSO BE RE-CALCULATED;
!NOTES:
!	  #. CREATED ON JAN 13 2009 (XIAOMING WANG,GNS)
!	  #. UPDATED ON JAN 14 2009 (XIAOMING WANG,GNS) 
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER)	:: LO
	  TYPE (LAYER),DIMENSION(NUM_GRID)  :: LA
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

!.....UPDATE FIRST-LEVEL GRIDS
      LO%H(:,:) = LO%H(:,:) - LO%DEFORM(:,:)
	  IF (LO%INI_SWITCH.EQ.3 .OR. LO%INI_SWITCH.EQ.4) THEN
	     LO%HT(:,:,1) = LO%HT(:,:,1) - LO%DEFORM(:,:)
	     LO%HT(:,:,2) = LO%HT(:,:,2) - LO%DEFORM(:,:)
	  ENDIF

	  CALL PQ_DEPTH (LO)

!.....UPDATE ALL SUB-LEVEL GRIDS
	  DO I = 1,NUM_GRID
	     IF (LA(I)%LAYSWITCH.EQ.0) THEN
			LA(I)%H(:,:) = LA(I)%H(:,:) - LA(I)%DEFORM(:,:)
			IF (LO%INI_SWITCH.EQ.3 .OR. LA(I)%INI_SWITCH.EQ.4 ) THEN
			   LA(I)%HT(:,:,1) = LA(I)%HT(:,:,1) - LA(I)%DEFORM(:,:)	
			   LA(I)%HT(:,:,2) = LA(I)%HT(:,:,2) - LA(I)%DEFORM(:,:)
			ENDIF

			CALL PQ_DEPTH (LA(I))
		 ENDIF
	  ENDDO


      RETURN
      END


!----------------------------------------------------------------------
	  SUBROUTINE ADJUST_BATHYMETRY (LO,LA)
!......................................................................
!DESCRIPTION:
!	  #. MODIFY COMCOT BATHYMETRY DATA TO ACCOUNT IN TIDAL LEVEL AND 
!		 MINIMUM DEPTH SETUP;
!	  #. WRITE COMCOT BATHYMETRY DATA INTO DATA FILES: LAYER##.DAT, 
!		 LAYER##_X.DAT, LAYER##_Y.DAT;
!NOTES:
!	  #. CREATED FEB 27 2009 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) :: LO
	  TYPE (LAYER), DIMENSION(NUM_GRID)  :: LA
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
      
      WRITE (*,*) 'ADJUSTING BATHYMETRY AND SETUP SHORELINE...'
      IF (LO%LAYSWITCH .EQ. 0) THEN
	     !CORRECTION CAUSED BY SEAFLOOR DEFORMATION ALREADY DONE
		 !APPLY TIDAL LEVEL CORRECTION HERE
		 IF (ABS(LO%TIDE_LEVEL).GT.GX) CALL TIDAL_CORRECTION (LO)
		 !OUTPUT MODIFIED BATHYMETRY DATA
!*		 IF (LO%FLUXSWITCH.EQ.9) CALL BATHY_WRITE (LO)
		 !SETUP WALL BOUNDARY ALONG GIVEN DEPTH CONTOUR
		 IF (ABS(LO%H_LIMIT).GT.GX) CALL DEPTH_LIMIT (LO)
		 CALL PQ_DEPTH (LO)
	  END IF
	  DO I=1,NUM_GRID
         IF (LA(I)%LAYSWITCH .EQ. 0) THEN
	        !CORRECTION CAUSED BY SEAFLOOR DEFORMATION ALREADY DONE
			!APPLY TIDAL LEVEL CORRECTION HERE
			IF (ABS(LA(I)%TIDE_LEVEL).GT.GX) THEN
			   CALL TIDAL_CORRECTION (LA(I))
			ENDIF
			!OUTPUT MODIFIED BATHYMETRY DATA
!*			IF (LA(I)%FLUXSWITCH.EQ.9) CALL BATHY_WRITE (LA(I))
			!SETUP WALL BOUNDARY ALONG GIVEN DEPTH CONTOUR
            IF (ABS(LA(I)%H_LIMIT).GT.GX) CALL DEPTH_LIMIT (LA(I))
			CALL PQ_DEPTH (LA(I))
		 END IF
	  END DO

      RETURN
      END

!----------------------------------------------------------------------
      SUBROUTINE PQ_DEPTH (LO)
!DESCRIPTION:
!	  #. CALCULATE STILL WATER DEPTH AT DISCHARGE LOCATION P AND Q
!NOTES:
!	  #. CREATED ON NOV 25 2008 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  TYPE (LAYER) :: LO
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
!OMP 111025 v1
!$omp parallel
!$omp do private(I,J) firstprivate(IP1,JP1)
      DO I=1,LO%NX
	     IP1 = I + 1
		 IF (IP1 .GE. LO%NX) IP1 = LO%NX
		 DO J=1,LO%NY
	        JP1 = J + 1
		    IF (JP1 .GE. LO%NY) JP1 = LO%NY
		    IF (LO%H(I,J) .GT. GX) THEN
			   LO%HP(I,J) = 0.5*(LO%H(I,J)+LO%H(IP1,J))
			   LO%HQ(I,J) = 0.5*(LO%H(I,J)+LO%H(I,JP1))
			ENDIF
		 END DO
      END DO
!$omp end parallel
	  RETURN
	  END


!----------------------------------------------------------------------
      SUBROUTINE READ_FRIC_COEF1 (LO) !<= not be used
!......................................................................
!DESCRIPTION:
!	  #. READ MANNING'S ROUGHNESS COEFFICIENTS
!	  #. ONLY USED WHEN VARIABLE FRICTION COEFS ARE IMPLEMENTED.
!	  #. ROUGHNESS COEFICIENTS SHOULD BE WRITTEN ROW BY ROW FROM LEFT 
!		 TO RIGHT (OR FROM WEST TO EAST);
!NOTES:
!	  #. CREATED ON ???? (XIAOMING WANG, CORNELL UNIVERSITY)
!	  #. SUBROUTINE WAS REWRITTEN ON DEC 18 2008
!	  #. FILE FORMAT CHANGES TO XYZ FORMAT
!	  #. SIGNIFICATLY MODIFIED ON DEC 18 2008 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  TYPE (LAYER) :: LO
	  REAL H_MAX,SOUTH_LAT,DX,CR   

	  REAL,ALLOCATABLE :: HTMP(:,:),H(:,:)
	  REAL,ALLOCATABLE :: XCOL(:),YCOL(:),ZCOL(:) 
	  REAL,ALLOCATABLE :: X(:),Y(:),YTMP(:)
      INTEGER      STAT, IS, JS, I, J
!      INTEGER	   LENGTH, RC, POS !, FLAG
	  INTEGER      COUNT
	  CHARACTER(LEN=40) FNAME,FNAME1

      !----------------------------------------
      !  READING PARAMETERS FOR FRICTION COEF.
	  !----------------------------------------
      WRITE (FNAME,1) LO%ID
 1    FORMAT('fric_coef_layer',I2.2,'.dat')
      WRITE (*,*) '    READING ROUGHNESS COEF DATA FOR LAYER',LO%ID
      OPEN (UNIT=23,FILE=FNAME,STATUS='OLD',IOSTAT=ISTAT,FORM='FORMATTED')
      IF (ISTAT /=0) THEN
         PRINT *,"ERROR:: CAN'T OPEN ROUGHNESS COEF. FILE; EXITING."
         STOP
      END IF

!.....DETERMINE THE LENGTH OF ROUGHNESS DATA FILE
	  COUNT = 0
	  TEMP = 0.0
	  DO WHILE (ISTAT ==0)
		 COUNT = COUNT + 1
		 READ (23,*,IOSTAT=ISTAT) TEMP1,TEMP2,TEMP3
	  ENDDO
          COUNT=COUNT-1
          NXY = COUNT
	  ALLOCATE(XCOL(NXY))
	  ALLOCATE(YCOL(NXY))
	  ALLOCATE(ZCOL(NXY))
	  XCOL = 0.0
	  YCOL = 0.0
	  ZCOL = 0.0

!*!.....READING MANNING ROUGHNESS DATA
	  REWIND(23)
	  DO I = 1,COUNT
         READ (23,*) XCOL(I), YCOL(I), ZCOL(I)
!		 IF (ISNAN(ZCOL(I))) ZCOL(I) = 0.0 
		 IF (ABS(ZCOL(I)).GE.HUGE(ZCOL(I))) ZCOL(I) = 0.0
	  END DO
	  CLOSE (23)

!.....DETERMINE GRID DIMENSION: NX,NY
      TEMP = XCOL(1)
	  TEMP1 = XCOL(2)
	  K = 1
	  DO WHILE (TEMP1.GT.TEMP)
	     K=K+1
	     TEMP1 = XCOL(K)
	  ENDDO
	  NX = K-1
	  NY = NINT(DBLE(NXY/NX))
!	  WRITE (*,*) '       GRID DIMENSION: ', NX,NY
      ALLOCATE(X(NX))
	  ALLOCATE(Y(NY))
	  ALLOCATE(YTMP(NY))	
	  ALLOCATE(HTMP(NX,NY)) 
	  ALLOCATE(H(NX,NY)) 
	  X = 0.0
	  Y = 0.0
	  YTMP = 0.0
	  HTMP = 0.0
	  H = 0.0   

!.....OBTAINED X,Y COORDINATES
	  X(1:NX) = XCOL(1:NX)
!OMP 111025 1b
!!!$omp parallel
!!!$omp do private(J,K)
	  DO J = 1,NY
	     K = (J-1)*NX + 1
	     YTMP(J) = YCOL(K)
	  END DO
	  !GENERATE GRID DATA
!!!$omp barrier
!!!$omp do private(J,KS,KE)
      DO J=1,NY
	     KS = (J-1)*NX + 1
		 KE = (J-1)*NX + NX
         HTMP(1:NX,J) = ZCOL(KS:KE)
      END DO
!!!$omp end parallel
!!....DETERMINE IF THE DATA NEED FLIP:
!     I.E., Y COORDINATE IS FROM NORTH TO SOUTH OR FROM SOUTH TO NORTH
!     IFLIP = 0: FLIP; 1: NO FLIP OPERATION
      IFLIP = 0
	  IF (YTMP(NY).LT.YTMP(NY-1)) IFLIP = 1
      
	  IF (IFLIP .EQ. 1) THEN
         ! FLIP Y COORDINATES
!OMP 111025
!!!$omp parallel
!!!$omp do private(J)  firstprivate(K)
         DO J = 1,NY
	        K = NY-J+1
		    Y(K) = YTMP(J)
	     END DO
         ! FLIP BATHYMETRY MATRIX
!!!$omp barrier
!!!$omp do private(I,J)  firstprivate(K)
         DO I = 1,NX
	        DO J = 1,NY
		       K = NY - J + 1
			   H(I,K) = HTMP(I,J)
		    END DO
	     END DO
!!!$omp end parallel
	  ELSE
	     Y = YTMP
		 H = HTMP
	  END IF
!*      WRITE (*,*) H(1,1),H(NX,NY),ZCOL(1),ZCOL(NXY)
	  CALL GRID_INTERP (LO%FRIC_VCOEF,LO%X,LO%Y,LO%NX,LO%NY,H,X,Y,NX,NY)

!.....OUTPUT THE FRICTION COEF INTO A DATA FILE
	  IF (LO%LEVEL.LE.1) THEN
		 IS = 1
		 JS = 1
		 IE = LO%NX
		 JE = LO%NY
	  ELSE
		 IS = 2
		 JS = 2
		 IE = LO%NX
		 JE = LO%NY
	  ENDIF
      WRITE (FNAME1,2) LO%ID
 2    FORMAT('friction_layer',I2.2,'.dat')
      OPEN (23,FILE=FNAME1,STATUS='UNKNOWN')
      DO J = JS,JE !150525
         WRITE (23,*) LO%FRIC_VCOEF(:,J)
      ENDDO
      CLOSE (23)

!.....FREE ALOOCATED VARIABLES
	  DEALLOCATE(HTMP,H,STAT=ISTAT)
	  DEALLOCATE(XCOL,YCOL,ZCOL,STAT=ISTAT)
	  DEALLOCATE(X,Y,YTMP,STAT=ISTAT)

	  RETURN
	  END

!----------------------------------------------------------------------
      SUBROUTINE READ_FRIC_COEF (LO)
!......................................................................
!DESCRIPTION:
!	  #. READ MANNING'S ROUGHNESS COEFFICIENTS
!	  #. ONLY USED WHEN VARIABLE FRICTION COEFS ARE IMPLEMENTED.
!	  #. ROUGHNESS COEFICIENTS SHOULD BE WRITTEN ROW BY ROW FROM LEFT 
!		 TO RIGHT (OR FROM WEST TO EAST);
!NOTES:
!	  #. CREATED ON ???? (XIAOMING WANG, CORNELL UNIVERSITY)
!	  #. SUBROUTINE WAS REWRITTEN ON DEC 18 2008
!	  #. FILE FORMAT CHANGES TO XYZ FORMAT
!	  #. SIGNIFICATLY MODIFIED ON DEC 18 2008 (XIAOMING WANG, GNS)
!	  #. UPDATED ON APR10 2009 (XIAOMING WANG, GNS)
!		 - DATA ALLOWS TO BE WRITTEN EITHER COLUMN BY COLUMN 
!		   OR ROW BY ROW; BUT MUST BE FROM LEFT TO RIGHT;
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) :: LO
	  REAL,ALLOCATABLE :: HTMP(:,:),H(:,:)
	  REAL,ALLOCATABLE :: XCOL(:),YCOL(:),ZCOL(:) 
	  REAL,ALLOCATABLE :: X(:),Y(:),XTMP(:),YTMP(:)
      INTEGER      STAT, IS, JS, I, J, NXY
	  INTEGER      COUNT
	  CHARACTER(LEN=40) FNAME,FNAME1
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

      !----------------------------------------
      !  READING PARAMETERS FOR FRICTION COEF.
	  !----------------------------------------
      WRITE (FNAME,1) LO%ID
 1    FORMAT('fric_coef_layer',I2.2,'.dat')
      WRITE (*,*) '    READING ROUGHNESS COEF DATA FOR LAYER',LO%ID
      OPEN (UNIT=23,FILE=FNAME,STATUS='OLD',IOSTAT=ISTAT,FORM='FORMATTED')
      IF (ISTAT /=0) THEN
         PRINT *,"ERROR:: CAN'T OPEN ROUGHNESS COEF. FILE; EXITING."
         STOP
      ELSE
	  	 WRITE (*,*) 'read variable friction coef. from ',FNAME
      END IF

!.....DETERMINE THE LENGTH OF ROUGHNESS DATA FILE
	  COUNT = 0
	  DO WHILE (ISTAT ==0)
		 COUNT = COUNT + 1
		 READ (23,*,IOSTAT=ISTAT) TEMP1,TEMP2,TEMP3
	  ENDDO
          COUNT=COUNT-1
          NXY = COUNT
	  ALLOCATE(XCOL(NXY))
	  ALLOCATE(YCOL(NXY))
	  ALLOCATE(ZCOL(NXY))
	  XCOL = 0.0
	  YCOL = 0.0
	  ZCOL = 0.0

!*!.....READING ROUGHNESS DATA
      REWIND(23)
	  DO I = 1,COUNT
         READ (23,*) XCOL(I), YCOL(I), ZCOL(I)
!		 IF (ISNAN(ZCOL(I))) ZCOL(I) = 9999.0
		 IF (ABS(ZCOL(I)).GE.HUGE(ZCOL(I))) ZCOL(I) = 9999.0
	  END DO
	  CLOSE (23)

!<<<  CHECK IF THE DATA IS WRITTEN ROW BY ROW
!.....DETERMINE GRID DIMENSION: NX,NY
      TMPX = XCOL(1)
	  TMPX1 = XCOL(2)
	  TMPY = YCOL(1)
	  TMPY1 = YCOL(2)
	  IF (ABS(TMPX1-TMPX).GT.EPS .AND. ABS(TMPY1-TMPY).LT.EPS) THEN
!*	  IF (TMPX1.NE.TMPX .AND. TMPY1.EQ.TMPY) THEN
	     K = 1
	     DO WHILE (TMPX1.GT.TMPX)
	        K=K+1
	        TMPX1 = XCOL(K)
	     ENDDO
	     NX = K-1
	     NY = NINT(DBLE(NXY/NX))
!	     WRITE (*,*) '       GRID DIMENSION OF GROUGHNESS DATA: ', NX,NY
         ALLOCATE(X(NX))
	     ALLOCATE(Y(NY))
	     ALLOCATE(YTMP(NY))	
	     ALLOCATE(HTMP(NX,NY)) 
	     ALLOCATE(H(NX,NY))   
	     X = 0.0
	     Y = 0.0
	     YTMP = 0.0
	     HTMP = 0.0
	     H = 0.0 

!.....   OBTAINED X,Y COORDINATES
	     X(1:NX) = XCOL(1:NX)
!OMP 111025 v1
!$omp parallel
!$omp do private(J) firstprivate(K)
	     DO J = 1,NY
	        K = (J-1)*NX + 1
	        YTMP(J) = YCOL(K)
	     END DO
	     !GENERATE GRID DATA

!$omp do private(J) firstprivate(KS,KE)
         DO J=1,NY
	        KS = (J-1)*NX + 1
		    KE = (J-1)*NX + NX
            HTMP(1:NX,J) = ZCOL(KS:KE)
         END DO
!$omp end parallel
	  ENDIF
!>>>>>
!<<<<<CHECK IF THE DATA IS WRITTEN COLUMN BY COLUMN
	  TMPX = XCOL(1)
	  TMPX1 = XCOL(2)
	  TMPY = YCOL(1)
	  TMPY1 = YCOL(2)
!	  write (*,*) TMPX,TMPX1,TMPY,TMPY1,NXY
	  IF (ABS(TMPX1-TMPX).LT.EPS .AND. ABS(TMPY1-TMPY).GT.EPS) THEN
!*	  IF (TMPX1.EQ.TMPX .AND. TMPY1.NE.TMPY) THEN
	     K = 1
	     DO WHILE (TMPX1.LE.TMPX)
	        K=K+1
	        TMPX1 = XCOL(K)
	     ENDDO
	     NY = K-1
!	     WRITE(*,*) NX
	     NX = NINT(DBLE(NXY/NY))

!*	     WRITE (*,*) '       GRID DIMENSION OF ROUGHNESS DATA: ', NX,NY
         ALLOCATE(X(NX))
	     ALLOCATE(Y(NY))
		 ALLOCATE(XTMP(NX))	
	     ALLOCATE(YTMP(NY))	
	     ALLOCATE(HTMP(NX,NY)) 
	     ALLOCATE(H(NX,NY))    
	     HTMP = 0.0
	     X = 0.0
	     Y = 0.0
	     YTMP = 0.0
	     H = 0.0
!........OBTAINED X,Y COORDINATES
	     YTMP(1:NY) = YCOL(1:NY)
!OMP 111025 v1
!$omp parallel
!$omp do private(I) firstprivate(K)
	     DO I = 1,NX
	        K = (I-1)*NY + 1
	        X(I) = XCOL(K)
	     END DO
	     !GENERATE GRID DATA
!$omp do private(I) firstprivate(KS,KE)	
         DO I=1,NX
	        KS = (I-1)*NY + 1
		    KE = (I-1)*NY + NY
            HTMP(I,1:NY) = ZCOL(KS:KE)
         END DO
!$omp end parallel
	  ENDIF
!>>>>>

!!....DETERMINE IF THE DATA NEED FLIP
!     CHECK IF Y COORDINATE IS FROM NORTH TO SOUTH OR FROM SOUTH TO NORTH
!     IFLIP = 0: FLIP; 1: NO FLIP OPERATION
      IFLIP = 0
	  IF (YTMP(NY).LT.YTMP(NY-1)) IFLIP = 1
      
	  IF (IFLIP .EQ. 1) THEN
         ! FLIP Y COORDINATES
!OMP 111025 v1
!$omp parallel
!$omp do private(J) firstprivate(K)
         DO J = 1,NY
	        K = NY-J+1
		    Y(K) = YTMP(J)
	     END DO
         ! FLIP BATHYMETRY MATRIX

!$omp do private(I,J) firstprivate(K)
         DO I = 1,NX
	        DO J = 1,NY
		       K = NY - J + 1
			   H(I,K) = HTMP(I,J)
		    END DO
	     END DO
!$omp end parallel
	  ELSE
	     Y = YTMP
		 H = HTMP
	  END IF
!*      WRITE (*,*) H(1,1),H(NX,NY),ZCOL(1),ZCOL(NXY)

!.....MAP THE ROUGHNESS DATA ONTO THE NUMERICAL GRIDS VIA INTERPOLATION
	  CALL GRID_INTERP (LO%FRIC_VCOEF,LO%X,LO%Y,LO%NX,LO%NY,H,X,Y,NX,NY)

!.....OUTPUT THE FRICTION COEF INTO A DATA FILE
	  IF (LO%LEVEL.LE.1) THEN
		 IS = 1
		 JS = 1
		 IE = LO%NX
		 JE = LO%NY
	  ELSE
		 IS = 2
		 JS = 2
		 IE = LO%NX
		 JE = LO%NY
	  ENDIF
      WRITE (FNAME1,2) LO%ID
 2    FORMAT('friction_layer',I2.2,'.dat')	  
      OPEN (23,FILE=FNAME1,STATUS='UNKNOWN')
      DO J = JS,JE !150525
         WRITE (23,*) LO%FRIC_VCOEF(:,J)
      ENDDO
      CLOSE (23)
!.....FREE ALOOCATED VARIABLES
	  DEALLOCATE(HTMP,H,STAT=ISTAT)
	  DEALLOCATE(XCOL,YCOL,ZCOL,STAT=ISTAT)
	  DEALLOCATE(X,Y,YTMP,STAT=ISTAT)
  
      RETURN
      END



!----------------------------------------------------------------------
      SUBROUTINE LAND_SLIDE (LO,LANDSLIDE_INFO,T)
!DESCRIPTION:
!	  #. CALCULATE TIME-VARIATION OF WATER DEPTH
!		 ********* USE LANDSLIDE MODEL **************
!NOTES:
!	  #. CREATED ON ??? ??, (XIAOMING WANG, CORNELL UNIVERSITY)
!	  #. UPDATED ON SEP17 2006 (XIAOMING WANG)
!	  #. UPDATED ON NOV.27 2008 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  USE LANDSLIDE_PARAMS
      TYPE (LAYER)		:: LO  
	  TYPE (LANDSLIDE)  :: LANDSLIDE_INFO    
	  INTEGER           :: NX, NY, NUM,IS,IE,JS,JE
	  REAL  HS1(LANDSLIDE_INFO%NX,LANDSLIDE_INFO%NY)
	  REAL  HS2(LANDSLIDE_INFO%NX,LANDSLIDE_INFO%NY)
	  REAL  UPLIFT(LANDSLIDE_INFO%NX,LANDSLIDE_INFO%NY)
	  REAL  TIME_SEQUENCE(LANDSLIDE_INFO%NT)
	  REAL  T
      CHARACTER(LEN=30) FNAME

	  HS1 = 0.0
	  HS2 = 0.0
	  UPLIFT = 0.0
	  TIME_SEQUENCE = 0.0

	  IS = LANDSLIDE_INFO%CORNERS(1)
	  IE = LANDSLIDE_INFO%CORNERS(2)
	  JS = LANDSLIDE_INFO%CORNERS(3)
	  JE = LANDSLIDE_INFO%CORNERS(4)

	  IF (LANDSLIDE_INFO%OPTION .LE. 1) THEN
	     TIME_SEQUENCE = LANDSLIDE_INFO%T
	  
!     DETERMINE THE POSITION OF CURRENT TIME IN THE TIME SEQUENCE
         K = 1
         DO I=1,LANDSLIDE_INFO%NT-1
	        IF (T.GE.TIME_SEQUENCE(I) .AND.							&
									T.LT.TIME_SEQUENCE(I+1)) THEN
			   K = I
	        ENDIF
	     ENDDO

         IF (TIME_SEQUENCE(LANDSLIDE_INFO%NT)-T .LE. 0.000001)		&
										K = LANDSLIDE_INFO%NT-1

	     DT = TIME_SEQUENCE(K+1) - TIME_SEQUENCE(K)
         HS1(:,:) = LANDSLIDE_INFO%SNAPSHOT(:,:,K)
	     HS2(:,:) = LANDSLIDE_INFO%SNAPSHOT(:,:,K+1)
!.....DEFORMATION AT T IS INTERPOLATED FROM HS1 AND HS2
!OMP 111025 v1
!$omp parallel
!$omp do private(I,J)
         DO I=1,LANDSLIDE_INFO%NX
	        DO J=1,LANDSLIDE_INFO%NY
	           UPLIFT(I,J) = HS1(I,J)+(HS2(I,J)-HS1(I,J))/DT		&
											*(T-TIME_SEQUENCE(K))
            ENDDO
         ENDDO
!$omp end parallel
	  LO%HT(IS:IE,JS:JE,2) = LO%H(IS:IE,JS:JE) - UPLIFT(:,:)
!         LO%H2(IS:IE,JS:JE) = UPLIFT(:,:)
	  ELSEIF (LANDSLIDE_INFO%OPTION .EQ. 2) THEN
		 CALL LANDSLIDE_FUNCTION (LO,LANDSLIDE_INFO,T)
		 LO%HT(IS:IE,JS:JE,2) = LO%H(IS:IE,JS:JE)					&
								 - LANDSLIDE_INFO%SNAPSHOT(:,:,3)
	  ENDIF


      RETURN
      END


!----------------------------------------------------------------------
      SUBROUTINE READ_LANDSLIDE (LO,LANDSLIDE_INFO)
!.....READ SNAPSHOTS OF LANDSLIDE DATA
!     ONLY USED WHEN WAVE TYPE OPTION IS 2.
!.....LAST REVISE: NOV.24 2008 (XIAOMING WANG)
!----------------------------------------------------------------------
	  USE LAYER_PARAMS
	  USE LANDSLIDE_PARAMS
	  TYPE (LANDSLIDE) :: LANDSLIDE_INFO
	  TYPE (LAYER)     :: LO
	  REAL, ALLOCATABLE:: SNAPSHOT(:,:,:),X(:),Y(:),T(:)
	  INTEGER COUNT,NX,NY,NT 
	  REAL LATIN,LONIN,XS,YS,XE,YE,XT,YT,X0,Y0  
      CHARACTER(LEN=80) FNAME
!OMP 111025 v1
!$omp parallel
!$omp do private(K)
	  DO K = 1,LO%NX-1
	     IF (LANDSLIDE_INFO%X_START.GT.LO%X(K) .AND.				&
						LANDSLIDE_INFO%X_START.LE.LO%X(K+1)) THEN 
	        LANDSLIDE_INFO%CORNERS(1) = K+1
	     ENDIF
		 IF (LANDSLIDE_INFO%X_END.GE.LO%X(K) .AND.					&
						LANDSLIDE_INFO%X_END.LT.LO%X(K+1)) THEN
		    LANDSLIDE_INFO%CORNERS(2) = K
		 ENDIF
	  ENDDO
!$omp do private(K)
	  DO K = 1,LO%NY-1
	     IF (LANDSLIDE_INFO%Y_START.GT.LO%Y(K) .AND.				&
						LANDSLIDE_INFO%Y_START.LE.LO%Y(K+1)) THEN
		    LANDSLIDE_INFO%CORNERS(3) = K+1
		 ENDIF
		 IF (LANDSLIDE_INFO%Y_END.GE.LO%Y(K) .AND.					&
						LANDSLIDE_INFO%Y_END.LT.LO%Y(K+1)) THEN
		    LANDSLIDE_INFO%CORNERS(4) = K
		 ENDIF
	  ENDDO
!$omp end parallel
!.....CALCULATE DIMENSION OF LANDSLIDE REGION
	  LANDSLIDE_INFO%NX = LANDSLIDE_INFO%CORNERS(2)					&
								- LANDSLIDE_INFO%CORNERS(1) + 1  
      LANDSLIDE_INFO%NY = LANDSLIDE_INFO%CORNERS(4)					&
								- LANDSLIDE_INFO%CORNERS(3) + 1

!USE THE OLD COMCOT DATA FORMAT: NOT SUGGESTED
      IF (LANDSLIDE_INFO%OPTION .EQ. 0) THEN

         OPEN(UNIT=20,FILE='bottom_motion_time.dat',STATUS='OLD',	&
						IOSTAT=ISTAT)
         IF (ISTAT /=0) THEN
            PRINT *,"ERROR:: CAN'T OPEN BOTTOM_MOTION_TIME.DAT; EXITING."
            STOP
         ENDIF
         COUNT = 0
	     DO WHILE (ISTAT ==0)
		    COUNT = COUNT + 1
		    READ (20,*,IOSTAT=ISTAT) TEMP
	     END DO
         LANDSLIDE_INFO%NT = COUNT
!	     CLOSE(20)
         ALLOCATE(LANDSLIDE_INFO%T(COUNT))
		 ALLOCATE(LANDSLIDE_INFO%SNAPSHOT(LANDSLIDE_INFO%NX,		&
						LANDSLIDE_INFO%NY,COUNT))
		 ALLOCATE(SNAPSHOT(LANDSLIDE_INFO%NX,LANDSLIDE_INFO%NY,		&
						COUNT))
		 LANDSLIDE_INFO%T = 0.0
		 LANDSLIDE_INFO%SNAPSHOT = 0.0
		 SNAPSHOT = 0.0
!		 !OBTAIN TIME SEQUENCE
		 REWIND(20)
!         OPEN(UNIT=20,FILE='bottom_motion_time.dat',STATUS='OLD',	&
!						IOSTAT=ISTAT)
	     DO I=1,LANDSLIDE_INFO%NT
	        READ (20,*) LANDSLIDE_INFO%T(I)
	     ENDDO
	     CLOSE(20)
	     LANDSLIDE_INFO%DURATION =									&
								LANDSLIDE_INFO%T(LANDSLIDE_INFO%NT)	&
								- LANDSLIDE_INFO%T(1)

!.....   READ SEAFLOOR DEFORMATION DATA FROM SEQUENTIAL SNAPSHOTS
         DO K = 1,COUNT
            WRITE (FNAME,1) K
 1          FORMAT('bottom_motion_',I7.7,'.dat')  ! 150430
            OPEN (25,FILE=FNAME,STATUS='OLD',IOSTAT=ISTAT)
            IF (ISTAT /=0) THEN
               PRINT *,"ERROR:: CAN'T OPEN LANDSLIDE FILE; EXITING."
               STOP
            ENDIF
            DO J = 1,LANDSLIDE_INFO%NY
	           DO I = 1,LANDSLIDE_INFO%NX
                  READ (25,*) SNAPSHOT(I,J,K)
		       ENDDO
            ENDDO
!*	        WRITE (*,*) FNAME
            CLOSE (25)
            LANDSLIDE_INFO%SNAPSHOT = SNAPSHOT
		 ENDDO
      ENDIF
!LANDSLIDE SNAPSHOTS ADOPT XYT DATA FORMAT
	  IF (LANDSLIDE_INFO%OPTION .EQ. 1) THEN
	     OPEN(UNIT=20,FILE=LANDSLIDE_INFO%FILENAME,STATUS='OLD',	&
					IOSTAT=ISTAT)
         IF (ISTAT /=0) THEN
            PRINT *,"ERROR:: CAN'T OPEN LANDSLIDE FILE; EXITING."
            STOP
         ENDIF
		 READ (20,*) NX,NY,NT
         
		 ALLOCATE(X(NX))
         ALLOCATE(Y(NY))
	     ALLOCATE(T(NT))
	     ALLOCATE(SNAPSHOT(NX,NY,NT))
		 X = 0.0
		 Y = 0.0
		 T = 0.0
		 SNAPSHOT = 0.0

		 DO I = 1,NX
		    READ(20,*) X(I)
		 ENDDO
		 DO J = 1,NY
		    READ(20,*) Y(J)
		 ENDDO
		 DO K = 1,NT
		    READ(20,*) T(K)
		 ENDDO
		 DO K = 1,NT
		    DO J = 1,NY
			   DO I = 1,NX
			      READ(20,*) SNAPSHOT(I,J,K)
			   ENDDO
		    ENDDO
	     ENDDO
		 CLOSE(20)

	     ALLOCATE(LANDSLIDE_INFO%T(NT))
		 LANDSLIDE_INFO%T = 0.0

	     LANDSLIDE_INFO%NT = NT
	     LANDSLIDE_INFO%T = T
         LANDSLIDE_INFO%DURATION = T(NT)-T(1)

	     IS = LANDSLIDE_INFO%CORNERS(1)
	     IE = LANDSLIDE_INFO%CORNERS(2)
	     JS = LANDSLIDE_INFO%CORNERS(3)
	     JE = LANDSLIDE_INFO%CORNERS(4)

		 ALLOCATE(LANDSLIDE_INFO%SNAPSHOT(LANDSLIDE_INFO%NX,		&
											LANDSLIDE_INFO%NY,NT))
		 LANDSLIDE_INFO%SNAPSHOT = 0.0
  
         DO K = 1,NT
	        CALL GRID_INTERP (LANDSLIDE_INFO%SNAPSHOT(:,:,K),		&
							LO%X(IS:IE),LO%Y(JS:JE),				&
							LANDSLIDE_INFO%NX,LANDSLIDE_INFO%NY,	&
							SNAPSHOT(:,:,K),X,Y,NX,NY)
!*			LANDSLIDE_INFO%SNAPSHOT(:,:,K) =						&
!*				- LANDSLIDE_INFO%SNAPSHOT(:,:,K) + LO%H(IS:IE,JS:JE)
	     ENDDO        
	  ENDIF
!	  WRITE(*,*) NX,NT,NT
!	  WRITE(*,*) X(1),Y(1),T(1),SNAPSHOT(1,1,NT),SNAPSHOT(1,NY,NT),	&
!							SNAPSHOT(NX,1,NT),SNAPSHOT(NX,NY,NT)
!	  WRITE(*,*) LANDSLIDE_INFO%SNAPSHOT(1,LANDSLIDE_INFO%NY,NT)

!USE PROFILE FUNCTION TO GENEATE SNAPSHOTS OF LANDSLIDE PROFILE
!NOTE: LANDSLIDE_INFO%SNAPSHOT IS USED TO STORE COORDINATES
	  IF (LANDSLIDE_INFO%OPTION .EQ. 2) THEN
		 CALL GET_LANDSLIDE_PARAMETERS (LO,LANDSLIDE_INFO)
		 NX = LANDSLIDE_INFO%NX
		 NY = LANDSLIDE_INFO%NY
		 NT = LANDSLIDE_INFO%NT
		 XS = LANDSLIDE_INFO%XS
		 YS = LANDSLIDE_INFO%YS
		 XE = LANDSLIDE_INFO%XE
		 YE = LANDSLIDE_INFO%YE

		 ALLOCATE(SNAPSHOT(NX,NY,2))
		 ALLOCATE(LANDSLIDE_INFO%SNAPSHOT(NX,NY,3))
		 SNAPSHOT = 0.0
	     LANDSLIDE_INFO%SNAPSHOT = 0.0

		 !COORDINATE CONVERSION (IF SPHERICAL COORD. IS ADOPTED)AND ROTATION
	     IS = LANDSLIDE_INFO%CORNERS(1)
	     IE = LANDSLIDE_INFO%CORNERS(2)
	     JS = LANDSLIDE_INFO%CORNERS(3)
	     JE = LANDSLIDE_INFO%CORNERS(4)
         IF (LO%LAYCORD .EQ. 1) THEN
			X0 = LANDSLIDE_INFO%XS
			Y0 = LANDSLIDE_INFO%YS
			!ROTATE COORDINATES TO ALIGN WITH SLIDING PATH
			LANDSLIDE_INFO%DISTANCE = SQRT((XE-XS)**2+(YE-YS)**2)
			SN = (YE-YS)/LANDSLIDE_INFO%DISTANCE
			CS = (XE-XS)/LANDSLIDE_INFO%DISTANCE
!OMP 111025 v1
!$omp parallel
!$omp do private(I,J) firstprivate(XT,YT,XR,YR)
			DO I = 1,NX
			   DO J = 1,NY
			      XT = LO%X(I+IS-1) - X0
				  YT = LO%Y(J+JS-1) - Y0
				  XR = XT*CS + YT*SN
				  YR = -XT*SN + YT*CS
				  LANDSLIDE_INFO%SNAPSHOT(I,J,1) = XR
				  LANDSLIDE_INFO%SNAPSHOT(I,J,2) = YR
				  LANDSLIDE_INFO%SNAPSHOT(I,J,3) = 0.0
			   ENDDO
		    ENDDO
!$omp end parallel
!*			CALL LANDSLIDE_FUNCTION (LO,LANDSLIDE_INFO,0.0)
		 ELSEIF (LO%LAYCORD .EQ. 0) THEN
			X0 = LANDSLIDE_INFO%XS
			Y0 = LANDSLIDE_INFO%YS
			LONIN = LANDSLIDE_INFO%XS
			LATIN = LANDSLIDE_INFO%YS
			!CONVERTING SPHERICAL COORDINATES TO CARTESIAN COORDINATES
			CALL STEREO_PROJECTION (XS,YS,LONIN,LATIN,X0,Y0)
			LONIN = LANDSLIDE_INFO%XE
			LATIN = LANDSLIDE_INFO%YE
			!CONVERTING SPHERICAL COORDINATES TO CARTESIAN COORDINATES
			CALL STEREO_PROJECTION (XE,YE,LONIN,LATIN,X0,Y0)
			LANDSLIDE_INFO%DISTANCE = SQRT((XE-XS)**2+(YE-YS)**2)

			SN = (YE-YS)/LANDSLIDE_INFO%DISTANCE
			CS = (XE-XS)/LANDSLIDE_INFO%DISTANCE
!OMP 111025 v1
!$omp parallel
!$omp do private(I,J) firstprivate(LONIN,LATIN,XT,YT,XR,YR)
			DO I = 1,NX
			   DO J = 1,NY
				  LONIN = LO%X(I+IS-1)
				  LATIN = LO%Y(J+JS-1)
				  !CONVERTING SPHERICAL COORDINATES TO CARTESIAN COORDINATES
				  CALL STEREO_PROJECTION (XT,YT,LONIN,LATIN,X0,Y0)
				  !ROTATING COORDINATES TO ALIGN WITH SLIDING PATH
				  XR = XT*CS + YT*SN
				  YR = -XT*SN + YT*CS
				  LANDSLIDE_INFO%SNAPSHOT(I,J,1) = XR
				  LANDSLIDE_INFO%SNAPSHOT(I,J,2) = YR
				  LANDSLIDE_INFO%SNAPSHOT(I,J,3) = 0.0
			   ENDDO
		    ENDDO
!$omp end parallel
!*			CALL LANDSLIDE_FUNCTION (LO,LANDSLIDE_INFO,T)
		 ENDIF
	  ENDIF

	  DEALLOCATE(SNAPSHOT,X,Y,T,STAT=ISTAT)

	  RETURN
	  END

!----------------------------------------------------------------------
      SUBROUTINE LANDSLIDE_FUNCTION (LO,LS,TIME)
!DESCRIPTION:
!	  #. GENERATE LANDSLIDE FROM FUNCTION;
!	  #. WATER DEPTH VARIATION IS DETERMINED FROM  WATTS ET AL (2003);
!REFERENCE:
!	  #. WATTS ET AL (2003), NATURAL HAZARDS AND EARTH SYSTEM SCIENCES,
!		 (2003) 3:391-402
!NOTES:
!	  #. CREATED ON FEB06 2009 (XIAOMING WANG, GNS)
!	  #. UPDATED ON ??
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  USE LANDSLIDE_PARAMS
      TYPE (LAYER)		:: LO  
	  TYPE (LANDSLIDE)  :: LS    
	  INTEGER           :: NX, NY, IS,IE,JS,JE
	  REAL  TIME,T,T0,S0,A0,UT,B,SN
	  REAL X,Y,Z,C,ZE,ZD
	  REAL D,D_LIMIT
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

	  UPLIFT = 0.0

	  THETA = LS%SLOPE*RAD_DEG
	  SN = SIN(THETA)
	  A = LS%A
	  B = LS%B
	  C = LS%THICKNESS

	  T = TIME - LS%T(1)
	  IF (T .LE. 0.0) T = 0.0
	  A0 = 0.30*GRAV*SN
	  UT = 1.16*SQRT(A*GRAV*SN)
	  S0 = UT**2/A0
	  T0 = UT/A0
	  S = S0*LOG(COSH(T/T0))

	  D = S*COS(THETA)
	  D_LIMIT = LS%DISTANCE

	  IF (T.GE.LS%T(1) .AND. T.LE.LS%T(LS%NT)						&
									.AND. D.LE.D_LIMIT) THEN
!OMP 111025 v1
!$omp parallel
!$omp do private(I,J) firstprivate(X,Y,ZE,ZD)
		 DO I = 1,LS%NX
			DO J = 1,LS%NY
			   X = LS%SNAPSHOT(I,J,1)
			   Y = LS%SNAPSHOT(I,J,2)
               CALL SLIDEPROFILE_ELLIPSOID (ZE,X-S,Y,A,B,C)
			   CALL SLIDEPROFILE_ELLIPSOID (ZD,X,Y,A,B,C)
			   LS%SNAPSHOT(I,J,3) = ZE - ZD
			ENDDO
		 ENDDO
!$omp end parallel
	  ENDIF
	  
      RETURN
      END

!----------------------------------------------------------------------
      SUBROUTINE SLIDEPROFILE_ELLIPSOID (Z,X,Y,A,B,C)
!DESCRIPTION:
!	  #. SLIDE PROFILE: ELLIPOID;
!NOTES:
!	  #. CREATED ON FEB13 2009 (XIAOMING WANG, GNS)
!	  #. UPDATED ON ??
!      input:X,Y,A,B,C   output:Z
!----------------------------------------------------------------------
	  REAL X,Y,Z,A,B,C

	  TMP = 1.0-(X/A)**2-(Y/B)**2
	  IF (TMP .GE. 0.0) THEN
	     Z = C*SQRT(TMP)
	  ELSE
	     Z = 0.0
	  ENDIF


      RETURN
      END



!----------------------------------------------------------------------
      SUBROUTINE MASS (LO)
! ....SOLVE CONTINUITY EQUATION 
! OPTION:
!	0 - LINEAR SWE WITHOUT DISPERSION ADJUSTMENT
!	1 - NONLINEAR SWE WITHOUT DISPERSION ADJUSTMENT
!	2 - LINEAR SWE WITH DISPERSION ADJUSTMENT
!	3 - NONLINEAR SWE WITH DISPERSION ADJUSTMENT
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) 	:: LO

!.....FOR SPHERICAL COORDINATES
      IF (LO%LAYCORD .EQ. 0) THEN
		 SELECT CASE (LO%LAYGOV)
			CASE (0)
				CALL MASS_S (LO)
			CASE (1)
				CALL CONMASS_S (LO)
			CASE (2)
				CALL MASS_S_D (LO)
			CASE (3)
				CALL MASS_S_D (LO)
			CASE (9)
			    CALL CONMASS_S (LO)
			CASE DEFAULT
				CALL MASS_S (LO)
		 END SELECT
!.....FOR CARTESIAN COORDINATES
	  ELSE
		 SELECT CASE (LO%LAYGOV)
			CASE (0) 
				CALL MASS_C (LO) !USE LINEAR SHALLOW WATER EQUATIONS
			CASE (1) 
				CALL CONMASS (LO) !USE NONLINEAR SHALLOW WATER EQUATIONS
			CASE (2)
				CALL MASS_C_D (LO) !USE LINEAR SWE WITH DISPERSION-IMPROVED SCHEME
			CASE (3)
				CALL MASS_C_D (LO) !USE NONLINEAR SWE WITH DISPERSION-IMPROVED SCHEME
			CASE (5)
				CALL CONMASS (LO) !USE LINEAR SWE WITH DISPERSION-IMPROVED SCHEME????? need check
			CASE (9)
			    CALL CONMASS (LO) !USE NONLINEAR SWE WITH DISPERSION-IMPROVED SCHEME* ???need check
			CASE DEFAULT
				CALL MASS_C (LO)
		 END SELECT
	  ENDIF

	  RETURN
	  END

!----------------------------------------------------------------------
      SUBROUTINE MASS_S (L)
! ....SOLVE CONTINUITY EQUATION UNDER SPHERICAL COORD. 
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) 	:: L
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
      DATA UB/99.0/
!
      IS = 2
	  JS = 2
	  IF (L%ID .EQ. 1) THEN
	     IE = L%NX-1    !FOR OUTEST LAYER
	     JE = L%NY-1
	  ELSE
	     IE = L%NX      !FOR INNER LAYER
         JE = L%NY
      END IF
!OMP 111025 v1
!$omp parallel
!$omp do private(J,I) firstprivate(JM1,ZZ)
      DO J=JS,JE
         JM1 = J-1
         DO I=IS,IE
            IF (L%H(I,J) .GT. GX) THEN
               ZZ = L%Z(I,J,1)-L%R1(I,J)*(L%M(I,J,1)-L%M(I-1,J,1))	&
								-L%R11(I,J)*(L%N(I,J,1)*L%R6(J)		&
								-L%N(I,JM1,1)*L%R6(JM1))
			   IF (L%INI_SWITCH.EQ.3 .OR. L%INI_SWITCH.EQ.4)		&
								ZZ = ZZ-(L%HT(I,J,2)-L%HT(I,J,1))
			   IF (ABS(ZZ) .LT. EPS) ZZ = ZERO
!*			   IF (ABS(ZZ) .GT. UB) ZZ=SIGN(UB,ZZ)
			   !DEPRESSION CANNOT BE LESS THAN BOTTOM ELEVATION
			   IF ( (ZZ+L%H(I,J)) .LE. EPS ) ZZ = -L%H(I,J)
               L%Z(I,J,2) = ZZ
		    ELSE
		       L%Z(I,J,2) = 0.0
            ENDIF
         END DO
      END DO
!$omp end parallel
      RETURN
      END

!----------------------------------------------------------------------
      SUBROUTINE MASS_C (L)		 
! ....SOLVE CONTINUITY EQUATION (LINEAR) IN CARTESIAN COORD. 
!     LAYID = 1, OUTEST LAYER
!     OTHERWISE, INNER LAYER 
!
!     NOTES: ADD SUPPORT FOR DX\=DY (FOR HIGH-LATITUDE, 05/04/2007)
!            RX = L%R
!            RY = L%DT/L%DY
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) 	:: L
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
      DATA UB/99.0/

	  RX = L%RX
	  RY = L%RY
!
      IS = 2
      JS = 2
	  IF (L%ID .EQ. 1) THEN  !OUTTEST LAYER				 
	     IE = L%NX -1
	     JE = L%NY -1
	  ELSE				  ! INNER LAYER
	     IE = L%NX
	     JE = L%NY
	  ENDIF

	  IF (L%DIM.EQ.1) THEN
		 L%N(:,:,:) = 0.0
		 JS = NINT(L%NY/2.0)
		 JE = NINT(L%NY/2.0)
	  ENDIF
!OMP 111025 v1
!$omp parallel
!$omp do private(J,I) firstprivate(ZZ)
      DO J=JS,JE
         DO I=IS,IE
            IF (L%H(I,J) .GT. GX) THEN
               ZZ = L%Z(I,J,1) - RX*(L%M(I,J,1)-L%M(I-1,J,1))			&
							- RY*(L%N(I,J,1)-L%N(I,J-1,1))
			   IF (L%INI_SWITCH.EQ.3 .OR. L%INI_SWITCH.EQ.4)			&
									ZZ = ZZ-(L%HT(I,J,2)-L%HT(I,J,1))  
			   IF (ABS(ZZ) .LT. EPS) ZZ = ZERO
			   !DEPRESSION CANNOT BE LESS THAN BOTTOM ELEVATION
!*			   IF (ABS(ZZ) .GT. UB) ZZ=SIGN(UB,ZZ)  
			   IF ( (ZZ+L%H(I,J)) .LE. EPS ) ZZ = -L%H(I,J)
               L%Z(I,J,2) = ZZ
		    ELSE
               L%Z(I,J,2) = 0.0
            ENDIF
		    IF (L%DIM.EQ.1) L%Z(I,:,2) = L%Z(I,J,2)
         END DO
      END DO
!$omp end parallel
      RETURN
      END



!----------------------------------------------------------------------5555
      SUBROUTINE CONMASS (L)
!.....SOVLE CONTINUITY EQUATION (NONLINEAR) IN CARTESIAN COORD.
!     LAYID = 1, OUTEST LAYER
!     OTHERWISE, INNER LAYER 
!.....DD  TOTAL WATER DEPTH
!----------------------------------------------------------------------
      USE LAYER_PARAMS
!	  USE DFLIB
      TYPE (LAYER) 	:: L
	  REAL FM
!	  INTEGER ERR, ERR_TABLE(L%NX,L%NY)
!	  INTEGER(2) STATUS
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

      RX = L%RX
	  RY = L%RY

	  IF ( L%ID .EQ. 1 ) THEN  !OUTTEST LAYER !20
		 IS = 2
		 JS = 2
	     IE = L%NX -1
		 JE = L%NY -1
	  ELSE
		 IS = 2
		 JS = 2
	     IE = L%NX
		 JE = L%NY
	  ENDIF

	  IF (L%DIM .EQ. 1) THEN
		 L%N(:,:,:) = 0.0
		 JS = NINT(L%NY/2.0)
		 JE = NINT(L%NY/2.0)
	  ENDIF

!*	  L%DZ = 0.0
!OMP 111025 1b
!$omp parallel
!$omp do private(J,I) firstprivate(ZZZ,DD)
      DO J = JS, JE		
         DO I = IS, IE	
            IF (L%H(I,J) .GT. ELMAX) THEN
               ZZZ = L%Z(I,J,1) - RX*(L%M(I,J,1)-L%M(I-1,J,1))		&
			                 - RY*(L%N(I,J,1)-L%N(I,J-1,1))
			   IF (L%INI_SWITCH.EQ.3 .OR. L%INI_SWITCH.EQ.4)		&
							ZZZ = ZZZ-(L%HT(I,J,2)-L%HT(I,J,1))
               IF (ABS(ZZZ) .LT. EPS) ZZZ = 0.0
               DD = ZZZ + L%H(I,J)
               IF (DD .GE. GX) THEN
                  L%DZ(I,J,2) = DD
                  L%Z(I,J,2)  = ZZZ
               ELSE
                  L%DZ(I,J,2) = 0.0
                  L%Z(I,J,2)  = -L%H(I,J)
               ENDIF
            ELSE
               L%DZ(I,J,2) = 0.0
               L%Z(I,J,2)  = -L%H(I,J)
            ENDIF
		    IF (L%DIM.EQ.1) L%Z(I,:,2) = L%Z(I,JS,2)
         ENDDO
	  ENDDO
!$omp end parallel
      RETURN
      END
      
!----------------------------------------------------------------------6666
      SUBROUTINE CONMASS_S (L)
!.....SOVLE CONTINUITY EQUATION (NONLINEAR) IN SPHERICAL COORD.
!     LAYID = 1, OUTEST LAYER
!     OTHERWISE, INNER LAYER 
!.....DD  TOTAL WATER DEPTH
!----------------------------------------------------------------------
      USE LAYER_PARAMS
!	  USE DFLIB
      TYPE (LAYER) 	:: L
	  REAL FM
!	  INTEGER ERR, ERR_TABLE(L%NX,L%NY)
!	  INTEGER(2) STATUS
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

      IS = 2
	  JS = 2
	  IF (L%ID .EQ. 1) THEN
	     IE = L%NX-1    !FOR OUTEST LAYER
	     JE = L%NY-1
	  ELSE
	     IE = L%NX      !FOR INNER LAYER
         JE = L%NY
      END IF
!OMP 111025 1b
!$omp parallel
!$omp do private(J,I) firstprivate(JM1,ZZ,DD)	  
      DO J=JS,JE
         JM1 = J-1
         DO I=IS,IE
            IF (L%H(I,J) .GE. ELMAX) THEN
               ZZ = L%Z(I,J,1)-L%R1(I,J)*(L%M(I,J,1)-L%M(I-1,J,1))	&
			        - L%R11(I,J)*(L%N(I,J,1)*L%R6(J)-L%N(I,JM1,1)	&
					* L%R6(JM1))
               IF (L%INI_SWITCH.EQ.3 .OR. L%INI_SWITCH.EQ.4)		&
									ZZ = ZZ-(L%HT(I,J,2)-L%HT(I,J,1))   
			   IF (ABS(ZZ) .LT. EPS) ZZ = ZERO
               DD = ZZ + L%H(I,J)
               IF (DD .GE. GX) THEN
                  L%DZ(I,J,2) = DD
                  L%Z(I,J,2)  = ZZ
               ELSE
                  L%DZ(I,J,2) = 0.0
                  L%Z(I,J,2)  = - L%H(I,J)
               ENDIF
            ELSE
               L%DZ(I,J,2) = 0.0
               L%Z(I,J,2)  = - L%H(I,J)
            ENDIF
         END DO
      END DO
!$omp end parallel
      RETURN
      END

!----------------------------------------------------------------------
      SUBROUTINE MOMENT (LO)
! ....SOLVE MOMENTUM EQUATION 
!OPTIONS:
!	0 - LINEAR EQUATION WITHOUT DISPERSION ADJUSTMENT
!	1 - NONLINEAR EQUATION WITHOUT DISPERSION ADJUSTMENT
!	2 - LINEAR EQUATION WITH DISPERSION ADJUSTMENT
!	3 - NONLINEAR EQUATION WITH DISPERSION ADJUSTMENT
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) 	:: LO
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

!.....FOR SPHERICAL COORDINATES
      IF (LO%LAYCORD .EQ. 0) THEN
		 SELECT CASE (LO%LAYGOV)
			CASE (0)
				CALL MOMT_S (LO)
			CASE (1)
				CALL CONMOME_S (LO)
			CASE (2)
				CALL MOMT_S_D (LO)
			CASE (3)
				CALL MOMT_S_D (LO)
			CASE (9)
			    CALL CONMOME_S (LO)
			CASE DEFAULT
				CALL MOMT_S (LO)
		 END SELECT
!.....FOR CARTESIAN COORDINATES
	  ELSE
		 SELECT CASE (LO%LAYGOV)
			CASE (0)
				CALL MOMT_C (LO)
			CASE (1)
				CALL CONMOME (LO)
			CASE (2)
				CALL MOMT_C_D (LO)
			CASE (3)
				CALL MOMT_C_D (LO)
			CASE (5)
				CALL CONMOME (LO)
			CASE (9)
			    CALL CONMOME (LO)
			CASE DEFAULT
				CALL MOMT_C (LO)
		 END SELECT
	  ENDIF
 
	  RETURN
	  END



!----------------------------------------------------------------------3333
      SUBROUTINE MOMT_S (L)
! ....SOLVE MOMENTUM EQUATION (LINEAR) IN SPHERICAL COORD.
!     LAYID = 1, OUTEST LAYER
!     OTHERWISE, INNER LAYER 
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) 	:: L
	  REAL SCM
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
      DATA TWLVTH/0.08333333333333/
	  
	  SCM = 0.0
!
      IE = L%NX-1
      JE = L%NY-1
	  IS = 2
	  JS = 2
	  IF (L%ID .EQ. 1) THEN
	     IS = 1
		 JS = 1
      END IF
	  
	  
!OMP 111025 v0
!$omp parallel
!$omp do private(I,J) firstprivate(IP1,JM1,JP1,TOT_N,XM,SCM)
	  DO I=IS,IE
         IP1 = I+1
         DO J=JS,L%NY
		    
			IF ((L%H(I,J).GT.GX) .AND. (L%H(IP1,J).GT.GX)) THEN
				JM1 = J-1
				JP1 = J+1
				IF (JM1.LE.1) JM1 = 1
				IF (JP1.GE.L%NY) JP1 = L%NY
!--------��R3���O
!				TOT_N = L%N(I,J,1) + L%N(IP1,J,1) + L%N(I,JM1,1)	&
!												+ L%N(IP1,JM1,1)
!				XM = L%M(I,J,1) - L%R2(I,J)*(L%Z(IP1,J,2)			&
!								- L%Z(I,J,2)) + L%R3(I,J)*TOT_N !��R3�즡�O
!--------����R3���O	
				XM = L%M(I,J,1) - L%R2(I,J)*(L%Z(IP1,J,2)			&
								- L%Z(I,J,2)) !����R3���O
								
			            IF (L%INI_SWITCH.EQ.6) THEN
				XM = XM - L%R31(I,J)*(L%Pa(IP1,J)- L%Pa(I,J))  !�j�����O 170220
				XM = XM + 0.5*(L%WSX(I,J)+L%WSX(IP1,J))*L%DT/RHO_W  !C-grid����y�Ъ������O������u�y��  180702
                        ENDIF
				IF (L%MODSCM .EQ. 0) THEN
					SCM =  L%R2(I,J)*TWLVTH*((L%Z(IP1,JP1,2)		&
								- 2*L%Z(IP1,J,2)+L%Z(IP1,JM1,2))	&
								- (L%Z(I,JP1,2)-2*L%Z(I,J,2)		&
								+ L%Z(I,JM1,2)))
					XM = XM - SCM
				ENDIF
				IF (ABS(XM) .LT. EPS) XM = ZERO
				L%M(I,J,2) = XM
			ELSE
			    L%M(I,J,2) = 0.0
			END IF
         END DO
      END DO      
!
!$omp barrier
!$omp do private(J,I) firstprivate(JP1,IM1,IP1,TOT_M,XN,SCM)
      DO J=JS,JE
         JP1 = J+1
         DO I=IS,L%NX
			IF ((L%H(I,J).GT.GX) .AND. (L%H(I,JP1).GT.GX)) THEN
				IM1 = I-1
				IP1 = I+1
				IF (IM1.LE.1) IM1 = 1
				IF (IP1.GE.L%NX) IP1 = L%NX
!--------��R5���O
!				TOT_M = L%M(IM1,J,1) + L%M(IM1,JP1,1) + L%M(I,J,1)	&
!													+ L%M(I,JP1,1)
!				XN = L%N(I,J,1) - L%R4(I,J)*(L%Z(I,JP1,2)			&
!								- L%Z(I,J,2))-L%R5(I,J)*TOT_M !��R5���O
!--------����R5���O
				XN = L%N(I,J,1) - L%R4(I,J)*(L%Z(I,JP1,2)			&
								- L%Z(I,J,2))  !����R5���O
								
			            IF (L%INI_SWITCH.EQ.6) THEN								
				XN = XN - L%R32(I,J)*(L%Pa(I,JP1)- L%Pa(I,J))  ! �j�����O 170220
				XN = XN + 0.5*(L%WSY(I,J)+L%WSY(I,JP1))*L%DT/RHO_W  !C-grid����y�Ъ������O������v�y��  180702
                        ENDIF
				IF (L%MODSCM .EQ. 0) THEN
					SCM = L%R4(I,J)*TWLVTH*((L%Z(IP1,JP1,2)			&
								- 2*L%Z(I,JP1,2)+L%Z(IM1,JP1,2))	&
			                    - (L%Z(IP1,J,2)-2*L%Z(I,J,2)		&
								+ L%Z(IM1,J,2)))
					XN = XN - SCM
				ENDIF
				IF (ABS(XN) .LT. EPS) XN = ZERO
				L%N(I,J,2) = XN
			ELSE
			    L%N(I,J,2) = 0.0
			END IF
         END DO
      END DO
!$omp end parallel
!
      RETURN
      END

!----------------------------------------------------------------------2222
      SUBROUTINE MOMT_C (L)
!.....SOLVE MOMENTUM EQUATION (LINEAR) IN CARTESIAN COORD. 
!     LAYID = 1, OUTEST LAYER
!     OTHERWISE, INNER LAYER 
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) 	:: L
	  REAL SCM, GRX,GRY,FF,FM
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
      DATA TWLVTH/0.08333333333333/

	  SCM = 0.0
	  CONST = 0.5*L%DT*GRAV
	  FM = L%FRIC_COEF
	  FF = 0.0

	  RX = L%RX
	  RY = L%RY
	  GRX = L%GRX
	  GRY = L%GRY
!
      IE = L%NX-1
      JE = L%NY-1
	  IF (L%ID .EQ. 1) THEN
	     IS = 1
		 JS = 1
	  ELSE
	     IS = 2
		 JS = 2
	  END IF

	  IF (L%DIM.EQ.1) THEN
		 L%N(:,:,:) = 0.0
		 JS = NINT(L%NY/2.0)
		 JE = NINT(L%NY/2.0)
	  ENDIF
!OMP 111025 v0
!$omp parallel
!$omp do private(I,J) firstprivate(IP1,JM1,JP1,HM,XM,FM,XQQ,FF,SCM)
      DO I=IS,IE
         IP1 = I+1
         DO J=JS,JE+1
			IF ((L%H(I,J).GT.GX) .AND. (L%H(IP1,J).GT.GX)) THEN
				JM1 = J-1
				JP1 = J+1
				IF (JM1 .LT. 1) JM1 = 1
				IF (JP1 .GT. L%NY ) JP1 = L%NY
				HM = L%HP(I,J)+0.5*(L%Z(I,J,2)+L%Z(IP1,J,2))  !H
               !Pnew=Pold - g* dt/dx * H *(eta2-eta1)
				XM = L%M(I,J,1)-L%GRX*HM*(L%Z(IP1,J,2)-L%Z(I,J,2))
!...........USE BOTTOM FRICTION
				IF (L%FRIC_SWITCH.NE.1) THEN
					IF (L%FRIC_SWITCH .EQ. 2) FM = L%FRIC_VCOEF(I,J)
					XQQ = 0.25*(L%N(I,J,1) + L%N(IP1,J,1)			&
								+ L%N(I,JM1,1) + L%N(IP1,JM1,1))
!					DF = 0.5*(L%H(I,J)+L%H(IP1,J))
					IF (HM.GE.1.0E-3) THEN
						FF = CONST*FM*FM*SQRT(L%M(I,J,1)**2			&
										+ XQQ**2)/HM**(2.3333333)
					ELSE
						FF = 0.0
					ENDIF
					XM = XM - FF*L%M(I,J,1)
				ENDIF
				IF (L%MODSCM .EQ. 0) THEN
					SCM = L%GRX*TWLVTH*HM*((L%Z(IP1,JP1,2)			&
								- 2*L%Z(IP1,J,2)+L%Z(IP1,JM1,2))	&
								- (L%Z(I,JP1,2)-2*L%Z(I,J,2)		&
								+ L%Z(I,JM1,2)))
					XM = XM - SCM
				ENDIF
				IF (L%FRIC_SWITCH.NE.1) XM = XM/(1.+FF)
				IF (ABS(XM) .LT. EPS) XM = ZERO
				L%M(I,J,2) = XM
			ELSE
				XM = 0.0
			    L%M(I,J,2) = XM
			END IF
			IF (L%DIM.EQ.1) L%M(I,:,2) = XM
		 END DO
      END DO
!$omp end parallel
!
	  IF (L%DIM .NE. 1) THEN
!OMP 111025 v0
!$omp parallel
!$omp do private(J,I) firstprivate(JP1,IM1,IP1,HN,XN,FM,XPP,FF,SCM)
      DO J=JS,JE
         JP1 = J+1
         DO I=IS,IE+1
			IF ((L%H(I,J).GT.GX) .AND. (L%H(I,JP1).GT.GX)) THEN
				IM1 = I-1
				IP1 = I+1
				IF (IM1 .LT. 1) IM1 = 1
				IF (IP1 .GE. L%NX) IP1 = L%NX
				HN = L%HQ(I,J)+0.5*(L%Z(I,J,2)+L%Z(I,JP1,2))
				XN = L%N(I,J,1)-L%GRY*HN*(L%Z(I,JP1,2)-L%Z(I,J,2))
!...........USE BOTTOM FRICTION
				IF (L%FRIC_SWITCH.NE.1) THEN
					IF (L%FRIC_SWITCH .EQ. 2) FM = L%FRIC_VCOEF(I,J)
					XPP = 0.25*(L%M(I,J,1) + L%M(I,JP1,1)			&
								+ L%M(IM1,J,1) + L%M(IM1,JP1,1))
!					DF = 0.5*(L%H(I,J)+L%H(I,JP1))
					IF (HN.GE.1.0E-5) THEN
						FF = CONST*FM*FM*SQRT(L%N(I,J,1)**2			&
										+ XPP**2)/HN**(2.3333333)
					ELSE
						FF = 0.0
					ENDIF
					XN = XN - FF*L%N(I,J,1)
				ENDIF

				IF (L%MODSCM .EQ. 0) THEN
					SCM = L%GRY*TWLVTH*HN*((L%Z(IP1,JP1,2)			&
								- 2.*L%Z(I,JP1,2)+L%Z(IM1,JP1,2))	&
			                    - (L%Z(IP1,J,2)-2.*L%Z(I,J,2)		&
								+ L%Z(IM1,J,2)))
					XN = XN - SCM
				ENDIF

				IF (L%FRIC_SWITCH.NE.1) XN = XN/(1.0+FF)
				IF (ABS(XN) .LT. EPS) XN = ZERO
				L%N(I,J,2) = XN
			ELSE
			    L%N(I,J,2) = 0.0
			END IF
         END DO
      END DO
!$omp end parallel
	  ENDIF
!
      RETURN
      END

!----------------------------------------------------------------------1111
      SUBROUTINE CONMOME (L)
!....SOVLE NONLINEAR MOMENTUM EQUATION, CARTESIAN COORD.
!....DP,DQ: TOTAL WATER DEPTH AT DISCHARGE POINT
!....HP,HQ: STILL WATER DEPTH AT DISCHARGE POINT
!....HZ   : WATER DEPTH (+: WATER; -: LAND)
!....Z    : FREE SURFACE ELEVATION
!    P,Q  : VOLUME FLUX IN X AND Y DIRECTION;
!    NX,NY: DIMENSION OF DOMAIN IN X AND Y DIRECTION
!    LAST REVISE: NOV.17 2008 BY XIAOMING WANG
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) 	:: L
      REAL DP(L%NX,L%NY,2),DQ(L%NX,L%NY,2),DZ(L%NX,L%NY,2)
	  REAL HP(L%NX,L%NY),HQ(L%NX,L%NY)
      REAL HZ(L%NX,L%NY),P(L%NX,L%NY,2),Q(L%NX,L%NY,2),Z(L%NX,L%NY,2)
!	  REAL T_BREAK(L%NX,L%NY)
	  REAL RX, RY, DT, GRX, GRY,SCM,NU
	  INTEGER IX, JY, IFRIC, LIN_CHK, MOD_SCM
	  INTEGER LAYID,SPAN,SPANX,SPANY
	  INTEGER NOFLUX   !FLAG TO DETERMINE IF FLUX IS CALCULATED
!	  INTEGER MASK(L%NX,L%NY)
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

	  SCM = 0.0
	  ADVX = 0.0
	  ADVY = 0.0
	  NOFLUX = 0
!	  L%MASK = 0

	  IDIM = L%DIM

	  IF (IDIM.EQ.1) L%N(:,:,:) = 0.0
	  IF (L%LAYGOV.EQ.9) L%LINCHK = 0
      
	  LAYID=L%ID
	  IX = L%NX
	  JY = L%NY
      HZ = L%H
	  P = L%M
	  Q = L%N
	  Z = L%Z
	  DZ = L%DZ
	  DT = L%DT
	  RX = L%RX
	  RY = L%RY
      GRX = L%GRX
	  GRY = L%GRY

	  IFRIC = L%FRIC_SWITCH
	  FM = L%FRIC_COEF
	  LIN_CHK = L%LINCHK
	  MOD_SCM = L%MODSCM

	  HP = L%HP
	  HQ = L%HQ

!.....FOR FRICTIONAL EFFECTS
      IF (IFRIC .NE. 1) THEN
         CONST = 0.5*DT*GRAV
      ELSE
         CONST = 0.0
      ENDIF

!CALCULATE TOTAL WATER DEPTH AND TOTAL WATER DEPTH AT DISCHARGE POINT
!OMP 111025 v0
!$omp parallel
!$omp do private(I,J) firstprivate(IP1,JP1,DP1,DP2,DQ1,DQ2)
      DO I=1,IX  !-1
	  	 IP1 = I+1   !!
		 IF (IP1 .GE. IX) IP1=IX  !!
         DO J=1,JY  !-1
			JP1 = J+1  !!
			IF (JP1 .GE. JY) JP1=JY   !!
			DP1 = 0.25*(DZ(I,J,2)+DZ(I,J,1)+DZ(IP1,J,2)+DZ(IP1,J,1))
			DP2 = 0.50*(DZ(I,J,2)+DZ(IP1,J,2))
			DQ1 = 0.25*(DZ(I,J,2)+DZ(I,J,1)+DZ(I,JP1,2)+DZ(I,JP1,1))
			DQ2 = 0.50*(DZ(I,J,2)+DZ(I,JP1,2))

			IF (DP1 .LT. GX) DP1 = 0.0
			IF (DP2 .LT. GX) DP2 = 0.0
			IF (DQ1 .LT. GX) DQ1 = 0.0
			IF (DQ2 .LT. GX) DQ2 = 0.0

			DP(I,J,1) = DP1
			DP(I,J,2) = DP2
			DQ(I,J,1) = DQ1
			DQ(I,J,2) = DQ2
         END DO
      END DO 
!$omp end parallel
	  !WIDTH OF BUFFER GRIDS BEFORE IMPLEMENTING NONLINEAR CALCULATION
	  SPAN = 10  
	  ISPANS = SPAN  !
	  ISPANE = IX - SPAN
	  JSPANS = SPAN
	  JSPANE = JY - SPAN

!.....SOLVE MOMENTUM EQUATION IN X DIRECTION     
!!3  MODIFY THE DOMAIN OF COMPUTATION

      IS = 2
	  JS = 2
	  IE = IX-1
!	  IE = IX
	  JE = JY
	  IF (LAYID .EQ. 1) THEN
	      IS = 1
		  JS = 1
		  IE = IX-1
		  JE = JY-1
	  ENDIF

	  IF (IDIM.EQ.1) JS = FLOOR(L%NY/2.0)
	  IF (IDIM.EQ.1) JE = FLOOR(L%NY/2.0)

!OMP 111025 v0
!$omp parallel
!$omp do private(I,J) firstprivate(IP1,IP2,IM1,SCM,NOFLUX,JP1,JM1,DD,DF,&
!$omp XQQ,FM,FF,XP,ADVX,ADVY,XQE,PQ_LIMIT)
      DO I = IS, IE 
	     IP2 = I+2
		 IP1 = I+1 
		 IM1 = I-1
		 IF (IM1.LE.1) IM1 = 1
		 IF (IP1 .GE. IX) IP1 = IX	
		 IF (IP2 .GE. IX) IP2 = IX       
         DO J = JS, JE
			SCM = 0.0
			NOFLUX = 0  ! 0: CALC. FLUXES; 1: DON'T CALC. FLUXES  
!			L%MASK(I,J) = 0        
			JP1 = J+1
			JM1 = J-1
			IF (JM1.LE.1) JM1 = 1
			IF (JP1 .GE. JY) JP1 = JY
!..CALCULATE X-DIRECTION LINEAR TERMS
	        IF (HZ(I,J).LE.ELMAX .OR. HP(I,J) .LE. ELMAX) THEN
				P(I,J,2) = 0.0
				NOFLUX = 1
            ELSE
!DETERMINE MOVING BOUNDARY (CHANGE 0.0 TO GX)
				IF (DZ(I,J,2).GT.GX .AND. DZ(IP1,J,2).GT.GX) THEN
					DD = DP(I,J,2)
					DF = DP(I,J,1)
				ELSEIF (DZ(I,J,2).GT.GX .AND. DZ(IP1,J,2).LE.GX		&
						.AND. HZ(IP1,J)+Z(I,J,2).GT.GX) THEN
!*					DD = HZ(IP1,J) + Z(I,J,2)
!					DD = HP(I,J) + 0.5*(Z(I,J,2)+Z(IP1,J,2))
					DD = 0.5*DZ(I,J,2)
					DF = DD
!					L%MASK(I,J) = 1
				ELSEIF (DZ(I,J,2).LE.GX .AND. DZ(IP1,J,2).GT.GX		&
						.AND. HZ(I,J)+Z(IP1,J,2) .GT. GX) THEN
!*					DD = HZ(I,J) + Z(IP1,J,2)
!					DD = HP(I,J) + 0.5*(Z(I,J,2)+Z(IP1,J,2))
					DD = 0.5*DZ(IP1,J,2)
					DF = DD
!					L%MASK(I,J) = 1
				ELSE
					P(I,J,2) = 0.0
					NOFLUX = 1
				ENDIF
	 
				IF (DD .LT. GX) THEN
					P(I,J,2) = 0.0
					NOFLUX = 1
				ENDIF			
			ENDIF 

!---------->COMPUTE X FLUX COMPONENT
            IF (NOFLUX .NE. 1) THEN  !--<<<<X<<<<
!..ESTABLISH A LOWER BOUND
			IF (DF .LT. 1.0E-3) THEN
				DF = 1.0E-3
			ENDIF

			XQQ = 0.25*(Q(I,J,1) + Q(IP1,J,1)						&
								+ Q(I,JM1,1) + Q(IP1,JM1,1)) !7!

!..FIXED FRICTIONAL COEFFICIENT - MANNING
			!USING VARIABLE MANNING COEF.
			IF (IFRIC .EQ. 2) FM = L%FRIC_VCOEF(I,J)
			IF (IFRIC .NE. 1) THEN
!*				XQQ = 0.25*(Q(I,J,1) + Q(IP1,J,1)					&
!*								+ Q(I,JM1,1) + Q(IP1,JM1,1)) !7!
				FF = CONST*FM*FM*SQRT(P(I,J,1)**2					&
								+ XQQ**2)/DF**(2.3333333)
			ELSE
				FF = 0.0
			ENDIF

!.....>>COMPUTE LINEAR PART IN NONLINEAR MOMENTUM EQUATION<<....
			XP = P(I,J,1) - GRX*DD*(Z(IP1,J,2)-Z(I,J,2))
!!7!->  MODIFIED OR OLD SCHEME FOR MOMENTUM EQUATION
			IF (MOD_SCM.EQ.0 .AND. J.LT.JY) THEN
				SCM = GRX*DD/12.									&
						*((Z(IP1,JP1,2)-2*Z(IP1,J,2)+Z(IP1,JM1,2))	&
						-(Z(I,JP1,2)-2*Z(I,J,2)+Z(I,JM1,2)))
				XP = XP - SCM
			ENDIF

			IF (IFRIC .NE. 1) XP = XP - FF*P(I,J,1)
!!7! <-

!.....>>COMPUTE CONVECTION TERMS IN NONLINEAR MOMENTUM EQUATION<<...
			IF (LIN_CHK.EQ.1 .AND. DP(I,J,1).GE.GX .AND.			&
				(I.GT.ISPANS .AND. I.LT.ISPANE .AND.J.GT.JSPANS		&
				.AND. J.LT.JSPANE)) THEN
!			IF (LIN_CHK.EQ.1 .AND. MASK(I,J).EQ.1) THEN

!*				XQQ = 0.25*(Q(I,J,1) + Q(IP1,J,1)					&
!*								+ Q(I,JM1,1) + Q(IP1,JM1,1)) !7!
				ADVX = 0.0
				ADVY = 0.0
!..UPWIND SCHEME FOR X-DIRECTION VOLUME FLUX COMPONENT
				IF (P(I,J,1) .LT. 0.0) THEN   !CHANGE .LE. TO .LT.
					IF (DP(IP1,J,1) .LT. GX .OR.					&
										DZ(IP1,J,2) .LT. GX) THEN
						ADVX = RX*(-P(I,J,1)**2/DP(I,J,1))
					ELSE
						ADVX = RX*(P(IP1,J,1)**2/DP(IP1,J,1)		&
										-P(I,J,1)**2/DP(I,J,1))
					ENDIF
!*					IF (DP(IP1,J,1).GE.GX .AND. DP(I,J,1).GE.GX) THEN
!*						XP = XP - RX*(P(IP1,J,1)**2/DP(IP1,J,1)		&
!*								- P(I,J,1)**2/DP(I,J,1))
!*					ENDIF
				ELSE
					IF (DP(IM1,J,1) .LT. GX .OR.					&
											DZ(I,J,2) .LT. GX) THEN
						ADVX = RX*(P(I,J,1)**2/DP(I,J,1))
					ELSE
						ADVX = RX*(P(I,J,1)**2/DP(I,J,1)			&
										-P(IM1,J,1)**2/DP(IM1,J,1))
					ENDIF
!*					IF (DP(I,J,1).GE.GX .AND. DP(IM1,J,1).GT.GX) THEN
!*						ADVX = RX*(P(I,J,1)**2/DP(I,J,1)			&
!*								- P(IM1,J,1)**2/DP(IM1,J,1))
!*					ENDIF

				ENDIF

!..UPWIND SCHEME FOR Y-DIRECTION VOLUME FLUX COMPONENT
				IF (XQQ .LT. 0.0) THEN
!*					XQE = 0.25*(Q(I,JP1,1) + Q(IP1,JP1,1)			&
!*									+ Q(I,J,1) + Q(IP1,J,1))
					IF (DZ(I,JP1,2) .LT. GX .OR.					&
										DZ(IP1,JP1,2) .LT. GX) THEN
						ADVY = RY*(-P(I,J,1)*XQQ/DP(I,J,1))
					ELSEIF (DP(I,JP1,1) .LT. GX) THEN
						ADVY = RY*(-P(I,J,1)*XQQ/DP(I,J,1))
					ELSE
						XQE = 0.25*(Q(I,JP1,1) + Q(IP1,JP1,1)		&
									+ Q(I,J,1) + Q(IP1,J,1))
						ADVY = RY*(P(I,JP1,1)*XQE/DP(I,JP1,1)		&
										-P(I,J,1)*XQQ/DP(I,J,1))
					ENDIF
!*					IF (DP(I,JP1,1).GT.GX .AND. DP(I,J,1).GT.GX) THEN
!*						XQE = 0.25*(Q(I,JP1,1) + Q(IP1,JP1,1)		&
!*									+ Q(I,J,1) + Q(IP1,J,1))
!*						ADVY = RY*(P(I,JP1,1)*XQE/DP(I,JP1,1)		&
!*								- P(I,J,1)*XQQ/DP(I,J,1))
!*					ENDIF
				ELSE
!*					XQE = 0.25*(Q(I,JM1,1) + Q(IP1,JM1,1)			&
!*									+ Q(I,J-2,1) + Q(IP1,J-2,1))

					IF (DZ(I,JM1,2) .LT. GX .OR.					&
										DZ(IP1,JM1,2) .LT. GX) THEN
						ADVY = RY*(P(I,J,1)*XQQ/DP(I,J,1))
					ELSEIF (DP(I,JM1,1) .LT. GX) THEN
						ADVY = RY*(P(I,J,1)*XQQ/DP(I,J,1))
					ELSE
						XQE = 0.25*(Q(I,JM1,1) + Q(IP1,JM1,1)		&
									+ Q(I,J-2,1) + Q(IP1,J-2,1))
						ADVY = RY*(P(I,J,1)*XQQ/DP(I,J,1)			&
									-P(I,JM1,1)*XQE/DP(I,JM1,1))
					ENDIF
!*					IF (DP(I,JM1,1).GT.GX .AND. DP(I,J,1).GT.GX) THEN
!*						XQE = 0.25*(Q(I,JM1,1) + Q(IP1,JM1,1)		&
!*									+ Q(I,J-2,1) + Q(IP1,J-2,1))
!*						ADVY = RY*(P(I,J,1)*XQQ/DP(I,J,1)			&
!*								- P(I,JM1,1)*XQE/DP(I,JM1,1))
!*					ENDIF
				ENDIF
				CALL WAVE_BREAKING (L,XP,XQ,ADVX,ADVY,I,J,1)
				XP = XP - ADVX - ADVY
			ENDIF
		    IF (IFRIC.NE.1) XP = XP/(1.0+FF)

!........LIMIT THE DISCHARGE
				IF (ABS(XP) .LT. EPS) XP = 0.0
				PQ_LIMIT = V_LIMIT*DD
				IF (XP .GT. PQ_LIMIT) XP = PQ_LIMIT
				IF (XP .LT. -PQ_LIMIT) XP =-PQ_LIMIT

				P(I,J,2) = XP
			
				IF (IDIM.EQ.1)	P(I,:,2) = XP
			ELSE   ! IF NOFLUX=1
			   P(I,J,2) = 0.0
			ENDIF  !--<<<<X<<<<
	     ENDDO
	  ENDDO
!$omp end parallel
       !7!	  
!.................................................................
!.....SOLVE MOMENTUM EQUATION IN Y DIRECTION
      IF (IDIM.NE.1) THEN
      IS = 2
	  JS = 2
	  IE = IX
	  JE = JY-1
!	  JE = JY
	  IF (LAYID .EQ. 1) THEN
	      IS = 1
		  JS = 1
		  IE = IX-1
		  JE = JY-1
	  ENDIF
!OMP 111025 v0
!$omp parallel
!$omp do private(I,J) firstprivate(IP1,IM1,SCM,NOFLUX,JP2,JP1,JM1,DD,DF,&
!$omp XPP,FM,FF,XQ,ADVX,ADVY,XPE,PQ_LIMIT)
      DO I = IS, IE          !3
	  	 IP1 = I+1
		 IM1 = I-1
		 IF (IM1.LE.1) IM1 = 1
		 IF (IP1 .GE. IX) IP1 = IX
		 DO J = JS, JE        !3
			SCM = 0.0
			NOFLUX = 0    ! FLAG: 0-CALCULATE Y FLUX; 1-DON'T CALCULATE Y FLUX
!			L%MASK(I,J) = 0
			JP2 = J+2
			JP1 = J+1
			JM1 = J-1
			IF (JM1.LE.1) JM1 = 1
			IF (JP1 .GE. JY) JP1 = JY
			IF (JP2 .GE. JY) JP2 = JY
!..GUESS THE RUNUP NEVER REACH AT HZ(I,J)=ELMAX
			IF (HZ(I,J).LE.ELMAX .OR. HQ(I,J).LE.ELMAX) THEN
				Q(I,J,2) = 0.0
				NOFLUX = 1
			ELSE
!DETERMINE MOVING BOUNDARY SCHEME
				IF (DZ(I,J,2).GT.GX .AND. DZ(I,JP1,2).GT.GX) THEN
					DD = DQ(I,J,2)
					DF = DQ(I,J,1)
				ELSEIF (DZ(I,J,2).GT.GX .AND. DZ(I,JP1,2).LE.GX		&
						.AND. HZ(I,JP1) + Z(I,J,2) .GT. GX) THEN
!*     				DD = HZ(I,JP1) + Z(I,J,2)
!					DD = HQ(I,J) + 0.5*(Z(I,J,2)+Z(I,JP1,2))
					DD = 0.5*DZ(I,J,2)
					DF = DD
				ELSEIF (DZ(I,J,2).LE.GX .AND. DZ(I,JP1,2).GT.GX		&
						.AND. HZ(I,J)+Z(I,JP1,2) .GT. GX) THEN
!*     				DD = HZ(I,J) + Z(I,JP1,2)
!					DD = HQ(I,J) + 0.5*(Z(I,J,2)+Z(I,JP1,2))
					DD = 0.5*DZ(I,JP1,2)
					DF = DD
				ELSE
	 				Q(I,J,2) = 0.0
           			NOFLUX = 1
				ENDIF   
	 
				IF (DD .LT. GX) THEN
					Q(I,J,2) = 0.0
					NOFLUX = 1  
				ENDIF
			ENDIF

!...........COMPUTE Y FLUX WHEN NOFLUX.NE.1
            IF (NOFLUX .NE. 1) THEN    !--<<<<Y<<<< 
!..CALCULATE Y-DIRECTION LINEAR TERMS
!..ESTABLISH A LOWER BOUND
			IF (DF .LT. 1.0E-3) THEN
				DF = 1.0E-3
			ENDIF
			XPP = 0.25*(P(I,J,1) + P(I,JP1,1)						&
								+ P(IM1,J,1) + P(IM1,JP1,1))  !7!
!..FIXED FRICTIONAL COEFFICIENT - MANNING
			IF (IFRIC .EQ. 2) FM = L%FRIC_VCOEF(I,J) !VARIABLE MANNING'S COEF.
			IF (IFRIC .NE. 1) THEN
!*				XPP = 0.25*(P(I,J,1) + P(I,JP1,1)					&
!*								+ P(IM1,J,1) + P(IM1,JP1,1))  !7!
				FF = CONST*FM*FM*SQRT(Q(I,J,1)**2					&
										+XPP**2)/DF**2.3333333
			ELSE
				FF = 0.0
			ENDIF

!...........SOLVE LINEAR VERSION OF MOMENTUM EQUATION IN Y DIRECTION
			XQ = Q(I,J,1) - GRY*DD*(Z(I,JP1,2)-Z(I,J,2))
!!7!->  MODIFIED OR OLD SCHEME FOR MOMENTUM EQUATION
			IF (MOD_SCM .EQ. 0 .AND. I.LT.IX) THEN
				SCM = GRY  * DD / 12.								&
					*((Z(IP1,JP1,2)-2*Z(I,JP1,2)+Z(IM1,JP1,2))		&
					-(Z(IP1,J,2)-2*Z(I,J,2)+Z(IM1,J,2)))
				XQ = XQ - SCM
			ENDIF

			IF (IFRIC .NE. 1) XP = XP - FF*Q(I,J,1)

			IF (LIN_CHK.EQ.1 .AND. DQ(I,J,1).GE.GX .AND.			&
				(I.GT.ISPANS .AND. I.LT.ISPANE .AND. J.GT.JSPANS	&
				.AND. J.LT.JSPANE)) THEN
!			IF (LIN_CHK.EQ.1 .AND. MASK(I,J).EQ.1) THEN
				 
!*				XPP = 0.25*(P(I,J,1) + P(I,JP1,1)					&
!*								+ P(IM1,J,1) + P(IM1,JP1,1))  !7!
				ADVX = 0.0
				ADVY = 0.0
!..UPWIND SCHEME FOR Y-DIRECTION VOLUME FLUX COMPONENT
				IF (Q(I,J,1) .LT. 0.0) THEN
					IF (DQ(I,JP1,1) .LT. GX .OR.					&
										DZ(I,JP1,2) .LT. GX) THEN
						ADVY = RY*(-Q(I,J,1)**2/DQ(I,J,1))
					ELSE
						ADVY = RY*(Q(I,JP1,1)**2/DQ(I,JP1,1)		&
										-Q(I,J,1)**2/DQ(I,J,1))

					ENDIF
!*					IF (DQ(I,JP1,1).GT.GX .AND. DQ(I,J,1).GT.GX) THEN
!*						ADVY = RY*(Q(I,JP1,1)**2/DQ(I,JP1,1)		&
!*								- Q(I,J,1)**2/DQ(I,J,1))
!*					ENDIF
				ELSE
					IF (DQ(I,JM1,1) .LT. GX .OR.					&
											DZ(I,J,2) .LT. GX) THEN
						ADVY = RY*(Q(I,J,1)**2/DQ(I,J,1))
					ELSE
						ADVY = RY*(Q(I,J,1)**2/DQ(I,J,1)			&
									-Q(I,JM1,1)**2/DQ(I,JM1,1))
					ENDIF
!*					IF (DQ(I,JM1,1).GT.GX) THEN
!*					XQ = XQ - RY*(Q(I,J,1)**2/DQ(I,J,1)				&
!*							- Q(I,JM1,1)**2/DQ(I,JM1,1))
!*					ENDIF
				ENDIF
	
!..UPWIND SCHEME FOR X-DIRECTION VOLUME FLUX COMPONENT
				IF (XPP .LT. 0.0) THEN
!*					XPE = 0.25*(P(IP1,J,1) + P(IP1,JP1,1)			&
!*									+ P(I,J,1) + P(I,JP1,1))

					IF (DZ(IP1,J,2) .LT. GX .OR.					&
										DZ(IP1,JP1,2) .LT. GX) THEN
						ADVX = RX*(-Q(I,J,1)*XPP/DQ(I,J,1))
					ELSEIF (DQ(IP1,J,1) .LT. GX) THEN
						ADVX = RX*(-Q(I,J,1)*XPP/DQ(I,J,1))
					ELSE
						XPE = 0.25*(P(IP1,J,1) + P(IP1,JP1,1)		&
									+ P(I,J,1) + P(I,JP1,1))
						ADVX = RX*(Q(IP1,J,1)*XPE/DQ(IP1,J,1)		&
										-Q(I,J,1)*XPP/DQ(I,J,1))
					ENDIF
!*					IF (DQ(IP1,J,1).GT.GX .AND. DQ(I,J,1).GT.GX) THEN
!*						XPE = 0.25*(P(IP1,J,1) + P(IP1,JP1,1)		&
!*									+ P(I,J,1) + P(I,JP1,1))
!*						XQ = XQ - RX*(Q(IP1,J,1)*XPE/DQ(IP1,J,1)	&
!*								- Q(I,J,1)*XPP/DQ(I,J,1))
!*					ENDIF
				ELSE
!*					XPE = 0.25*(P(IM1,J,1) + P(IM1,JP1,1)			&
!*									+ P(I-2,J,1) + P(I-2,JP1,1))

					IF (DZ(IM1,J,2) .LT. GX .OR.					&
										DZ(IM1,JP1,2) .LT. GX) THEN
						ADVX = RX*(Q(I,J,1)*XPP/DQ(I,J,1))
					ELSEIF (DQ(I-1,J,1) .LT. GX) THEN
						ADVX = RX*(Q(I,J,1)*XPP/DQ(I,J,1))
					ELSE
						XPE = 0.25*(P(IM1,J,1) + P(IM1,JP1,1)		&
									+ P(I-2,J,1) + P(I-2,JP1,1))
						ADVX = RX*(Q(I,J,1)*XPP/DQ(I,J,1)			&
									-Q(IM1,J,1)*XPE/DQ(IM1,J,1))
					ENDIF
!*					IF (DQ(IM1,J,1).GT.GX .AND. DQ(I,J,1).GT.GX) THEN
!*						XPE = 0.25*(P(IM1,J,1) + P(IM1,JP1,1)		&
!*									+ P(I-2,J,1) + P(I-2,JP1,1))
!*						ADVX = RX*(Q(I,J,1)*XPP/DQ(I,J,1)			
!*								- Q(IM1,J,1)*XPE/DQ(IM1,J,1))
!*					ENDIF
				ENDIF
				CALL WAVE_BREAKING (L,XP,XQ,ADVX,ADVY,I,J,2)
				XQ = XQ - ADVX - ADVY
			ENDIF
		    IF (IFRIC .NE. 1) XQ = XQ/(1.0+FF)
!...........LIMIT THE DISCHARGE
				IF (ABS(XQ) .LT. EPS) XQ = 0.0
				PQ_LIMIT = V_LIMIT*DD
				IF (XQ .GT. PQ_LIMIT) XQ = PQ_LIMIT
				IF (XQ .LT. -PQ_LIMIT) XQ =-PQ_LIMIT

				Q(I,J,2) = XQ
			ELSE  ! IF NOFLUX = 1
				Q(I,J,2) = 0.0
            ENDIF   !--<<<<Y<<<<
		  ENDDO
      ENDDO !7!
!$omp end parallel
	  ENDIF

      L%M = P
	  L%N = Q

!*	  CALL WAVE_BREAKING (L)

      RETURN
      END

!----------------------------------------------------------------------2222
      SUBROUTINE CONMOME_S (L)
!....SOVLE NONLINEAR MOMENTUM EQUATION, SPHERICAL COORD.
!....DP,DQ: TOTAL WATER DEPTH AT DISCHARGE POINT
!....HP,HQ: STILL WATER DEPTH AT DISCHARGE POINT
!....HZ   : WATER DEPTH (+: WATER; -: LAND)
!....Z    : FREE SURFACE ELEVATION
!    P,Q  : VOLUME FLUX IN X AND Y DIRECTION;
!    IX,JY: DIMENSION OF DOMAIN IN X AND Y DIRECTION
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) 	:: L
      REAL DP(L%NX,L%NY,2),DQ(L%NX,L%NY,2),DZ(L%NX,L%NY,2)
	  REAL HP(L%NX,L%NY),HQ(L%NX,L%NY)
      REAL HZ(L%NX,L%NY),P(L%NX,L%NY,2),Q(L%NX,L%NY,2),Z(L%NX,L%NY,2)
	  REAL RX, RY, DT, GRX, GRY
	  REAL ADVX,ADVY
	  INTEGER IX, JY, IFRIC, LIN_CHK, MOD_SCM
	  INTEGER LAYID,SPANX,SPANY
	  INTEGER NOFLUX   !FLAG TO DETERMINE IF FLUX IS CALCULATED
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

	  NOFLUX = 0

	  IDIM = 2
	  IF (IDIM.EQ.1) L%N(:,:,:) = 0.0

	  IF (L%LAYGOV.EQ.9) L%LINCHK = 0

	  LAYID=L%ID
	  IX = L%NX
	  JY = L%NY
      HZ = L%H
	  P = L%M
	  Q = L%N
	  Z = L%Z
	  DZ = L%DZ
	  DT = L%DT
	  RX = L%RX
	  RY = L%RY
      GRX = L%GRX
	  GRY = L%GRY

	  IFRIC = L%FRIC_SWITCH
	  FM = L%FRIC_COEF
	  LIN_CHK = L%LINCHK
	  MOD_SCM = L%MODSCM

	  HP = L%HP
	  HQ = L%HQ

	  !WIDTH OF BUFFER GRIDS BEFORE IMPLEMENTING NONLINEAR CALCULATION
	  NN = 10
	  ISPANS = NN
	  ISPANE = L%NX-NN
	  JSPANS = NN
	  JSPANE = L%NY-NN  

!..FOR FRICTIONAL EFFECTS
      IF (IFRIC .NE. 1) THEN
         CONST = 0.5*DT*GRAV
      ELSE
         CONST = 0.0
      ENDIF

!..CALCULATE TOTAL WATER DEPTH AND TOTAL WATER DEPTH AT DISCHARGE POINT
!OMP 111025 v0
!$omp parallel
!$omp do private(I,J) firstprivate(IP1,JP1,DP1,DP2,DQ1,DQ2)
      DO I=1,IX  !-1
         DO J=1,JY  !-1
			IP1 = I+1   !!
			IF (IP1 .GE. IX) IP1=IX  !!
			JP1 = J+1  !!
			IF (JP1 .GE. JY) JP1=JY   !!
			DP1 = 0.25*(DZ(I,J,2)+DZ(I,J,1)+DZ(IP1,J,2)+DZ(IP1,J,1))
			DP2 = 0.50*(DZ(I,J,2)+DZ(IP1,J,2))
			DQ1 = 0.25*(DZ(I,J,2)+DZ(I,J,1)+DZ(I,JP1,2)+DZ(I,JP1,1))
			DQ2 = 0.50*(DZ(I,J,2)+DZ(I,JP1,2))

			IF (DP1 .LT. GX) DP1 = 0.0
			IF (DP2 .LT. GX) DP2 = 0.0
			IF (DQ1 .LT. GX) DQ1 = 0.0
			IF (DQ2 .LT. GX) DQ2 = 0.0

			DP(I,J,1) = DP1
			DP(I,J,2) = DP2
			DQ(I,J,1) = DQ1
			DQ(I,J,2) = DQ2
         END DO
      END DO 
!$omp end parallel
!.....SOLVE MOMENTUM EQUATION IN X DIRECTION     
!!3  MODIFY THE DOMAIN OF COMPUTATION
      IS = 2
	  JS = 2
	  IE = IX-1
!	  IE = IX
	  JE = JY
	  IF (LAYID .EQ. 1) THEN
	      IS = 1
		  JS = 1
		  IE = IX-1
		  JE = JY-1
	  ENDIF

	  IF (IDIM.EQ.1) JS = FLOOR(L%NY/2.0)
	  IF (IDIM.EQ.1) JE = FLOOR(L%NY/2.0)

!OMP 111025 v0
!$omp parallel
!$omp do private(I,J) firstprivate(IP1,IM1,NOFLUX,JP1,JM1,DD,DF,&
!$omp XQQ,FM,FF,XP,ADVX,ADVY,XQE,PQ_LIMIT)
      DO I = IS, IE   
		 IP1 = I+1
		 IM1 = I-1  
		 IF (IM1.LE.1) IM1 = 1
		 IF (IP1 .GE. IX) IP1 = IX		   
         DO J = JS, JE
			NOFLUX = 0  !0: CALC FLUXES; 1: DON'T CALC FLUXES          
			JP1 = J+1
			JM1 = J-1
			IF (JM1.LE.1) JM1 = 1
			IF (JP1 .GE. JY) JP1 = JY
!..CALCULATE X-DIRECTION LINEAR TERMS
	        IF (HZ(I,J).LE.ELMAX .OR. HP(I,J) .LE. ELMAX) THEN
				P(I,J,2) = 0.0
				NOFLUX = 1
            ELSE
!..MOVING BOUNDARY
				IF (DZ(I,J,2).GT.GX .AND. DZ(IP1,J,2).GT.GX) THEN
					DD = DP(I,J,2)
					DF = DP(I,J,1)
				ELSEIF (DZ(I,J,2).GT.GX .AND. DZ(IP1,J,2).LE.GX	&
						.AND. HZ(IP1,J)+Z(I,J,2).GT.GX) THEN
!*					DD = HZ(IP1,J) + Z(I,J,2)
					DD = HP(I,J) + 0.5*(Z(I,J,2)+Z(IP1,J,2))
					DF = DD
				ELSEIF (DZ(I,J,2).LE.GX .AND. DZ(IP1,J,2).GT.GX	&
						.AND. HZ(I,J)+Z(IP1,J,2) .GT. GX) THEN
!*					DD = HZ(I,J) + Z(IP1,J,2)
					DD = HP(I,J) + 0.5*(Z(I,J,2)+Z(IP1,J,2))
					DF = DD
				ELSE
					P(I,J,2) = 0.0
					NOFLUX = 1
				ENDIF
	 
				IF (DD .LT. GX) THEN
					P(I,J,2) = 0.0
					NOFLUX = 1
				ENDIF			
			ENDIF


!---------->COMPUTE X FLUX COMPONENT
            IF (NOFLUX .NE. 1) THEN  !--<<<<X<<<<
!..ESTABLISH A LOWER BOUND
			IF (DF .LT. 1.0E-3) THEN
				DF = 1.0E-3
			ENDIF

!..FIXED FRICTIONAL COEFFICIENT - MANNING
			!USING VARIABLE MANNING COEF.
			XQQ = 0.25*(Q(I,J,1)+Q(IP1,J,1)+Q(I,JM1,1)+Q(IP1,JM1,1))
			IF (IFRIC .EQ. 2) FM = L%FRIC_VCOEF(I,J)
			IF (IFRIC .NE. 1) THEN
!!!				XQQ = 0.25*(Q(I,J,1)+Q(IP1,J,1)						&
!!!									+Q(I,JM1,1)+Q(IP1,JM1,1)) !7!
				FF = CONST*FM*FM*SQRT(P(I,J,1)**2					&
										+XQQ**2)/DF**(2.3333333)
			ELSE
				FF = 0.0
			ENDIF

!.....>>COMPUTE LINEAR PART IN NONLINEAR MOMENTUM EQUATION<<....
!!7!->  MODIFIED OR OLD SCHEME FOR MOMENTUM EQUATION
			IF (MOD_SCM.EQ.0 .AND. J.LT.JY) THEN
				XP = P(I,J,1) - L%R2(I,J)*DD*(Z(IP1,J,2)-Z(I,J,2))	& 
					- L%R2(I,J)  * DD / 12.							&
					* ((Z(IP1,JP1,2)-2*Z(IP1,J,2)+Z(IP1,JM1,2))		&
					-(Z(I,JP1,2)-2*Z(I,J,2)+Z(I,JM1,2)))
			ELSE
				XP = P(I,J,1) - L%R2(I,J)*DD*(Z(IP1,J,2)-Z(I,J,2))
			ENDIF
			IF (IFRIC.NE.1) XP = XP - FF*P(I,J,1)
!!!!!!!!COMPUTE CORIOLIS EFFECT
            XP = XP + 4.0*L%R3(I,J)*XQQ
!!7! <-

!.....>>COMPUTE CONVECTION TERMS IN NONLINEAR MOMENTUM EQUATION<<...
			IF (LIN_CHK.EQ.1 .AND. DP(I,J,1).GE.GX .AND.			&
				(I.GT.ISPANS .AND. I.LT.ISPANE .AND.				&
				J.GT.JSPANS .AND. J.LT.JSPANE) ) THEN

!!!				XQQ = 0.25*(Q(I,J,1)+Q(IP1,J,1)						&
!!!									+Q(I,JM1,1)+Q(IP1,JM1,1)) !7!
				ADVX = 0.0
				ADVY = 0.0
!..UPWIND SCHEME FOR X-DIRECTION VOLUME FLUX COMPONENT
				IF (P(I,J,1) .LT. 0.0) THEN   !CHANGE .LE. TO .LT.
					IF (DP(IP1,J,1) .LT. GX .OR.					&
										DZ(IP1,J,2) .LT. GX) THEN
						ADVX = L%R21(I,J)*(-P(I,J,1)**2/DP(I,J,1))
					ELSE
						ADVX = L%R21(I,J)						&
								*(P(IP1,J,1)**2/DP(IP1,J,1)			&
								-P(I,J,1)**2/DP(I,J,1))
					ENDIF
!*					IF (DP(IP1,J,1).GT.GX .AND. DP(I,J,1).GT.GX) THEN
!*						ADVX = L%R21(I,J)*(P(IP1,J,1)**2			&
!*								/ DP(IP1,J,1)-P(I,J,1)**2/DP(I,J,1))
!*					ENDIF
				ELSE
					IF (DP(IM1,J,1) .LT. GX .OR.					&
											DZ(I,J,2) .LT. GX) THEN
						ADVX = L%R21(I,J)*(P(I,J,1)**2/DP(I,J,1))
					ELSE
						ADVX = L%R21(I,J)*(P(I,J,1)**2/DP(I,J,1)	&
										-P(IM1,J,1)**2/DP(IM1,J,1))
					ENDIF
!*					IF (DP(IM1,J,1).GT.GX .AND. DP(I,J,1).GT.GX) THEN
!*						ADVX = L%R21(I,J)*(P(I,J,1)**2/DP(I,J,1)	&
!*								- P(IM1,J,1)**2/DP(IM1,J,1))
!*					ENDIF
				ENDIF

!..UPWIND SCHEME FOR Y-DIRECTION VOLUME FLUX COMPONENT
				IF (XQQ .LT. 0.0) THEN
!*					XQE = 0.25*(Q(I,JP1,1) + Q(IP1,JP1,1)			&
!*									+ Q(I,J,1) + Q(IP1,J,1))

					IF (DZ(I,JP1,2) .LT. GX .OR.					&
										DZ(IP1,JP1,2) .LT. GX) THEN
						ADVY = L%R0(I,J)*(-P(I,J,1)*XQQ/DP(I,J,1))
					ELSEIF (DP(I,JP1,1) .LT. GX) THEN
						ADVY = L%R0(I,J)*(-P(I,J,1)*XQQ/DP(I,J,1))
					ELSE
						XQE = 0.25*(Q(I,JP1,1) + Q(IP1,JP1,1)		&
									+ Q(I,J,1) + Q(IP1,J,1))
						ADVY = L%R0(I,J)							&
								*(P(I,JP1,1)*XQE/DP(I,JP1,1)		&
								-P(I,J,1)*XQQ/DP(I,J,1))
					ENDIF
!*					IF (DP(I,JP1,1).GT.GX .AND. DP(I,J,1).GT.GX) THEN
!*						XQE = 0.25*(Q(I,JP1,1) + Q(IP1,JP1,1)		&
!*									+ Q(I,J,1) + Q(IP1,J,1))
!*						ADVY = L%R0(I,J)*(P(I,JP1,1)*XQE			&
!*								/ DP(I,JP1,1)-P(I,J,1)*XQQ/DP(I,J,1))
!*					ENDIF
				ELSE
!*					XQE = 0.25*(Q(I,JM1,1) + Q(IP1,JM1,1)			&
!*									+ Q(I,J-2,1) + Q(IP1,J-2,1))

					IF (DZ(I,JM1,2) .LT. GX .OR.					&
										DZ(IP1,JM1,2) .LT. GX) THEN
						ADVY = L%R0(I,J)*(P(I,J,1)*XQQ/DP(I,J,1))
					ELSEIF (DP(I,JM1,1) .LT. GX) THEN
						ADVY = L%R0(I,J)*(P(I,J,1)*XQQ/DP(I,J,1))
					ELSE
						XQE = 0.25*(Q(I,JM1,1) + Q(IP1,JM1,1)		&
									+ Q(I,J-2,1) + Q(IP1,J-2,1))
						ADVY = L%R0(I,J)*(P(I,J,1)*XQQ/DP(I,J,1)	&
										-P(I,JM1,1)*XQE/DP(I,JM1,1))
					ENDIF
!*					IF (DP(I,JM1,1).GT.GX .AND. DP(I,J,1).GT.GX) THEN
!*						XQE = 0.25*(Q(I,JM1,1) + Q(IP1,JM1,1)		&
!*									+ Q(I,J-2,1) + Q(IP1,J-2,1))
!*						ADVY = L%R0(I,J)*(P(I,J,1)*XQQ/DP(I,J,1)	&
!*								- P(I,JM1,1)*XQE/DP(I,JM1,1))
!*					ENDIF
				ENDIF
				CALL WAVE_BREAKING (L,XP,XQ,ADVX,ADVY,I,J,1)
				XP = XP - ADVX - ADVY
			ENDIF
		    IF (IFRIC.NE.1) XP = XP/(1.0+FF)

!........LIMIT THE DISCHARGE
			IF (ABS(XP) .LT. EPS) XP = 0.0
			PQ_LIMIT = V_LIMIT*DD
			IF (XP .GT. PQ_LIMIT) XP = PQ_LIMIT
			IF (XP .LT. -PQ_LIMIT) XP =-PQ_LIMIT

			P(I,J,2) = XP
			IF (IDIM.EQ.1) P(I,:,2) = XP

			ELSE
			P(I,J,2) = 0
			ENDIF  !--<<<<X<<<<
	     ENDDO
	  ENDDO
!$omp end parallel
       !7!

!.................................................................
!.....SOLVE MOMENTUM EQUATION IN Y DIRECTION
      IF (IDIM.NE.1) THEN
      IS = 2
	  JS = 2
	  IE = IX
	  JE = JY-1
!	  JE = JY
	  IF (LAYID .EQ. 1) THEN
	      IS = 1
		  JS = 1
		  IE = IX-1
		  JE = JY-1
	  ENDIF
!OMP 111025 v0
!$omp parallel
!$omp do private(I,J) firstprivate(IP1,IM1,NOFLUX,JP1,JM1,DD,DF,&
!$omp XPP,FM,FF,XQ,ADVX,ADVY,XPE,PQ_LIMIT)
      DO I = IS, IE          !3
		 IP1 = I+1
	  	 IM1 = I-1
		 IF (IP1 .GE. IX) IP1 = IX
		 IF (IM1.LE.1) IM1 = 1
		 DO J = JS, JE        !3
			NOFLUX = 0    ! FLAG: 0-CALCULATE Y FLUX; 1-DON'T CALCULATE Y FLUX
			JP1 = J+1
			JM1 = J-1
			IF (JP1 .GE. JY) JP1 = JY
			IF (JM1.LE.1) JM1 = 1
!..GUESS THE RUNUP NEVER REACH AT HZ(I,J)=ELMAX
			IF (HZ(I,J).LE.ELMAX .OR. HQ(I,J).LE.ELMAX) THEN
				Q(I,J,2) = 0.0
				NOFLUX = 1
			ELSE
!..MOVING BOUNDARY
				IF (DZ(I,J,2).GT.GX .AND. DZ(I,JP1,2).GT.GX) THEN
					DD = DQ(I,J,2)
					DF = DQ(I,J,1)
				ELSEIF (DZ(I,J,2).GT.GX .AND. DZ(I,JP1,2).LE.GX	&
						.AND. HZ(I,JP1) + Z(I,J,2).GT.GX) THEN
!*     				DD = HZ(I,JP1) + Z(I,J,2)
					DD = HQ(I,J) + 0.5*(Z(I,J,2)+Z(I,JP1,2))
					DF = DD
				ELSEIF (DZ(I,J,2) .LE. GX .AND. DZ(I,JP1,2).GT.GX &
						.AND. HZ(I,J)+Z(I,JP1,2).GT.GX) THEN
!*     				DD = HZ(I,J) + Z(I,JP1,2)
					DD = HQ(I,J) + 0.5*(Z(I,J,2)+Z(I,JP1,2))
					DF = DD
				ELSE
	 				Q(I,J,2) = 0.0
           			NOFLUX = 1 
				ENDIF   
	 
				IF (DD .LT. GX) THEN
					Q(I,J,2) = 0.0
					NOFLUX = 1   
				ENDIF
			ENDIF

!...........COMPUTE Y FLUX WHEN NOFLUX.NE.1
            IF (NOFLUX .NE. 1) THEN    !--<<<<Y<<<<

!..CALCULATE Y-DIRECTION LINEAR TERMS
!..ESTABLISH A LOWER BOUND
			IF (DF .LT. 1.0E-3) THEN
				DF = 1.0E-3
			ENDIF

!..FIXED FRICTIONAL COEFFICIENT - MANNING
            XPP = 0.25*(P(I,J,1)+P(I,JP1,1)+P(IM1,J,1)+P(IM1,JP1,1))
			IF (IFRIC .EQ. 2) FM = L%FRIC_VCOEF(I,J) !VAR MANNING'S N.
			IF (IFRIC .NE. 1) THEN
!!!				XPP = 0.25*(P(I,J,1)+P(I,JP1,1)						&
!!!									+P(IM1,J,1)+P(IM1,JP1,1))  !7!
				FF = CONST*FM*FM*SQRT(Q(I,J,1)**2					&
										+ XPP**2)/DF**2.3333333
			ELSE
				FF = 0.0
			ENDIF

!...........SOLVE LINEAR VERSION OF MOMENTUM EQUATION IN Y DIRECTION
!!7!->  MODIFIED OR OLD SCHEME FOR MOMENTUM EQUATION
			IF (MOD_SCM .EQ. 0 .AND. I.LT.IX) THEN
				XQ = Q(I,J,1) - L%R4(I,J)*DD*(Z(I,JP1,2)-Z(I,J,2))	&
						- L%R4(I,J)  * DD / 12.						&
						* ((Z(IP1,JP1,2)-2*Z(I,JP1,2)+Z(IM1,JP1,2))	&
						- (Z(IP1,J,2)-2*Z(I,J,2)+Z(IM1,J,2)))
			ELSE
				XQ = Q(I,J,1) - L%R4(I,J)*DD*(Z(I,JP1,2)-Z(I,J,2))
			ENDIF
			IF (IFRIC.NE.1) XQ = XQ - FF*Q(I,J,1)

!!! CORIOLIS EFFECT
            XQ = XQ - 4.0*L%R5(I,J)*XPP

			IF (LIN_CHK.EQ.1 .AND. DQ(I,J,1).GE.GX .AND.			&
					(I.GT.ISPANS .AND. I.LT.ISPANE .AND.			&
					J.GT.JSPANS .AND. J.LT.JSPANE) ) THEN
				 
!!!				XPP = 0.25*(P(I,J,1)+P(I,JP1,1)						&
!!!									+P(IM1,J,1)+P(IM1,JP1,1))  !7!
				ADVX = 0.0
				ADVY = 0.0
!..UPWIND SCHEME FOR Y-DIRECTION VOLUME FLUX COMPONENT
				IF (Q(I,J,1) .LT. 0.0) THEN
					IF (DQ(I,JP1,1) .LT. GX .OR.					&
										DZ(I,JP1,2) .LT. GX) THEN
						ADVY = L%R0(I,J)*(-Q(I,J,1)**2/DQ(I,J,1))
					ELSE
						ADVY = L%R0(I,J)							&
								*(Q(I,JP1,1)**2/DQ(I,JP1,1)			&
								-Q(I,J,1)**2/DQ(I,J,1))
					ENDIF
!*					IF (DQ(I,JP1,1).GT.GX .AND. DQ(I,J,1).GT.GX) THEN
!*						ADVY = L%R0(I,J)*(Q(I,JP1,1)**2			&
!*								/ DQ(I,JP1,1)-Q(I,J,1)**2/DQ(I,J,1))
!*					ENDIF
				ELSE
					IF (DQ(I,JM1,1) .LT. GX .OR.					&
											DZ(I,J,2) .LT. GX) THEN
						ADVY = L%R0(I,J)*(Q(I,J,1)**2/DQ(I,J,1))
					ELSE
						ADVY = L%R0(I,J)*(Q(I,J,1)**2/DQ(I,J,1)	&
										-Q(I,JM1,1)**2/DQ(I,JM1,1))
					ENDIF
!*					IF (DQ(I,JM1,1).GT.GX .AND. DQ(I,J,1).GT.GX) THEN
!*					ADVY = L%R0(I,J)*(Q(I,J,1)**2/DQ(I,J,1)		&
!*							- Q(I,JM1,1)**2/DQ(I,JM1,1))
!*					ENDIF
				ENDIF

!..UPWIND SCHEME FOR X-DIRECTION VOLUME FLUX COMPONENT
				IF (XPP .LT. 0.0) THEN
!*					XPE = 0.25*(P(IP1,J,1) + P(IP1,JP1,1)			&
!*									+ P(I,J,1) + P(I,JP1,1))

					IF (DZ(IP1,J,2) .LT. GX .OR.					&
										DZ(IP1,JP1,2) .LT. GX) THEN
						ADVX = L%R22(I,J)*(-Q(I,J,1)*XPP/DQ(I,J,1))
					ELSEIF (DQ(IP1,J,1) .LT. GX) THEN
						ADVX = L%R22(I,J)*(-Q(I,J,1)*XPP/DQ(I,J,1))
					ELSE
						XPE = 0.25*(P(IP1,J,1) + P(IP1,JP1,1)		&
									+ P(I,J,1) + P(I,JP1,1))
						ADVX = L%R22(I,J)						&
								*(Q(IP1,J,1)*XPE/DQ(IP1,J,1)		&
								-Q(I,J,1)*XPP/DQ(I,J,1))
					ENDIF
!*					IF (DQ(IP1,J,1).GT.GX .AND. DQ(I,J,1).GT.GX) THEN
!*						XPE = 0.25*(P(IP1,J,1) + P(IP1,JP1,1)		&
!*									+ P(I,J,1) + P(I,JP1,1))
!*						ADVX = L%R22(I,J)*(Q(IP1,J,1)*XPE		&
!*								/ DQ(IP1,J,1)-Q(I,J,1)*XPP/DQ(I,J,1))
!*					ENDIF
				ELSE
					XPE = 0.25*(P(IM1,J,1) + P(IM1,JP1,1)			&
									+ P(I-2,J,1) + P(I-2,JP1,1))

					IF (DZ(IM1,J,2) .LT. GX .OR.					&
										DZ(IM1,JP1,2) .LT. GX) THEN
						ADVX = L%R22(I,J)*(Q(I,J,1)*XPP/DQ(I,J,1))
					ELSEIF (DQ(I-1,J,1) .LT. GX) THEN
						ADVX = L%R22(I,J)*(Q(I,J,1)*XPP/DQ(I,J,1))
					ELSE
						XPE = 0.25*(P(IM1,J,1) + P(IM1,JP1,1)		&
									+ P(I-2,J,1) + P(I-2,JP1,1))
						ADVX = L%R22(I,J)						&
								*(Q(I,J,1)*XPP/DQ(I,J,1)			&
								-Q(IM1,J,1)*XPE/DQ(IM1,J,1))
					ENDIF
!*					IF (DQ(IM1,J,1).GT.GX .AND. DQ(I,J,1).GT.GX) THEN
!*						XPE = 0.25*(P(IM1,J,1) + P(IM1,JP1,1)		&
!*									+ P(I-2,J,1) + P(I-2,JP1,1))
!*						XQ = XQ-L%R22(I,J)*(Q(I,J,1)*XPP/DQ(I,J,1)	&
!*								- Q(IM1,J,1)*XPE/DQ(IM1,J,1))
!*					ENDIF
				ENDIF
				CALL WAVE_BREAKING (L,XP,XQ,ADVX,ADVY,I,J,2)
				XQ = XQ - ADVX - ADVY
			ENDIF
		    IF (IFRIC.NE.1) XQ = XQ/(1.0+FF)
!...........LIMIT THE DISCHARGE
			IF (ABS(XQ) .LT. EPS) XQ = 0.0
			PQ_LIMIT = V_LIMIT*DD
	        IF (XQ .GT. PQ_LIMIT) XQ = PQ_LIMIT
			IF (XQ .LT. -PQ_LIMIT) XQ =-PQ_LIMIT

			Q(I,J,2) = XQ

			ELSE
			Q(I,J,2) = 0.0
            ENDIF   !--<<<<Y<<<<
		  ENDDO
      ENDDO !7!
!$omp end parallel
	  ENDIF

      L%M = P
	  L%N = Q

!	  CALL WAVE_BREAKING (L)

      RETURN
      END


!-----------------------------------------------------------------------
      SUBROUTINE WAVE_BREAKING (L,XP,XQ,ADVX,ADVY,I,J,DIRECTION)
!DESCRIPTION:
!	  #. DETECT WAVE BREAKING AND USE ATIFICIAL DAMPING COEF FOR DAMPING;
!NOTES:
!	  #. CREATED ON FEB 24 2009 (XIAOMING WANG, GNS)
!-----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) 	:: L
	  REAL ADVX,ADVY
	  REAL NU
	  INTEGER DIRECTION
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

!.....CHECK WAVE BREAKING CONDITION
	  DT = L%DT
!*	  IF (L%LAYCORD.EQ.1) THEN
!*	     DX = L%DX
!*	     DY = L%DY
!*	  ELSE
!*	     DX = L%DX*RAD_MIN*R_EARTH
!*		 DY = L%DY*RAD_MIN*R_EARTH
!*	  ENDIF
	  DELTA = 6.5
!*	  DO I = 3,L%NX-2
!*		 IP1 = I+1
!*		 IM1 = I-1
!*		 DO J = 3,L%NY-2
			JP1 = J+1
			JM1 = J-1
			C = SQRT(GRAV*L%DZ(I,J,2))
			DZDT_F = 0.08*C
			DZDT_I = 0.65*C
			DZDT = ABS(L%Z(I,J,2)-L%Z(I,J,1))/L%DT
!*		    IF (DZDT .GT. DZDT_I) THEN
!*			   T_B = 8.0*C/GRAV
!*			   !SETUP THRESHOLD TO EVOKE WATER BREAKING MODEL
!*			   DZDT_B = DZDT_I
!*			   L%MASK(I,J) = NINT(T_B/L%DT)+1
!*			ENDIF

!			IF (DZDT .GT. DZDT_F) THEN
!			   COEF = (DZDT_I-DZDT_F)/(DZDT_I-DZDT_F+DZDT-DZDT_F)
!			   IF (DIRECTION.EQ.1) ADVX = COEF*ADVX
!			   IF (DIRECTION.EQ.2) ADVY = COEF*ADVY
!			ENDIF  

			   IF (DZDT .GT. DZDT_F) THEN
!				  COEF = (DZDT_I-DZDT_F)/(DZDT_I-DZDT_F+DZDT-DZDT_F)
				  REF = (DZDT-DZDT_F)/(DZDT_I-DZDT_F)
				  A = 1.0
				  COEF = EXP(-A*REF)
!				  IF (DZDT .GT. DZDT_I) THEN
!			      COEF = (DZDT_I-DZDT_F)/(DZDT_I-DZDT_F+DZDT-DZDT_F)*0.5
!				  ENDIF
				  IF (DIRECTION.EQ.1) THEN
				     ADVX = COEF*ADVX
			         ADVY = COEF*ADVY
				  ENDIF
				  IF (DIRECTION.EQ.2) THEN
				     ADVX = COEF*ADVX
			         ADVY = COEF*ADVY
				  ENDIF
			   ENDIF



!			   IF (L%MASK(I,J).GT.0) THEN
!*			   IF (DZDT .GT. DZDT_F) THEN
!*				  L%T_BREAK(I,J) = T_B
!*				  WRITE (*,*) 'WAVE BREAKS AT:',L%X(I),L%Y(J)


!*			   IF (L%T_BREAK(I,J) .GT. ZERO) THEN
!*				  DZDT_B = DZDT_I + (T_B-L%T_BREAK(I,J))/T_B		&
!*													*(DZDT_F-DZDT_I)
!*				  L%T_BREAK(I,J) = L%T_BREAK(I,J)-L%DT
!*			   ENDIF
!*			   IF (DZDT .GT. 2*DZDT_B) THEN
!*			      B = DELTA
!*				  NU = B*DZDT
!*			   ELSEIF (DZDT.LE.2*DZDT_B .AND. DZDT.GT.DZDT_B) THEN
!*				  B = DELTA*(DZDT/DZDT_B-1.0)
!*				  NU = B*DZDT
!*			   ELSE
!*			      B = 0.0
!*				  NU = 0.0
!*			   ENDIF
 
!*			   IF (NU .GT. ZERO) THEN
!*				  PXX = (L%M(IP1,J,1)-2.0*L%M(I,J,1)+L%M(IM1,J,1))/DX**2
!*				  QXX = (L%N(IP1,J,1)-2.0*L%N(I,J,1)+L%N(IM1,J,1))/DX**2
!*				  PYY = (L%M(I,JP1,1)-2.0*L%M(I,J,1)+L%M(I,JM1,1))/DY**2
!*				  QYY = (L%N(I,JP1,1)-2.0*L%N(I,J,1)+L%N(I,JM1,1))/DY**2
!*				  PXY = ((L%M(I,J,1)-L%M(IM1,J,1))					&
!*							-(L%M(I,JM1,1)-L%M(IM1,JM1,1)))/(DX*DY)
!*				  QXY = ((L%N(I,J,1)-L%N(I,JM1,1))					&
!*							-(L%N(IM1,J,1)-L%N(IM1,JM1,1)))/(DX*DY)
!*				  RBX = NU*(PXX+0.5*(PYY+QXY))
!*				  RBY = NU*(QYY+0.5*(QXX+PXY))
!				  RBX = NU*(PXX)
!				  RBY = NU*(QYY)
!*				  IF (DIRECTION.EQ.1) XP = XP + L%DT*RBX
!*				  IF (DIRECTION.EQ.2) XQ = XQ + L%DT*RBY
!*			   ENDIF
!				  L%MASK(I,J) = L%MASK(I,J) - 1
!			   ENDIF
!			ENDIF
!*		 ENDDO
!*	  ENDDO

	  RETURN
	  END


!-----------------------------------------------------------------------
      SUBROUTINE SCREEN_DISP (LO,LA,FAULT_INFO,LANDSLIDE_INFO,		&
	                          WAVE_INFO,INI_SURF,TEND,KEND,	        &
							  START_TYPE,START_TIME,BC_TYPE,	    &
							  BCI_INFO,OUT_OPT,JOB,BACKUP_TIME)
!DESCRIPTION:
!	  #. DISPLAY INFO ON SCREEN BEFORE COMPUTATION;
!	  #. SAVE SIMULATION INFO TO SIMULATION_INFO.TXT FOR CHECKING;
!NOTES:
!	  #. CREATED BY XIAOMING WANG (SEP 17 2006)
!	  #. UPDATED ON ??? ?? 2008
!	  #. UPDATED ON MAR11 2009 (XIAOMING WANG, GNS)
!		 1. ADD MORE OUTPUT INFO FOR FACTS INPUT
!-----------------------------------------------------------------------
      USE LAYER_PARAMS
	  USE WAVE_PARAMS
	  USE LANDSLIDE_PARAMS
	  USE FAULT_PARAMS
	  USE BCI_PARAMS
	  TYPE (LAYER)  :: LO
	  TYPE (LAYER),DIMENSION(NUM_GRID) :: LA
	  TYPE (WAVE)   :: WAVE_INFO
	  TYPE (LANDSLIDE)  :: LANDSLIDE_INFO
!*	  TYPE (FAULT)      :: FAULT_INFO
	  TYPE (FAULT),DIMENSION(NUM_FLT)	:: FAULT_INFO
	  TYPE (BCI) BCI_INFO
	  REAL TEND,H_LIMIT, START_TIME
	  INTEGER KEND,INI_SURF,START_TYPE, BC_TYPE,OUT_OPT
	  CHARACTER(LEN=200)	   :: JOB
	  REAL BACKUP_TIME !130904
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

      KEND = NINT(TEND/LO%DT)
	  LO%IPRT = NINT(LO%T_INV/LO%DT)
	  DO I=1,NUM_GRID
          LA(I)%IPRT = NINT(LA(I)%T_INV/LO%DT)
      ENDDO
!.....DISPLAY INPUT INFORMATION ON SCREEN
	  WRITE (*,*) '***********************************************************'
	  WRITE (*,*) '*           INPUT INFORMATION - COMCOT V1.7               *'
	  WRITE (*,*) '***********************************************************'
!*	  WRITE (*,*) JOB
      WRITE (*,*) '------------------- GENERAL INFORMATION -------------------'
 	  WRITE (*,*) '    TOTAL RUN TIME            (SECOND) :',TEND
	  WRITE (*,*) '    TIME INTERVAL FOR OUTPUT  (SECOND) :',LO%T_INV
	  IF (LO%T_INV .LT. LO%DT) THEN
	     LO%T_INV = LO%DT
		 LO%IPRT = NINT(LO%T_INV/LO%DT)
		 WRITE (*,*) '    OUTPUT INTERVAL < DT, RESET TO', LO%T_INV
		 WRITE (*,*) '   '
      ENDIF
	  WRITE (*,*) '    TIME STEP SIZE            (SECOND) :',LO%DT      
	  WRITE (*,*) '    TOTAL STEPS TO RUN         (STEPS) :',KEND
	  WRITE (*,*) '    STEP INTERVAL FOR OUTPUT   (STEPS) :',LO%IPRT
	  WRITE (*,*) '    BACKUP INTERVAL           (SECOND) :',BACKUP_TIME ! 130904
	  IF (OUT_OPT.EQ.0 .OR. OUT_OPT.EQ.2) WRITE (*,*) '    MAX. SURFACE DISPLACEMENT OUTPUT   : ENABLED'
	  IF (OUT_OPT.EQ.1 .OR. OUT_OPT.EQ.2) WRITE (*,*) '    TIME HISTORY RECORD OUTPUT         : ENABLED'
	  IF (OUT_OPT .EQ. 1) WRITE (*,*) '    MAX. SURFACE DISPLACEMENT OUTPUT   : DISABLED'
	  IF (OUT_OPT .EQ. 0) WRITE (*,*) '    TIME HISTORY RECORD OUTPUT         : DISABLED'
	  IF (START_TYPE.EQ.1) THEN 
	     WRITE (*,*) '    HOT START FUNCTION                 : ENABLED'
		 WRITE (*,*) '       SIMULATION RESUMES FROM T =     :',START_TIME
		 ISTEP_LEFT = NINT((TEND-START_TIME)/LO%DT)
		 WRITE (*,*) '       TOTAL NUMBER OF TIME STEPS LEFT :',ISTEP_LEFT
      ENDIF
	  WRITE (*,*) '    SHORELINE LOCATED AT DEPTH CONTOUR :',LO%H_LIMIT
	  IF (BC_TYPE.EQ.0) WRITE (*,*) '    BOUNDARY CONDITION                 : RADIATION (OPEN)'
	  IF (BC_TYPE.EQ.1) WRITE (*,*) '    BOUNDARY CONDITION                 : ABSORBING'
	  IF (BC_TYPE.EQ.2) WRITE (*,*) '    BOUNDARY CONDITION                 : SOLID WALL'
	  IF (BC_TYPE.EQ.3 .or. BC_TYPE.EQ.4) WRITE (*,*) '    BOUNDARY CONDITION                 : FACTS INPUT'
	  IF (ABS(LO%TIDE_LEVEL).GT.GX) WRITE (*,*) '    TIDAL LEVEL CORRECTION (METERS):',LO%TIDE_LEVEL
	  WRITE (*,*) ' '

      WRITE (*,*) '---------------- INITIAL CONDITION INFORMATION ---------------'
	  IF (INI_SURF .EQ. 0 .OR. INI_SURF .EQ. 9) THEN
	      WRITE (*,*) '    #USE BUILT-IN FAULT MODEL'
		  WRITE (*,*) '       TOTAL NUMBER OF FAULT SEGMENTS  :',FAULT_INFO(1)%NUM_FLT
		  DO K = 1,FAULT_INFO(1)%NUM_FLT
		     IF (FAULT_INFO(K)%SWITCH.EQ.0) THEN
			    WRITE (*,*) '     PARAMETERS FOR FAULT SEGMENT      :',K
		        WRITE (*,*) '       FAULT RUPTURE TIME     (SECOND) :',FAULT_INFO(K)%T0
		        WRITE (*,*) '       EPICENTER (LON, LAT)   (DEGREE) :',FAULT_INFO(K)%X0,FAULT_INFO(K)%Y0
		        WRITE (*,*) '       FOCAL DEPTH         (KILOMETER) :',FAULT_INFO(K)%HH/1000.0
		        WRITE (*,*) '       FAULT LENGTH        (KILOMETER) :',FAULT_INFO(K)%L/1000.0
		        WRITE (*,*) '       FAULT WIDTH         (KILOMETER) :',FAULT_INFO(K)%W/1000.0
		        WRITE (*,*) '       STRIKE ANGLE    (THETA, DEGREE) :',FAULT_INFO(K)%TH
		        WRITE (*,*) '       DIP ANGLE       (DELTA, DEGREE) :',FAULT_INFO(K)%DL
		        WRITE (*,*) '       SLIP ANGLE     (LAMBDA, DEGREE) :',FAULT_INFO(K)%RD
		        WRITE (*,*) '       DISLOCATION             (METER) :',FAULT_INFO(K)%D
			 ELSE
			    WRITE (*,*) '    USE DEFORMATION DATA FOR SEGMENT   :',K
		        WRITE (*,*) '       DEFORMATION DATA FILE NAME      :',FAULT_INFO(K)%DEFORM_NAME
			 ENDIF
		  ENDDO
	  ELSE IF (INI_SURF .EQ. 1) THEN
	      WRITE (*,*) '    #USE INITIAL SURFACE DEFORMATION FILE:',FAULT_INFO(1)%DEFORM_NAME
	  ELSE IF (INI_SURF.EQ.2) THEN
	      WRITE (*,*) '    #USE INCIDENT WAVE MODEL'
          IF (WAVE_INFO%MK_TYPE==1) WRITE (*,*) '         INCIDENT SOLITARY WAVE'
          IF (WAVE_INFO%MK_TYPE==1) WRITE (*,*) '         CHARACTERISTIC WATER DEPTH (M):',WAVE_INFO%DEPTH
          IF (WAVE_INFO%MK_TYPE==1) WRITE (*,*) '         CHARACTERISTIC WAVE HEIGHT (M):',WAVE_INFO%AMP
          IF (WAVE_INFO%MK_TYPE==2) WRITE (*,*) '         CUSTOMIZED TIMEHISTORY PROFILE:',WAVE_INFO%FORM_NAME
          IF (WAVE_INFO%MK_TYPE==2) WRITE (*,*) '         TOTAL ENTRIES IN INPUT FILE   :',WAVE_INFO%FORM_LEN
          IF (WAVE_INFO%MK_TYPE==2) WRITE (*,*) '         ENDING TIME OF WAVE INPUT     :',WAVE_INFO%T(WAVE_INFO%FORM_LEN)
	  ELSE IF (INI_SURF .EQ. 3) THEN
	      WRITE (*,*) '    #USE SUBMARINE LANDSLIDE MODEL'
		  IF (LANDSLIDE_INFO%OPTION .LE. 1) THEN
		  WRITE (*,*) '       OBTAIN SNAPSHOTS OF WATERDEPTH VARIATIONS FROM INPUT DATA FILE'
		  WRITE (*,*) '       LANDSLIDE DURATION     (SECOND) :',LANDSLIDE_INFO%DURATION
          WRITE (*,*) '       TOTAL NUMBER OF SNAPSHOTS       :',LANDSLIDE_INFO%NT
          WRITE (*,*) '       X_START                         :',LANDSLIDE_INFO%X_START
          WRITE (*,*) '       X_END                           :',LANDSLIDE_INFO%X_END
          WRITE (*,*) '       Y_START                         :',LANDSLIDE_INFO%Y_START
          WRITE (*,*) '       Y_END                           :',LANDSLIDE_INFO%Y_END
		  WRITE (*,*) '       GRID DIMENSION          (NX,NY) :',LANDSLIDE_INFO%NX,LANDSLIDE_INFO%NY
		  WRITE (*,*) '       DATA FILE NAME OF DEPTH VARIATION SNAPSHOTS:',LANDSLIDE_INFO%FILENAME
		  ENDIF
		  IF (LANDSLIDE_INFO%OPTION .EQ. 2) THEN
		  WRITE (*,*) '       CALC. SNAPSHOTS OF WATERDEPTH VARIATIONS FROM BUILT-IN THEORY'
          WRITE (*,*) '       X START OF LANDSLIDE AREA       :',LANDSLIDE_INFO%X_START
          WRITE (*,*) '       X END OF LANDSLIDE AREA         :',LANDSLIDE_INFO%X_END
          WRITE (*,*) '       Y START OF LANDSLIDE AREA       :',LANDSLIDE_INFO%Y_START
          WRITE (*,*) '       Y END OF LANDSLIDE AREA         :',LANDSLIDE_INFO%Y_END
		  WRITE (*,*) '       GRID DIMENSION          (NX,NY) :',LANDSLIDE_INFO%NX,LANDSLIDE_INFO%NY
		  WRITE (*,*) '       LANDSLIDE STARTING TIME(SECOND) :',LANDSLIDE_INFO%T(1)
		  WRITE (*,*) '       LANDSLIDE STARTING TIME(SECOND) :',LANDSLIDE_INFO%T(LANDSLIDE_INFO%NT)
		  WRITE (*,*) '       LANDSLIDE DURATION     (SECOND) :',LANDSLIDE_INFO%DURATION
          WRITE (*,*) '       TOTAL NUMBER OF SNAPSHOTS       :',LANDSLIDE_INFO%NT
		  WRITE (*,*) '       LANDSLIDE STARTS AT (X,Y)       :',LANDSLIDE_INFO%XS,LANDSLIDE_INFO%YS
		  WRITE (*,*) '       LANDSLIDE STOPS AT (X,Y)        :',LANDSLIDE_INFO%XE,LANDSLIDE_INFO%YE
          WRITE (*,*) '       TYPICAL SLOPE OF PATH   (DEGREE):',LANDSLIDE_INFO%SLOPE
          WRITE (*,*) '       LENGTH OF SLIDING MASS   (METER):',LANDSLIDE_INFO%A
          WRITE (*,*) '       WIDTH OF SLIDING MASS    (METER):',LANDSLIDE_INFO%B
          WRITE (*,*) '       THICKNESS OF SLIDING MASS(METER):',LANDSLIDE_INFO%THICKNESS
		  ENDIF
	  ELSE IF (INI_SURF .EQ. 4) THEN
	      WRITE (*,*) '    #USE FAULT MODEL + LANDSLIDE MODEL'
		  WRITE (*,*) '       TOTAL NUMBER OF FAULT SEGMENTS  :',FAULT_INFO(1)%NUM_FLT
		  DO K = 1,FAULT_INFO(1)%NUM_FLT
		     IF (FAULT_INFO(K)%SWITCH.EQ.0) THEN
			    WRITE (*,*) '     PARAMETERS FOR FAULT SEGMENT      :',K
		        WRITE (*,*) '       FAULT RUPTURE TIME     (SECOND) :',FAULT_INFO(K)%T0
		        WRITE (*,*) '       EPICENTER (LON, LAT)   (DEGREE) :',FAULT_INFO(K)%X0,FAULT_INFO(K)%Y0
		        WRITE (*,*) '       FOCAL DEPTH         (KILOMETER) :',FAULT_INFO(K)%HH/1000.0
		        WRITE (*,*) '       FAULT LENGTH        (KILOMETER) :',FAULT_INFO(K)%L/1000.0
		        WRITE (*,*) '       FAULT WIDTH         (KILOMETER) :',FAULT_INFO(K)%W/1000.0
		        WRITE (*,*) '       STRIKE ANGLE    (THETA, DEGREE) :',FAULT_INFO(K)%TH
		        WRITE (*,*) '       DIP ANGLE       (DELTA, DEGREE) :',FAULT_INFO(K)%DL
		        WRITE (*,*) '       SLIP ANGLE     (LAMBDA, DEGREE) :',FAULT_INFO(K)%RD
		        WRITE (*,*) '       DISLOCATION             (METER) :',FAULT_INFO(K)%D
			 ELSE
			    WRITE (*,*) '     USE DEFORMATION DATA FOR SEGMENT   :',K
		        WRITE (*,*) '       DEFORMATION DATA FILE NAME      :',FAULT_INFO(K)%DEFORM_NAME
			 ENDIF
		  ENDDO
	      WRITE (*,*) '       PARAMETERS FOR LANDSLIDE MODEL  :'
		  IF (LANDSLIDE_INFO%OPTION .LE. 1) THEN
		  WRITE (*,*) '       OBTAIN SNAPSHOTS OF WATERDEPTH VARIATIONS FROM INPUT DATA FILE'
		  WRITE (*,*) '       LANDSLIDE DURATION     (SECOND) :',LANDSLIDE_INFO%DURATION
          WRITE (*,*) '       TOTAL NUMBER OF SNAPSHOTS       :',LANDSLIDE_INFO%NT
          WRITE (*,*) '       X_START                         :',LANDSLIDE_INFO%X_START
          WRITE (*,*) '       X_END                           :',LANDSLIDE_INFO%X_END
          WRITE (*,*) '       Y_START                         :',LANDSLIDE_INFO%Y_START
          WRITE (*,*) '       Y_END                           :',LANDSLIDE_INFO%Y_END
		  WRITE (*,*) '       GRID DIMENSION          (NX,NY) :',LANDSLIDE_INFO%NX,LANDSLIDE_INFO%NY
		  WRITE (*,*) '       DATA FILE NAME OF DEPTH VARIATION SNAPSHOTS:',LANDSLIDE_INFO%FILENAME
		  ENDIF
		  IF (LANDSLIDE_INFO%OPTION .EQ. 2) THEN
		  WRITE (*,*) '       CALC. SNAPSHOTS OF WATERDEPTH VARIATIONS FROM BUILT-IN THEORY'
          WRITE (*,*) '       X START OF LANDSLIDE AREA       :',LANDSLIDE_INFO%X_START
          WRITE (*,*) '       X END OF LANDSLIDE AREA         :',LANDSLIDE_INFO%X_END
          WRITE (*,*) '       Y START OF LANDSLIDE AREA       :',LANDSLIDE_INFO%Y_START
          WRITE (*,*) '       Y END OF LANDSLIDE AREA         :',LANDSLIDE_INFO%Y_END
		  WRITE (*,*) '       GRID DIMENSION          (NX,NY) :',LANDSLIDE_INFO%NX,LANDSLIDE_INFO%NY
		  WRITE (*,*) '       LANDSLIDE STARTING TIME(SECOND) :',LANDSLIDE_INFO%T(1)
		  WRITE (*,*) '       LANDSLIDE STARTING TIME(SECOND) :',LANDSLIDE_INFO%T(LANDSLIDE_INFO%NT)
		  WRITE (*,*) '       LANDSLIDE DURATION     (SECOND) :',LANDSLIDE_INFO%DURATION
          WRITE (*,*) '       TOTAL NUMBER OF SNAPSHOTS       :',LANDSLIDE_INFO%NT
		  WRITE (*,*) '       LANDSLIDE STARTS AT (X,Y)       :',LANDSLIDE_INFO%XS,LANDSLIDE_INFO%YS
		  WRITE (*,*) '       LANDSLIDE STOPS AT (X,Y)        :',LANDSLIDE_INFO%XE,LANDSLIDE_INFO%YE
          WRITE (*,*) '       TYPICAL SLOPE OF PATH   (DEGREE):',LANDSLIDE_INFO%SLOPE
          WRITE (*,*) '       LENGTH OF SLIDING MASS   (METER):',LANDSLIDE_INFO%A
          WRITE (*,*) '       WIDTH OF SLIDING MASS    (METER):',LANDSLIDE_INFO%B
          WRITE (*,*) '       THICKNESS OF SLIDING MASS(METER):',LANDSLIDE_INFO%THICKNESS
		  ENDIF

	  ENDIF	
	  IF (BC_TYPE.EQ.3 .or. BC_TYPE.EQ.4) THEN
		  WRITE (*,*) '    USE FACTS INPUT BOUNDARY CONDITION!'
		  WRITE (*,*) '       GRID DIMENSION OF FACTS INPUT   :',BCI_INFO%NX,'*',BCI_INFO%NY
		  WRITE (*,*) '       TOTAL SNAPSHOTS OF FACTS INPUT  :',BCI_INFO%NT
		  WRITE (*,*) '       STARTING TIME OF FACTS INPUT    :',BCI_INFO%T(1)
		  WRITE (*,*) '       ENDING TIME OF FACTS INPUT      :',BCI_INFO%T(BCI_INFO%NT)
		  WRITE (*,*) '       DURATION OF FACTS INPUT         :',BCI_INFO%DURATION
		  WRITE (*,*) '       X_START OF FACTS INPUT          :',BCI_INFO%X(1)
		  WRITE (*,*) '       X_END OF FACTS INPUT            :',BCI_INFO%X(BCI_INFO%NX)
		  WRITE (*,*) '       Y_START OF FACTS INPUT          :',BCI_INFO%Y(1)
		  WRITE (*,*) '       Y_END OF FACTS INPUT            :',BCI_INFO%Y(BCI_INFO%NY)
		  WRITE (*,*) '       FILENAMES OF FACTS INPUT        :'
		  WRITE (*,*) BCI_INFO%FNAMEH
		  WRITE (*,*) BCI_INFO%FNAMEU
		  WRITE (*,*) BCI_INFO%FNAMEV
	  ENDIF
	  WRITE (*,*) ' '
	  WRITE (*,*) '--------------- 1ST-LEVEL GRID INFORMATION -----------------'
	  WRITE (*,*) '    #  GRID IDENTIFICATION NUMBER      :',LO%ID
	  IF (LO%LAYCORD .EQ. 0) WRITE (*,*) '       USE SPHERICAL COORDINATE SYSTEM'
      IF (LO%LAYCORD .EQ. 1) WRITE (*,*) '       USE CARTESIAN COORDINATE SYSTEM'
	  IF (LO%LAYGOV .EQ. 0)  WRITE (*,*) '       USE LINEAR SHALLOW WATER EQUATIONS'
      IF (LO%LAYGOV .EQ. 1)  WRITE (*,*) '       USE NONLINEAR SHALLOW WATER EQUATIONS'
	  IF (LO%LAYGOV .EQ. 2)  WRITE (*,*) '       USE LINEAR SWE WITH DISPERSION-IMPROVED SCHEME'
	  IF (LO%LAYGOV .EQ. 3)  WRITE (*,*) '       USE NONLINEAR SWE WITH DISPERSION-IMPROVED SCHEME'
	  IF (LO%LAYGOV .EQ. 4)  WRITE (*,*) '       USE LINEAR SWE WITH DISPERSION-IMPROVED SCHEME*'
	  IF (LO%LAYGOV .EQ. 5)  WRITE (*,*) '       USE NONLINEAR SWE WITH DISPERSION-IMPROVED SCHEME*'
	  IF (LO%FRIC_SWITCH .EQ. 1) WRITE (*,*) '       BOTTOM FRICTION                 : DISABLED'
	  IF (LO%FRIC_SWITCH .NE. 1) WRITE (*,*) '       BOTTOM FRICTION                 : ENABLED'
	  IF (LO%FRIC_SWITCH .EQ. 0) WRITE (*,*) '          USE CONSTANT ROUGHNESS COEF. :',LO%FRIC_COEF	  
	  IF (LO%FRIC_SWITCH .EQ. 2) WRITE (*,*) '          USE VARIABLE ROUGHNESS COEFFICIENTS.'
      IF (LO%FRIC_SWITCH .EQ. 3) WRITE (*,*) '          USE CONSTANT ROUGHNESS COEF. :',LO%FRIC_COEF !130904
	  IF (LO%FRIC_SWITCH .EQ. 3) WRITE (*,*) '          USE SEDIMENT MODEL' !130904
	  IF (LO%FLUXSWITCH .EQ. 0) WRITE (*,*)  '       VOLUME FLUX OUTPUT              : ENABLED'
	  IF (LO%FLUXSWITCH .EQ. 1) WRITE (*,*)  '       VOLUME FLUX OUTPUT              : DISABLED'
	  IF (LO%FLUXSWITCH .NE. 2) WRITE (*,*)  '       SURFACE DISPLACEMENT OUTPUT     : ENABLED'
	  IF (LO%FLUXSWITCH .EQ. 2) WRITE (*,*)  '       SURFACE DISPLACEMENT OUTPUT     : DISABLED'
	  WRITE (*,*) '       GRID LAYER POSITIONS            :'
	  IF (LO%LAYCORD .EQ. 0) THEN
	     WRITE (*,*) '         X_START              (DEGREE) :',LO%X(1)
	     WRITE (*,*) '         X_END                (DEGREE) :',LO%X(LO%NX)
	     WRITE (*,*) '         Y_START              (DEGREE) :',LO%Y(1)
	     WRITE (*,*) '         Y_END                (DEGREE) :',LO%Y(LO%NY)
		 WRITE (*,*) '       GRID DIMENSION          (NX*NY) :',LO%NX,'*',LO%NY
	     WRITE (*,*) '       GRID SIZE           (DX,MINUTE) :',LO%DX
	     WRITE (*,*) '       GRID SIZE           (DY,MINUTE) :',LO%DY
		 WRITE (*,*) '       TIME STEP SIZE     (DT, SECOND) :',LO%DT
	  ENDIF
	  IF (LO%LAYCORD .EQ. 1) THEN
	     WRITE (*,*) '         X_START               (METER) :',LO%X(1)
	     WRITE (*,*) '         X_END                 (METER) :',LO%X(LO%NX)
	     WRITE (*,*) '         Y_START               (METER) :',LO%Y(1)
	     WRITE (*,*) '         Y_END                 (METER) :',LO%Y(LO%NY)
		 WRITE (*,*) '       GRID DIMENSION          (NX*NY) :',LO%NX,'*',LO%NY
	     WRITE (*,*) '       GRID SIZE           (DX, METER) :',LO%DX
	     WRITE (*,*) '       GRID SIZE           (DY, METER) :',LO%DY
		 WRITE (*,*) '       TIME STEP SIZE     (DT, SECOND) :',LO%DT
	  ENDIF
	  WRITE (*,*) '       NUMBER OF CHILD GRID LAYERS     :',LO%NUM_CHILD
	  DO I = 1,NUM_GRID
	  IF (LA(I)%LAYSWITCH.EQ.0 .AND. LA(I)%PARENT.EQ.LO%ID) THEN
	  WRITE (*,*) '               CHILD GRID LAYER ID     :',LA(I)%ID
	  ENDIF
	  ENDDO
	  WRITE (*,*) '       BATHYMETRY DATA FILE NAME       :',LO%DEPTH_NAME

!*	  CALL CR_CHECK (LO,LA)
	  WRITE (*,*) '--------------- SUB-LEVEL GRID INFORMATION -----------------'

	  DO I=1,NUM_GRID
	     IF (LA(I)%LAYSWITCH .EQ. 0) THEN
		    WRITE (*,*) '    #  GRID IDENTIFICATION NUMBER      :',LA(I)%ID
	        IF (LA(I)%LAYCORD .EQ. 0) WRITE (*,*) '       USE SPHERICAL COORDINATE SYSTEM'
            IF (LA(I)%LAYCORD .EQ. 1) WRITE (*,*) '       USE CARTESIAN COORDINATE SYSTEM'
	        IF (LA(I)%LAYGOV .EQ. 0)  WRITE (*,*) '       USE LINEAR SHALLOW WATER EQUATIONS'
            IF (LA(I)%LAYGOV .EQ. 1)  WRITE (*,*) '       USE NONLINEAR SHALLOW WATER EQUATIONS'
			IF (LA(I)%LAYGOV .EQ. 2)  WRITE (*,*) '       USE LINEAR SWE WITH DISPERSION-IMPROVED SCHEME'
            IF (LA(I)%LAYGOV .EQ. 3)  WRITE (*,*) '       USE NONLINEAR SWE WITH DISPERSION-IMPROVED SCHEME'
			IF (LA(I)%LAYGOV .EQ. 4)  WRITE (*,*) '       USE LINEAR SWE WITH DISPERSION-IMPROVED SCHEME'
            IF (LA(I)%LAYGOV .EQ. 5)  WRITE (*,*) '       USE NONLINEAR SWE WITH DISPERSION-IMPROVED SCHEME'
	        IF (LA(I)%FRIC_SWITCH .EQ. 1) WRITE (*,*) '       BOTTOM FRICTION                 : DISABLED'
			IF (LA(I)%FRIC_SWITCH .NE. 1) WRITE (*,*) '       BOTTOM FRICTION                 : ENABLED'
			IF (LA(I)%FRIC_SWITCH .EQ. 0) WRITE (*,*) '          USE CONSTANT ROUGHNESS COEF. :',LO%FRIC_COEF
			IF (LA(I)%FRIC_SWITCH .EQ. 2) WRITE (*,*) '          USE VARIABLE MANNING ROUGHNESS COEFFICIENTS.'
			IF (LA(I)%FRIC_SWITCH .EQ. 3) WRITE (*,*) '          USE CONSTANT ROUGHNESS COEF. :',LO%FRIC_COEF !130904
			IF (LA(I)%FRIC_SWITCH .EQ. 3) WRITE (*,*) '          USE SEDIMENT MODEL' !130904
			IF (LA(I)%FLUXSWITCH .EQ. 0) WRITE (*,*)  '       VOLUME FLUX OUTPUT              : ENABLED'
			IF (LA(I)%FLUXSWITCH .EQ. 1) WRITE (*,*)  '       VOLUME FLUX OUTPUT              : DISABLED'
			IF (LA(I)%FLUXSWITCH .NE. 2) WRITE (*,*)  '       SURFACE DISPLACEMENT OUTPUT     : ENABLED'
			IF (LA(I)%FLUXSWITCH .EQ. 2) WRITE (*,*)  '       SURFACE DISPLACEMENT OUTPUT     : DISABLED'
			WRITE (*,*) '       PARENT GRID ID                  :',LA(I)%PARENT
			WRITE (*,*) '       GRID SIZE RATIO                 :',LA(I)%REL_SIZE
			WRITE (*,*) '       TIME STEP SIZE RATIO            :',LA(I)%REL_TIME
			WRITE (*,*) '       POSITIONS IN ITS PARENT LAYER   :'
			IF (LA(I)%LAYCORD .EQ. 0) THEN
	           WRITE (*,*) '         X_START              (DEGREE) :',LA(I)%X(2)
	           WRITE (*,*) '         X_END                (DEGREE) :',LA(I)%X(LA(I)%NX)
	           WRITE (*,*) '         Y_START              (DEGREE) :',LA(I)%Y(2)
	           WRITE (*,*) '         Y_END                (DEGREE) :',LA(I)%Y(LA(I)%NY)
	           WRITE (*,*) '         I_START               (INDEX) :',LA(I)%CORNERS(1)
	           WRITE (*,*) '         I_END                 (INDEX) :',LA(I)%CORNERS(2)
	           WRITE (*,*) '         J_START               (INDEX) :',LA(I)%CORNERS(3)
	           WRITE (*,*) '         J_END                 (INDEX) :',LA(I)%CORNERS(4)
			   WRITE (*,*) '       GRID DIMENSION          (NX*NY) :',LA(I)%NX-1,'*',LA(I)%NY-1
			   WRITE (*,*) '       GRID SIZE           (DX,MINUTE) :',LA(I)%DX
			   WRITE (*,*) '       GRID SIZE           (DY,MINUTE) :',LA(I)%DY
			   WRITE (*,*) '       TIME STEP SIZE     (DT, SECOND) :',LA(I)%DT
			ENDIF
			IF (LA(I)%LAYCORD .EQ. 1) THEN
			   IF (LA(I)%UPZ) THEN
	           WRITE (*,*) '         X_START               (METER) :',LA(I)%X(2)
			   WRITE (*,*) '         X_END                 (METER) :',LA(I)%X(LA(I)%NX)
			   WRITE (*,*) '         Y_START               (METER) :',LA(I)%Y(2)
			   WRITE (*,*) '         Y_END                 (METER) :',LA(I)%Y(LA(I)%NY)
	           WRITE (*,*) '         I_START               (INDEX) :',LA(I)%CORNERS(1)
	           WRITE (*,*) '         I_END                 (INDEX) :',LA(I)%CORNERS(2)
	           WRITE (*,*) '         J_START               (INDEX) :',LA(I)%CORNERS(3)
	           WRITE (*,*) '         J_END                 (INDEX) :',LA(I)%CORNERS(4)
			   WRITE (*,*) '       GRID DIMENSION          (NX*NY) :',LA(I)%NX-1,'*',LA(I)%NY-1
			   ELSE
			   WRITE (*,*) '         X_START_S            (DEGREE) :',LA(I)%XT(2)
	           WRITE (*,*) '         X_END_S              (DEGREE) :',LA(I)%XT(LA(I)%NX)
			   WRITE (*,*) '         Y_START_S            (DEGREE) :',LA(I)%YT(2)
	           WRITE (*,*) '         Y_END_S              (DEGREE) :',LA(I)%YT(LA(I)%NY)
	           WRITE (*,*) '         X_START_C             (METER) :',LA(I)%X(2)
	           WRITE (*,*) '         X_END_C               (METER) :',LA(I)%X(LA(I)%NX)
	           WRITE (*,*) '         Y_START_C             (METER) :',LA(I)%Y(2)
	           WRITE (*,*) '         Y_END_C               (METER) :',LA(I)%Y(LA(I)%NY)
			   WRITE (*,*) '       GRID DIMENSION          (NX*NY) :',LA(I)%NX-1,'*',LA(I)%NY-1
			   ENDIF
			   WRITE (*,*) '       GRID SIZE           (DX, METER) :',LA(I)%DX
			   WRITE (*,*) '       GRID SIZE           (DY, METER) :',LA(I)%DY
			   WRITE (*,*) '       TIME STEP SIZE     (DT, SECOND) :',LA(I)%DT
			ENDIF
			WRITE (*,*) '       NUMBER OF CHILD GRID LAYERS     :',LA(I)%NUM_CHILD
			DO K = 1,NUM_GRID
			IF (LA(K)%LAYSWITCH.EQ.0 .AND. LA(K)%PARENT.EQ.LA(I)%ID) THEN
			WRITE (*,*) '               CHILD GRID LAYER ID     :',LA(K)%ID
			ENDIF
			ENDDO
			WRITE (*,*) '       BATHYMETRY DATA FILE NAME       :',LA(I)%DEPTH_NAME
			WRITE (*,*) '------------------------------------------------------------'
		 ENDIF
	  ENDDO
	  WRITE (*,*) ' '

!.....SAVE SIMULATION INFORMATION INTO DATA FILE: INPUT_INFO.TXT
	  OPEN (UNIT=23,FILE='SIMULATION_INFO.TXT',STATUS='UNKNOWN')

	  WRITE (23,*) '***********************************************************'
	  WRITE (23,*) '*           INPUT INFORMATION - COMCOT V1.7               *'
	  WRITE (23,*) '***********************************************************'
	  WRITE (23,*) JOB
      WRITE (23,*) '------------------- GENERAL INFORMATION -------------------'
 	  WRITE (23,*) '    TOTAL RUN TIME            (SECOND) :',TEND
	  WRITE (23,*) '    TIME INTERVAL FOR OUTPUT  (SECOND) :',LO%T_INV
	  IF (LO%T_INV .LT. LO%DT) THEN
	     LO%T_INV = LO%DT
		 LO%IPRT = NINT(LO%T_INV/LO%DT)
		 WRITE (23,*) '    OUTPUT INTERVAL < DT, RESET TO', LO%T_INV
		 WRITE (23,*) '   '
      ENDIF
	  WRITE (23,*) '    TIME STEP SIZE            (SECOND) :',LO%DT      
	  WRITE (23,*) '    TOTAL STEPS TO RUN         (STEPS) :',KEND
	  WRITE (23,*) '    STEP INTERVAL FOR OUTPUT   (STEPS) :',LO%IPRT
	  IF (OUT_OPT.EQ.0 .OR. OUT_OPT.EQ.2) WRITE (23,*) '    MAX. SURFACE DISPLACEMENT OUTPUT   : ENABLED'
	  IF (OUT_OPT.EQ.1 .OR. OUT_OPT.EQ.2) WRITE (23,*) '    TIME HISTORY RECORD OUTPUT         : ENABLED'
	  IF (OUT_OPT .EQ. 1) WRITE (23,*) '    MAX. SURFACE DISPLACEMENT OUTPUT   : DISABLED'
	  IF (OUT_OPT .EQ. 0) WRITE (23,*) '    TIME HISTORY RECORD OUTPUT         : DISABLED'
	  IF (START_TYPE.EQ.1) THEN 
	     WRITE (23,*) '    HOT START FUNCTION                 : ENABLED'
		 WRITE (23,*) '       SIMULATION RESUMES FROM T =     :',START_TIME
		 ISTEP_LEFT = NINT((TEND-START_TIME)/LO%DT)
		 WRITE (23,*) '       TOTAL NUMBER OF TIME STEPS LEFT :',ISTEP_LEFT
      ENDIF
	  WRITE (23,*) '    SHORELINE LOCATED AT DEPTH CONTOUR :',LO%H_LIMIT
	  IF (BC_TYPE.EQ.0) WRITE (23,*) '    BOUNDARY CONDITION                 : RADIATION (OPEN)'
	  IF (BC_TYPE.EQ.1) WRITE (23,*) '    BOUNDARY CONDITION                 : ABSORBING'
	  IF (BC_TYPE.EQ.2) WRITE (23,*) '    BOUNDARY CONDITION                 : SOLID WALL'
	  IF (BC_TYPE.EQ.3 .or. BC_TYPE.EQ.4) WRITE (23,*) '    BOUNDARY CONDITION                 : FACTS INPUT'
	  IF (ABS(LO%TIDE_LEVEL).GT.GX) WRITE (23,*) '    TIDAL LEVEL CORRECTION (METERS):',LO%TIDE_LEVEL
	  WRITE (23,*) ' '

      WRITE (23,*) '---------------- INITIAL CONDITION INFORMATION ---------------'
	  IF (INI_SURF .EQ. 0 .OR. INI_SURF .EQ. 9) THEN
	      WRITE (23,*) '    #USE BUILT-IN FAULT MODEL'
		  WRITE (23,*) '       TOTAL NUMBER OF FAULT SEGMENTS  :',FAULT_INFO(1)%NUM_FLT
		  DO K = 1,FAULT_INFO(1)%NUM_FLT
		     IF (FAULT_INFO(K)%SWITCH.EQ.0) THEN
			    WRITE (23,*) '     PARAMETERS FOR FAULT SEGMENT      :',K
		        WRITE (23,*) '       FAULT RUPTURE TIME     (SECOND) :',FAULT_INFO(K)%T0
		        WRITE (23,*) '       EPICENTER (LON, LAT)   (DEGREE) :',FAULT_INFO(K)%X0,FAULT_INFO(K)%Y0
		        WRITE (23,*) '       FOCAL DEPTH         (KILOMETER) :',FAULT_INFO(K)%HH/1000.0
		        WRITE (23,*) '       FAULT LENGTH        (KILOMETER) :',FAULT_INFO(K)%L/1000.0
		        WRITE (23,*) '       FAULT WIDTH         (KILOMETER) :',FAULT_INFO(K)%W/1000.0
		        WRITE (23,*) '       STRIKE ANGLE    (THETA, DEGREE) :',FAULT_INFO(K)%TH
		        WRITE (23,*) '       DIP ANGLE       (DELTA, DEGREE) :',FAULT_INFO(K)%DL
		        WRITE (23,*) '       SLIP ANGLE     (LAMBDA, DEGREE) :',FAULT_INFO(K)%RD
		        WRITE (23,*) '       DISLOCATION             (METER) :',FAULT_INFO(K)%D
			 ELSE
			    WRITE (23,*) '    USE DEFORMATION DATA FOR SEGMENT   :',K
		        WRITE (23,*) '       DEFORMATION DATA FILE NAME      :',FAULT_INFO(K)%DEFORM_NAME
			 ENDIF
		  ENDDO
	  ELSE IF (INI_SURF .EQ. 1) THEN
	      WRITE (23,*) '    #USE INITIAL SURFACE DEFORMATION FILE:',FAULT_INFO(1)%DEFORM_NAME
	  ELSE IF (INI_SURF.EQ.2) THEN
	      WRITE (23,*) '    #USE INCIDENT WAVE MODEL'
          IF (WAVE_INFO%MK_TYPE==1) WRITE (23,*) '         INCIDENT SOLITARY WAVE'
		  IF (WAVE_INFO%MK_TYPE==1) WRITE (23,*) '         CHARACTERISTIC WATER DEPTH (M):',WAVE_INFO%DEPTH
	      IF (WAVE_INFO%MK_TYPE==1) WRITE (23,*) '         CHARACTERISTIC WAVE HEIGHT (M):',WAVE_INFO%AMP
          IF (WAVE_INFO%MK_TYPE==2) WRITE (23,*) '         CUSTOMIZED TIMEHISTORY PROFILE:',WAVE_INFO%FORM_NAME
		  IF (WAVE_INFO%MK_TYPE==2) WRITE (23,*) '         TOTAL ENTRIES IN INPUT FILE   :',WAVE_INFO%FORM_LEN
		  IF (WAVE_INFO%MK_TYPE==2) WRITE (23,*) '         ENDING TIME OF WAVE INPUT     :',WAVE_INFO%T(WAVE_INFO%FORM_LEN)
	  ELSE IF (INI_SURF .EQ. 3) THEN
	      WRITE (23,*) '    #USE SUBMARINE LANDSLIDE MODEL'
		  IF (LANDSLIDE_INFO%OPTION .LE. 1) THEN
		  WRITE (23,*) '       OBTAIN SNAPSHOTS OF WATERDEPTH VARIATIONS FROM INPUT DATA FILE'
		  WRITE (23,*) '       LANDSLIDE DURATION     (SECOND) :',LANDSLIDE_INFO%DURATION
          WRITE (23,*) '       TOTAL NUMBER OF SNAPSHOTS       :',LANDSLIDE_INFO%NT
          WRITE (23,*) '       X_START                         :',LANDSLIDE_INFO%X_START
          WRITE (23,*) '       X_END                           :',LANDSLIDE_INFO%X_END
          WRITE (23,*) '       Y_START                         :',LANDSLIDE_INFO%Y_START
          WRITE (23,*) '       Y_END                           :',LANDSLIDE_INFO%Y_END
		  WRITE (23,*) '       GRID DIMENSION          (NX,NY) :',LANDSLIDE_INFO%NX,LANDSLIDE_INFO%NY
		  WRITE (23,*) '       DATA FILE NAME OF DEPTH VARIATION SNAPSHOTS:',LANDSLIDE_INFO%FILENAME
		  ENDIF
		  IF (LANDSLIDE_INFO%OPTION .EQ. 2) THEN
		  WRITE (23,*) '       CALC. SNAPSHOTS OF WATERDEPTH VARIATIONS FROM BUILT-IN THEORY'
          WRITE (23,*) '       X START OF LANDSLIDE AREA       :',LANDSLIDE_INFO%X_START
          WRITE (23,*) '       X END OF LANDSLIDE AREA         :',LANDSLIDE_INFO%X_END
          WRITE (23,*) '       Y START OF LANDSLIDE AREA       :',LANDSLIDE_INFO%Y_START
          WRITE (23,*) '       Y END OF LANDSLIDE AREA         :',LANDSLIDE_INFO%Y_END
		  WRITE (23,*) '       GRID DIMENSION          (NX,NY) :',LANDSLIDE_INFO%NX,LANDSLIDE_INFO%NY
		  WRITE (23,*) '       LANDSLIDE STARTING TIME(SECOND) :',LANDSLIDE_INFO%T(1)
		  WRITE (23,*) '       LANDSLIDE STARTING TIME(SECOND) :',LANDSLIDE_INFO%T(LANDSLIDE_INFO%NT)
		  WRITE (23,*) '       LANDSLIDE DURATION     (SECOND) :',LANDSLIDE_INFO%DURATION
          WRITE (23,*) '       TOTAL NUMBER OF SNAPSHOTS       :',LANDSLIDE_INFO%NT
		  WRITE (23,*) '       LANDSLIDE STARTS AT (X,Y)       :',LANDSLIDE_INFO%XS,LANDSLIDE_INFO%YS
		  WRITE (23,*) '       LANDSLIDE STOPS AT (X,Y)        :',LANDSLIDE_INFO%XE,LANDSLIDE_INFO%YE
          WRITE (23,*) '       TYPICAL SLOPE OF PATH   (DEGREE):',LANDSLIDE_INFO%SLOPE
          WRITE (23,*) '       LENGTH OF SLIDING MASS   (METER):',LANDSLIDE_INFO%A
          WRITE (23,*) '       WIDTH OF SLIDING MASS    (METER):',LANDSLIDE_INFO%B
          WRITE (23,*) '       THICKNESS OF SLIDING MASS(METER):',LANDSLIDE_INFO%THICKNESS
		  ENDIF
	  ELSE IF (INI_SURF .EQ. 4) THEN
	      WRITE (23,*) '    #USE FAULT MODEL + LANDSLIDE MODEL'
		  WRITE (23,*) '       TOTAL NUMBER OF FAULT SEGMENTS  :',FAULT_INFO(1)%NUM_FLT
		  DO K = 1,FAULT_INFO(1)%NUM_FLT
		     IF (FAULT_INFO(K)%SWITCH.EQ.0) THEN
			    WRITE (23,*) '     PARAMETERS FOR FAULT SEGMENT      :',K
		        WRITE (23,*) '       FAULT RUPTURE TIME     (SECOND) :',FAULT_INFO(K)%T0
		        WRITE (23,*) '       EPICENTER (LON, LAT)   (DEGREE) :',FAULT_INFO(K)%X0,FAULT_INFO(K)%Y0
		        WRITE (23,*) '       FOCAL DEPTH         (KILOMETER) :',FAULT_INFO(K)%HH/1000.0
		        WRITE (23,*) '       FAULT LENGTH        (KILOMETER) :',FAULT_INFO(K)%L/1000.0
		        WRITE (23,*) '       FAULT WIDTH         (KILOMETER) :',FAULT_INFO(K)%W/1000.0
		        WRITE (23,*) '       STRIKE ANGLE    (THETA, DEGREE) :',FAULT_INFO(K)%TH
		        WRITE (23,*) '       DIP ANGLE       (DELTA, DEGREE) :',FAULT_INFO(K)%DL
		        WRITE (23,*) '       SLIP ANGLE     (LAMBDA, DEGREE) :',FAULT_INFO(K)%RD
		        WRITE (23,*) '       DISLOCATION             (METER) :',FAULT_INFO(K)%D
			 ELSE
			    WRITE (23,*) '     USE DEFORMATION DATA FOR SEGMENT   :',K
		        WRITE (23,*) '       DEFORMATION DATA FILE NAME      :',FAULT_INFO(K)%DEFORM_NAME
			 ENDIF
		  ENDDO
	      WRITE (23,*) '       PARAMETERS FOR LANDSLIDE MODEL  :'
		  IF (LANDSLIDE_INFO%OPTION .LE. 1) THEN
		  WRITE (23,*) '       OBTAIN SNAPSHOTS OF WATERDEPTH VARIATIONS FROM INPUT DATA FILE'
		  WRITE (23,*) '       LANDSLIDE DURATION     (SECOND) :',LANDSLIDE_INFO%DURATION
          WRITE (23,*) '       TOTAL NUMBER OF SNAPSHOTS       :',LANDSLIDE_INFO%NT
          WRITE (23,*) '       X_START                         :',LANDSLIDE_INFO%X_START
          WRITE (23,*) '       X_END                           :',LANDSLIDE_INFO%X_END
          WRITE (23,*) '       Y_START                         :',LANDSLIDE_INFO%Y_START
          WRITE (23,*) '       Y_END                           :',LANDSLIDE_INFO%Y_END
		  WRITE (23,*) '       GRID DIMENSION          (NX,NY) :',LANDSLIDE_INFO%NX,LANDSLIDE_INFO%NY
		  WRITE (23,*) '       DATA FILE NAME OF DEPTH VARIATION SNAPSHOTS:',LANDSLIDE_INFO%FILENAME
		  ENDIF
		  IF (LANDSLIDE_INFO%OPTION .EQ. 2) THEN
		  WRITE (23,*) '       CALC. SNAPSHOTS OF WATERDEPTH VARIATIONS FROM BUILT-IN THEORY'
          WRITE (23,*) '       X START OF LANDSLIDE AREA       :',LANDSLIDE_INFO%X_START
          WRITE (23,*) '       X END OF LANDSLIDE AREA         :',LANDSLIDE_INFO%X_END
          WRITE (23,*) '       Y START OF LANDSLIDE AREA       :',LANDSLIDE_INFO%Y_START
          WRITE (23,*) '       Y END OF LANDSLIDE AREA         :',LANDSLIDE_INFO%Y_END
		  WRITE (23,*) '       GRID DIMENSION          (NX,NY) :',LANDSLIDE_INFO%NX,LANDSLIDE_INFO%NY
		  WRITE (23,*) '       LANDSLIDE STARTING TIME(SECOND) :',LANDSLIDE_INFO%T(1)
		  WRITE (23,*) '       LANDSLIDE STARTING TIME(SECOND) :',LANDSLIDE_INFO%T(LANDSLIDE_INFO%NT)
		  WRITE (23,*) '       LANDSLIDE DURATION     (SECOND) :',LANDSLIDE_INFO%DURATION
          WRITE (23,*) '       TOTAL NUMBER OF SNAPSHOTS       :',LANDSLIDE_INFO%NT
		  WRITE (23,*) '       LANDSLIDE STARTS AT (X,Y)       :',LANDSLIDE_INFO%XS,LANDSLIDE_INFO%YS
		  WRITE (23,*) '       LANDSLIDE STOPS AT (X,Y)        :',LANDSLIDE_INFO%XE,LANDSLIDE_INFO%YE
          WRITE (23,*) '       TYPICAL SLOPE OF PATH   (DEGREE):',LANDSLIDE_INFO%SLOPE
          WRITE (23,*) '       LENGTH OF SLIDING MASS   (METER):',LANDSLIDE_INFO%A
          WRITE (23,*) '       WIDTH OF SLIDING MASS    (METER):',LANDSLIDE_INFO%B
          WRITE (23,*) '       THICKNESS OF SLIDING MASS(METER):',LANDSLIDE_INFO%THICKNESS
		  ENDIF
	  ENDIF	
	  IF (BC_TYPE.EQ.3 .or. BC_TYPE.EQ.4) THEN
		  WRITE (23,*) '    USE FACTS INPUT BOUNDARY CONDITION!'
		  WRITE (23,*) '       GRID DIMENSION OF FACTS INPUT   :',BCI_INFO%NX,'*',BCI_INFO%NY
		  WRITE (23,*) '       TOTAL SNAPSHOTS OF FACTS INPUT  :',BCI_INFO%NT
		  WRITE (23,*) '       STARTING TIME OF FACTS INPUT    :',BCI_INFO%T(1)
		  WRITE (23,*) '       ENDING TIME OF FACTS INPUT      :',BCI_INFO%T(BCI_INFO%NT)
		  WRITE (23,*) '       DURATION OF FACTS INPUT         :',BCI_INFO%DURATION
		  WRITE (23,*) '       X_START OF FACTS INPUT          :',BCI_INFO%X(1)
		  WRITE (23,*) '       X_END OF FACTS INPUT            :',BCI_INFO%X(BCI_INFO%NX)
		  WRITE (23,*) '       Y_START OF FACTS INPUT          :',BCI_INFO%Y(1)
		  WRITE (23,*) '       Y_END OF FACTS INPUT            :',BCI_INFO%Y(BCI_INFO%NY)
		  WRITE (23,*) '       FILENAMES OF FACTS INPUT        :'
		  WRITE (23,*) BCI_INFO%FNAMEH
		  WRITE (23,*) BCI_INFO%FNAMEU
		  WRITE (23,*) BCI_INFO%FNAMEV
	  ENDIF
	  WRITE (23,*) ' '
	  WRITE (23,*) '--------------- 1ST-LEVEL GRID INFORMATION -----------------'
	  WRITE (23,*) '    #  GRID IDENTIFICATION NUMBER      :',LO%ID
	  IF (LO%LAYCORD .EQ. 0) WRITE (23,*) '       USE SPHERICAL COORDINATE SYSTEM'
      IF (LO%LAYCORD .EQ. 1) WRITE (23,*) '       USE CARTESIAN COORDINATE SYSTEM'
	  IF (LO%LAYGOV .EQ. 0)  WRITE (23,*) '       USE LINEAR SHALLOW WATER EQUATIONS'
      IF (LO%LAYGOV .EQ. 1)  WRITE (23,*) '       USE NONLINEAR SHALLOW WATER EQUATIONS'
	  IF (LO%LAYGOV .EQ. 2)  WRITE (23,*) '       USE LINEAR SWE WITH DISPERSION-IMPROVED SCHEME'
      IF (LO%LAYGOV .EQ. 3)  WRITE (23,*) '       USE NONLINEAR SWE WITH DISPERSION-IMPROVED SCHEME'
	  IF (LO%LAYGOV .EQ. 4)  WRITE (23,*) '       USE LINEAR SWE WITH DISPERSION-IMPROVED SCHEME*'
      IF (LO%LAYGOV .EQ. 5)  WRITE (23,*) '       USE NONLINEAR SWE WITH DISPERSION-IMPROVED SCHEME*'
	  IF (LO%FRIC_SWITCH .EQ. 1) WRITE (23,*) '       BOTTOM FRICTION                 : DISABLED'
	  IF (LO%FRIC_SWITCH .NE. 1) WRITE (23,*) '       BOTTOM FRICTION                 : ENABLED'
	  IF (LO%FRIC_SWITCH .EQ. 0) WRITE (23,*) '          USE CONSTANT ROUGHNESS COEF. :',LO%FRIC_COEF
	  IF (LO%FRIC_SWITCH .EQ. 2) WRITE (23,*) '          USE VARIABLE ROUGHNESS COEFFICIENTS.'
	  IF (LO%FRIC_SWITCH .EQ. 3) WRITE (23,*) '          USE CONSTANT ROUGHNESS COEF. :',LO%FRIC_COEF !130904
	  IF (LO%FRIC_SWITCH .EQ. 3) WRITE (23,*) '          USE SEDIMENT MODEL.' !130904
	  IF (LO%FLUXSWITCH .EQ. 0) WRITE (23,*)  '       VOLUME FLUX OUTPUT              : ENABLED'
	  IF (LO%FLUXSWITCH .EQ. 1) WRITE (23,*)  '       VOLUME FLUX OUTPUT              : DISABLED'
	  IF (LO%FLUXSWITCH .NE. 2) WRITE (23,*)  '       SURFACE DISPLACEMENT OUTPUT     : ENABLED'
	  IF (LO%FLUXSWITCH .EQ. 2) WRITE (23,*)  '       SURFACE DISPLACEMENT OUTPUT     : DISABLED'
	  WRITE (23,*) '       GRID LAYER POSITIONS            :'
	  IF (LO%LAYCORD .EQ. 0) THEN
	     WRITE (23,*) '           X_START            (DEGREE) :',LO%X(1)
	     WRITE (23,*) '           X_END              (DEGREE) :',LO%X(LO%NX)
	     WRITE (23,*) '           Y_START            (DEGREE) :',LO%Y(1)
	     WRITE (23,*) '           Y_END              (DEGREE) :',LO%Y(LO%NY)
		 WRITE (23,*) '       GRID DIMENSION          (NX*NY) :',LO%NX,'*',LO%NY
	     WRITE (23,*) '       GRID SIZE           (DX,MINUTE) :',LO%DX
	     WRITE (23,*) '       GRID SIZE           (DY,MINUTE) :',LO%DY
		 WRITE (23,*) '       TIME STEP SIZE     (DT, SECOND) :',LO%DT
	  ENDIF
	  IF (LO%LAYCORD .EQ. 1) THEN
	     WRITE (23,*) '         X_START               (METER) :',LO%X(1)
	     WRITE (23,*) '         X_END                 (METER) :',LO%X(LO%NX)
		 WRITE (23,*) '         Y_START               (METER) :',LO%Y(1)
		 WRITE (23,*) '         Y_END                 (METER) :',LO%Y(LO%NY)
		 WRITE (23,*) '       GRID DIMENSION          (NX*NY) :',LO%NX,'*',LO%NY
         WRITE (23,*) '       GRID SIZE           (DX, METER) :',LO%DX
	     WRITE (23,*) '       GRID SIZE           (DY, METER) :',LO%DY
	     WRITE (23,*) '       TIME STEP SIZE     (DT, SECOND) :',LO%DT
	  ENDIF
	  WRITE (23,*) '       NUMBER OF CHILD GRID LAYERS     :',LO%NUM_CHILD
	  DO I = 1,NUM_GRID
	  IF (LA(I)%LAYSWITCH.EQ.0 .AND. LA(I)%PARENT.EQ.LO%ID) THEN
	  WRITE (23,*) '               CHILD GRID LAYER ID     :',LA(I)%ID
	  ENDIF
	  ENDDO
	  WRITE (23,*) '       BATHYMETRY DATA FILE NAME       :',LO%DEPTH_NAME

!*	  CALL CR_CHECK (LO,LA)
	  WRITE (23,*) '--------------- SUB-LEVEL GRID INFORMATION -----------------'

	  DO I=1,NUM_GRID
	     IF (LA(I)%LAYSWITCH .EQ. 0) THEN
		    WRITE (23,*) '    #  GRID IDENTIFICATION NUMBER      :',LA(I)%ID
	        IF (LA(I)%LAYCORD .EQ. 0) WRITE (23,*) '       USE SPHERICAL COORDINATE SYSTEM'
            IF (LA(I)%LAYCORD .EQ. 1) WRITE (23,*) '       USE CARTESIAN COORDINATE SYSTEM'
	        IF (LA(I)%LAYGOV .EQ. 0)  WRITE (23,*) '       USE LINEAR SHALLOW WATER EQUATIONS'
            IF (LA(I)%LAYGOV .EQ. 1)  WRITE (23,*) '       USE NONLINEAR SHALLOW WATER EQUATIONS'
	        IF (LA(I)%LAYGOV .EQ. 2)  WRITE (23,*) '       USE LINEAR SWE WITH DISPERSION-IMPROVED SCHEME'
            IF (LA(I)%LAYGOV .EQ. 3)  WRITE (23,*) '       USE NONLINEAR SWE WITH DISPERSION-IMPROVED SCHEME'
	        IF (LA(I)%LAYGOV .EQ. 4)  WRITE (23,*) '       USE LINEAR SWE WITH DISPERSION-IMPROVED SCHEME*'
            IF (LA(I)%LAYGOV .EQ. 5)  WRITE (23,*) '       USE NONLINEAR SWE WITH DISPERSION-IMPROVED SCHEME*'
	        IF (LA(I)%FRIC_SWITCH .EQ. 1) WRITE (23,*) '       BOTTOM FRICTION                 : DISABLED'
			IF (LA(I)%FRIC_SWITCH .NE. 1) WRITE (23,*) '       BOTTOM FRICTION                 : ENABLED'
			IF (LA(I)%FRIC_SWITCH .EQ. 0) WRITE (23,*) '          USE CONSTANT ROUGHNESS COEF. :',LO%FRIC_COEF
			IF (LA(I)%FRIC_SWITCH .EQ. 2) WRITE (23,*) '          USE VARIABLE MANNING ROUGHNESS COEFFICIENTS.'
			IF (LA(I)%FRIC_SWITCH .EQ. 3) WRITE (23,*) '          USE CONSTANT ROUGHNESS COEF. :',LO%FRIC_COEF ! 130904
			IF (LA(I)%FRIC_SWITCH .EQ. 3) WRITE (23,*) '          USE SEDIMENT MODEL.' ! 130904
			IF (LA(I)%FLUXSWITCH .EQ. 0) WRITE (23,*)  '       VOLUME FLUX OUTPUT              : ENABLED'
			IF (LA(I)%FLUXSWITCH .EQ. 1) WRITE (23,*)  '       VOLUME FLUX OUTPUT              : DISABLED'
			IF (LA(I)%FLUXSWITCH .NE. 2) WRITE (23,*)  '       SURFACE DISPLACEMENT OUTPUT     : ENABLED'
			IF (LA(I)%FLUXSWITCH .EQ. 2) WRITE (23,*)  '       SURFACE DISPLACEMENT OUTPUT     : DISABLED'
			WRITE (23,*) '       PARENT GRID ID                  :',LA(I)%PARENT
			WRITE (23,*) '       GRID SIZE RATIO                 :',LA(I)%REL_SIZE
			WRITE (23,*) '       TIME STEP SIZE RATIO            :',LA(I)%REL_TIME
			WRITE (23,*) '       POSITIONS IN ITS PARENT LAYER   :'
			IF (LA(I)%LAYCORD .EQ. 0) THEN
	           WRITE (23,*) '           X_START            (DEGREE) :',LA(I)%X(2)
	           WRITE (23,*) '           X_END              (DEGREE) :',LA(I)%X(LA(I)%NX)
	           WRITE (23,*) '           Y_START            (DEGREE) :',LA(I)%Y(2)
	           WRITE (23,*) '           Y_END              (DEGREE) :',LA(I)%Y(LA(I)%NY)
	           WRITE (23,*) '           I_START             (INDEX) :',LA(I)%CORNERS(1)
	           WRITE (23,*) '           I_END               (INDEX) :',LA(I)%CORNERS(2)
	           WRITE (23,*) '           J_START             (INDEX) :',LA(I)%CORNERS(3)
	           WRITE (23,*) '           J_END               (INDEX) :',LA(I)%CORNERS(4)
			   WRITE (23,*) '       GRID DIMENSION          (NX*NY) :',LA(I)%NX-1,'*',LA(I)%NY-1
			   WRITE (23,*) '       GRID SIZE           (DX,MINUTE) :',LA(I)%DX
			   WRITE (23,*) '       GRID SIZE           (DY,MINUTE) :',LA(I)%DY
			   WRITE (23,*) '       TIME STEP SIZE     (DT, SECOND) :',LA(I)%DT
			ENDIF
			IF (LA(I)%LAYCORD .EQ. 1) THEN
			   IF (LA(I)%UPZ) THEN
	           WRITE (23,*) '         X_START               (METER) :',LA(I)%X(2)
			   WRITE (23,*) '         X_END                 (METER) :',LA(I)%X(LA(I)%NX)
			   WRITE (23,*) '         Y_START               (METER) :',LA(I)%Y(2)
			   WRITE (23,*) '         Y_END                 (METER) :',LA(I)%Y(LA(I)%NY)
	           WRITE (23,*) '         I_START               (INDEX) :',LA(I)%CORNERS(1)
	           WRITE (23,*) '         I_END                 (INDEX) :',LA(I)%CORNERS(2)
	           WRITE (23,*) '         J_START               (INDEX) :',LA(I)%CORNERS(3)
	           WRITE (23,*) '         J_END                 (INDEX) :',LA(I)%CORNERS(4)
			   WRITE (23,*) '       GRID DIMENSION          (NX*NY) :',LA(I)%NX-1,'*',LA(I)%NY-1
		       ELSE
			   WRITE (23,*) '         X_START_S            (DEGREE) :',LA(I)%XT(2)
	           WRITE (23,*) '         X_END_S              (DEGREE) :',LA(I)%XT(LA(I)%NX)
			   WRITE (23,*) '         Y_START_S            (DEGREE) :',LA(I)%YT(2)
	           WRITE (23,*) '         Y_END_S              (DEGREE) :',LA(I)%YT(LA(I)%NY)
	           WRITE (23,*) '         X_START_C             (METER) :',LA(I)%X(2)
	           WRITE (23,*) '         X_END_C               (METER) :',LA(I)%X(LA(I)%NX)
	           WRITE (23,*) '         Y_START_C             (METER) :',LA(I)%Y(2)
	           WRITE (23,*) '         Y_END_C               (METER) :',LA(I)%Y(LA(I)%NY)
			   WRITE (23,*) '       GRID DIMENSION          (NX*NY) :',LA(I)%NX-1,'*',LA(I)%NY-1
		       ENDIF
			   WRITE (23,*) '       GRID SIZE           (DX, METER) :',LA(I)%DX
			   WRITE (23,*) '       GRID SIZE           (DY, METER) :',LA(I)%DY
			   WRITE (23,*) '       TIME STEP SIZE     (DT, SECOND) :',LA(I)%DT
			ENDIF
			WRITE (23,*) '       NUMBER OF CHILD GRID LAYERS     :',LA(I)%NUM_CHILD
			DO K = 1,NUM_GRID
			IF (LA(K)%LAYSWITCH.EQ.0 .AND. LA(K)%PARENT.EQ.LA(I)%ID) THEN
			WRITE (23,*) '               CHILD GRID LAYER ID     :',LA(K)%ID
			ENDIF
			ENDDO			
			WRITE (23,*) '       BATHYMETRY DATA FILE NAME       :',LA(I)%DEPTH_NAME
			WRITE (23,*) '------------------------------------------------------------'
		 ENDIF
	  ENDDO
	  WRITE (23,*) ' '
	  CLOSE(23)

      RETURN
	  END


!----------------------------------------------------------------------
      SUBROUTINE WRITE_INI (LO)
! *********  OUTPUT INITIAL CONDITION DATA **************
!.....CREATED ON OCT.29 2008 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER)		:: LO

      OPEN (25,FILE='ini_surface.dat',STATUS='UNKNOWN')
      DO J=1,LO%NY
         WRITE (25,'(15F8.3)') (LO%Z(I,J,1),I=1,LO%NX)
      ENDDO
      CLOSE (25)
      RETURN
      END


!----------------------------------------------------------------------
      SUBROUTINE BATHY_WRITE (LO)
!......................................................................
!DESCRIPTION:
!	  #. WRITE THE BATHYMETRY DATA ONTO HARDDRIVE;
!	  #. THREE DATA FILES WILL BE CREATED: LAYER##.DAT -- X COORDINATES
!        LAYER##_Y.DAT -- Y COORDINATES AND LAYER##.DAT -- WATER DEPTH;
!		 XX REPRESENTS THE 2-DIGIT IDENTIFICATION OF NUMBER OF A LAYER;
!NOTES:
!	  #. CREATED ON OCT 28 2008 (XIAOMING WANG, GNS)
!	  #. LAST REVISE: NOV.21 2008 (XIAOMING WANG)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  TYPE (LAYER) :: LO
	  CHARACTER(LEN=30) FNAME1,FNAME2,FNAME3,FNAME4,FNAME5
	  CHARACTER(LEN=30) FNAME9
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

      IF (LO%ID.EQ.1) THEN
	     IS = 1
		 JS = 1
	  ELSE
	     IS = 2
		 JS = 2
	  ENDIF
	  IE = LO%NX
	  JE = LO%NY

!.....WRITE BATHYMETRY DATA
      WRITE (FNAME1,1) LO%ID
 1    FORMAT('layer/layer',I2.2,'.dat') !111118
      OPEN (25,FILE=FNAME1,STATUS='UNKNOWN')
      DO J = JS,JE
	     DO I = IS,IE
            WRITE (25,'(F12.4)') LO%H(I,J)
		 ENDDO
      ENDDO
      CLOSE (25)

!.....WRITE MODIFIED BATHYMETRY DATA
      IF ( LO%FLUXSWITCH .GE. 9 ) THEN
         WRITE (FNAME9,9) LO%ID
 9       FORMAT('layer',I2.2,'m.dat')
         OPEN (25,FILE=FNAME9,STATUS='UNKNOWN')
         DO J = JS,JE
	        DO I = IS,IE
               WRITE (25,'(F12.4)') LO%H(I,J)
		    ENDDO
         ENDDO
         CLOSE (25)
	  ENDIF


!.....WRITE X COORDINATES
      WRITE (FNAME2,2) LO%ID
 2    format('layer/layer',i2.2,'_x.dat') !111118
      OPEN (25,FILE=FNAME2,STATUS='UNKNOWN')
      DO I = IS,IE
         WRITE (25,'(F17.6)') LO%X(I)
      ENDDO
      CLOSE (25)
!.....WRITE Y COORDINATES	  
      WRITE (FNAME3,3) LO%ID
 3    format('layer/layer',i2.2,'_y.dat') !111118
      OPEN (25,FILE=FNAME3,STATUS='UNKNOWN')
      DO J = JS,JE
         WRITE (25,'(F17.6)') LO%Y(J)
      ENDDO
      CLOSE (25)
	  
	  IF (.NOT.LO%UPZ) THEN
!.....WRITE LO%XT 
      WRITE (FNAME4,4) LO%ID
 4    format('layer/layer',i2.2,'_xs.dat') !111118
      OPEN (25,FILE=FNAME4,STATUS='UNKNOWN')
      DO I = IS,IE
         WRITE (25,'(F17.6)') LO%XT(I)
      ENDDO
      CLOSE (25)
!.....WRITE LO%YT 	  
      WRITE (FNAME5,5) LO%ID
 5    format('layer/layer',i2.2,'_ys.dat') !111118
      OPEN (25,FILE=FNAME5,STATUS='UNKNOWN')
      DO J = JS,JE
         WRITE (25,'(F17.6)') LO%YT(J)
      ENDDO
      CLOSE (25)
	  ENDIF	  	  	  	  
	  
	  RETURN
	  END


!----------------------------------------------------------------------
      SUBROUTINE ALL_PRT (K,LO,LA)
! *********  OUTPUT RESULTS IN ASCII FORMAT  **************
! PREPARED BY TOM LOGAN, ARSC (2005)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
!      IMPLICIT NONE
      TYPE (LAYER) :: LO
	  TYPE (LAYER), DIMENSION(NUM_GRID)  :: LA
      INTEGER      :: K
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

      CALL DATA_PRT (K,LO)
      DO I=1,NUM_GRID
	     IF (LA(I)%LAYSWITCH .EQ. 0)  CALL DATA_PRT (K,LA(I))
      ENDDO

      RETURN
      END 

!----------------------------------------------------------------------
      SUBROUTINE DATA_PRT (K,LO)
!......................................................................
!DESCRIPTION:
!	  #. OUTPUT FREE SURFACE ELEVATION AND VOLUME FLUXES;
!NOTES:
!	  #. CREATED ON ??? ??, ???? (XIAOMING WANG, CORNELL UNIVERSITY)
!	  #. UPDATED ON MAR 01 2009 (XIAOMING WANG, GNS)
!		 1. ADD TIDAL LEVEL CORRECTION;
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER)		:: LO
	  REAL Z(LO%NX,LO%NY)
	  INTEGER           :: K
	  INTEGER  M,N
      CHARACTER(LEN=30) FNAME
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
	  Z = 0.0
	  Z(:,:) = LO%Z(:,:,1)
!OMP 111025 1b
!!!$omp parallel
!!!$omp do private(I,J)
	  DO I = 1,LO%NX
		 DO J = 1,LO%NY
		    IF (Z(I,J)+LO%H(I,J).LE.GX .AND. LO%H(I,J).LT.ZERO) THEN
			   Z(I,J) = 0.0
			ELSE
			   !APPLY TIDAL LEVEL CORRECTION
	           IF (ABS(LO%TIDE_LEVEL).GT.GX) THEN
			      Z(I,J) = LO%Z(I,J,1) + LO%TIDE_LEVEL
			   ENDIF
			ENDIF
		 ENDDO
	  ENDDO
!!!$omp end parallel


!     MODIFIED TO REMOVE ADDITIONAL COLUMN AND ROW
      IF (LO%PARENT .LE. 0) THEN
	      IS=1
		  JS=1
		  IE=LO%NX
		  JE=LO%NY
	  ELSE
	      IS=2
		  JS=2
		  IE=LO%NX
		  JE=LO%NY
	  ENDIF
!.....OUTPUT FREE SURFACE ELEVATION
      IF (LO%FLUXSWITCH .LE. 1 .OR. LO%FLUXSWITCH .EQ. 9) THEN
         WRITE (FNAME,1) LO%ID,K
 1       FORMAT('z/z_',I2.2,'_',I7.7,'.dat') !111118 150430
         OPEN (25,FILE=FNAME,STATUS='UNKNOWN')
         DO J = JS,JE
!            WRITE (25,'(15F9.4)') (Z(I,J),I=IS,IE) !ori
            WRITE (25,'(15E12.4)') (Z(I,J),I=IS,IE) !170220
         ENDDO
         CLOSE (25)
	  ENDIF
!.....OUTPUT VOLUME FLUX
	  IF (LO%FLUXSWITCH .EQ. 0) THEN
         WRITE (FNAME,2) LO%ID,K
 2       FORMAT('m/m_',I2.2,'_',I7.7,'.dat') !111118 150430
 
         OPEN (25,FILE=FNAME,STATUS='UNKNOWN')
         DO J = JS,JE
           WRITE (25,'(15E12.4)') (LO%M(I,J,1),I=IS,IE)
         ENDDO
         CLOSE (25)      
         WRITE (FNAME,3) LO%ID,K
 3       FORMAT('n/n_',I2.2,'_',I7.7,'.dat') !111118 150430
 
         OPEN (25,FILE=FNAME,STATUS='UNKNOWN')
         DO J = JS,JE
           WRITE (25,'(15E12.4)') (LO%N(I,J,1),I=IS,IE)
         ENDDO
         CLOSE (25)   
	  ENDIF

!	  IF (LO%SEDI_SWITCH .EQ. 0) THEN
!         WRITE (FNAME,4) LO%ID,K
! 4       FORMAT('s/s_',I2.2,'_',I7.7,'.dat')
!         OPEN (25,FILE=FNAME,STATUS='UNKNOWN')
!         DO J = JS,JE
!            WRITE (25,'(15F9.3)') (LO%DH(I,J,2),I=IS,IE) !130904
!            WRITE (25,'(15F9.3)') (LO%H(I,J),I=IS,IE) !130904
!         ENDDO
!         CLOSE (25)
!      ENDIF

      RETURN
      END


!----------------------------------------------------------------------
      SUBROUTINE MAX_AMP (LO,LA,TIME,TEND)
!DESCRIPTION:
!	  #. OUTPUT MAX SURFACE ELEVATION/DEPRESSION EVERY ONE HOUR AND 
!		 AT THE END OF A SIMULATION;
!NOTE:
!	  #. CREATED ON NOV.21, 2008 (XIAOMING WANG, GNS)
!	  #. UPDATED ON ???
!----------------------------------------------------------------------
      USE LAYER_PARAMS
	  TYPE (LAYER) :: LO
	  TYPE (LAYER), DIMENSION(NUM_GRID)  :: LA
	  REAL SECS
	  REAL TIME,TEND,TEMP
	  REAL, ALLOCATABLE :: TMP(:,:)
	  INTEGER K,K1,KK, I, J
	  CHARACTER(LEN=40) FNAME1,FNAME2,FNAME3
	  CHARACTER(LEN=40) FNAME4,FNAME5,FNAME6
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
     
      !OBTAIN MAXIMUM ELEVATION AND DEPRESSION FOR THE OUTEST LAYER
!OMP 111025 1b
!!!$omp parallel
!!!$omp do private(I,J)
      DO I = 1,LO%NX
	     DO J = 1,LO%NY
		    IF (LO%H(I,J)+LO%Z(I,J,2) .GT. GX) THEN
				IF (LO%Z(I,J,2).GT.LO%Z_MAX(I,J))					&
									LO%Z_MAX(I,J) = LO%Z(I,J,2)
				IF (LO%Z(I,J,2).LT.LO%Z_MIN(I,J))					&
									LO%Z_MIN(I,J) = LO%Z(I,J,2)
			ENDIF
		 ENDDO
      ENDDO
!!!$omp end parallel
	  !OBTAIN MAX ELEVATION AND DEPRESSION FOR THE INNER LAYERS, LA
	  DO K = 1,NUM_GRID
		 IF (LA(K)%LAYSWITCH.EQ.0) THEN
		 	!OMP 111025
!!!$omp parallel
!!!$omp do private(I,J)
            DO I = 1,LA(K)%NX
	           DO J = 1,LA(K)%NY
		          IF (LA(K)%H(I,J)+LA(K)%Z(I,J,2) .GT. GX) THEN
				     IF (LA(K)%Z(I,J,2).GT.LA(K)%Z_MAX(I,J))		&
								LA(K)%Z_MAX(I,J) = LA(K)%Z(I,J,2)
				     IF (LA(K)%Z(I,J,2).LT.LA(K)%Z_MIN(I,J))		&
								LA(K)%Z_MIN(I,J) = LA(K)%Z(I,J,2)
			      ENDIF
		       ENDDO
            ENDDO
!!!$omp end parallel
		 ENDIF
	  ENDDO

!.....WRITE THE MAXIMUM ELEVATION AND DEPRESSION INTO DATA FILE 
!	  EVERY ONE HOUR AND AT THE END OF THE SIMULATION
!.....OUTPUT FREE SURFACE ELEVATION
!     FILE NAME CONVENTION:
!     MAXIMUM ELEVATION:   ETAMAX_LAYER##_####HRS.DAT
!     MAXIMUM DEPRESSION:  ETAMIN_LAYER##_####HRS.DAT
      K1 = FLOOR((TIME-LO%DT)/3600.0)
	  IF (K1 .LE. 0) K1 = 0
	  K2 = FLOOR(TIME/3600.0)
      K = NINT(TIME/3600.0)
	  SECS = 3600.0*K

      IF (K2.GT.K1 .OR. TIME.GE.TEND-3.0*LO%DT) THEN	  
		 ALLOCATE(TMP(LO%NX,LO%NY))

		 DO I = 1,LO%NX
		    DO J = 1,LO%NY
			   IF ((LO%H(I,J)+LO%Z_MAX(I,J)).LE.GX .AND. 			&
											LO%H(I,J).LT.ZERO) THEN
			      TMP(I,J) = 0.0
			   ELSE
			      TMP(I,J) = LO%Z_MAX(I,J)
				  IF (ABS(LO%TIDE_LEVEL).GT.GX) THEN
				     TMP(I,J) = LO%Z_MAX(I,J) + LO%TIDE_LEVEL
				  ENDIF
			   ENDIF
		    ENDDO
		 ENDDO

         WRITE (FNAME1,1) LO%ID,K
 1       FORMAT('zamp/zmax_layer',I2.2,'_',I4.4,'hrs.dat') !111118
         IF (TIME.GE.TEND-3.0*LO%DT) FNAME1 = 'zamp/zmax_layer01.dat' !111118
         OPEN (25,FILE=FNAME1,STATUS='UNKNOWN')
         DO J = 1,LO%NY
		    WRITE (25,'(15F9.4)') (TMP(I,J),I=1,LO%NX)
         ENDDO
         CLOSE (25) 

		 DO I = 1,LO%NX
		    DO J = 1,LO%NY
			   IF ((LO%H(I,J)+LO%Z_MIN(I,J)).LE.GX .AND. 			&
											LO%H(I,J).LT.ZERO) THEN
			      TMP(I,J) = 0.0
			   ELSE
			      TMP(I,J) = LO%Z_MIN(I,J)
				  IF (ABS(LO%TIDE_LEVEL).GT.GX) THEN
				     TMP(I,J) = LO%Z_MIN(I,J) + LO%TIDE_LEVEL
				  ENDIF
			   ENDIF
		    ENDDO
		 ENDDO

         WRITE (FNAME2,2) LO%ID,K
 2       FORMAT('zamp/zmin_layer',I2.2,'_',I4.4,'hrs.dat') !111118
         IF (TIME.GE.TEND-3.0*LO%DT) FNAME2 = 'zamp/zmin_layer01.dat' !111118
         OPEN (25,FILE=FNAME2,STATUS='UNKNOWN')
         DO J = 1,LO%NY
            WRITE (25,'(15F9.4)') (TMP(I,J),I=1,LO%NX)
         ENDDO
         CLOSE (25) 

		 DEALLOCATE(TMP,STAT = ISTAT)
		 		   
         DO KK = 1,NUM_GRID
            IF (LA(KK)%LAYSWITCH .EQ. 0 ) THEN
			   ALLOCATE(TMP(LA(KK)%NX,LA(KK)%NY))

			   TMP = 0.0

		 	   DO I = 2,LA(KK)%NX
		          DO J = 2,LA(KK)%NY
			         IF ((LA(KK)%H(I,J)+LA(KK)%Z_MAX(I,J)).LE.GX 	&
								.AND. LA(KK)%H(I,J).LT.ZERO) THEN
			            TMP(I,J) = 0.0
			         ELSE
			            TMP(I,J) = LA(KK)%Z_MAX(I,J)
				        IF (ABS(LA(KK)%TIDE_LEVEL).GT.GX) THEN
				           TMP(I,J) = LA(KK)%Z_MAX(I,J)+LA(KK)%TIDE_LEVEL
				        ENDIF
			         ENDIF
		          ENDDO
		       ENDDO

			   IF (TIME.GE.TEND-2.0*LO%DT) THEN
                  WRITE (FNAME3,5) LA(KK)%ID
 5                FORMAT('zamp/zmax_layer',I2.2,'.dat') !111118
			   ELSE
                  WRITE (FNAME3,3) LA(KK)%ID,K
 3                FORMAT('zamp/zmax_layer',I2.2,'_',I4.4,'hrs.dat') !111118
               ENDIF     
               OPEN (25,FILE=FNAME3,STATUS='UNKNOWN')
               DO J = 2,LA(KK)%NY
             	  WRITE (25,'(15F9.4)') (TMP(I,J),I=2,LA(KK)%NX)
               ENDDO
               CLOSE (25)

			   TMP = 0.0

		 	   DO I = 2,LA(KK)%NX
		          DO J = 2,LA(KK)%NY
			         IF ((LA(KK)%H(I,J)+LA(KK)%Z_MIN(I,J)).LE.GX 	&
								.AND. LA(KK)%H(I,J).LT.ZERO) THEN
			            TMP(I,J) = 0.0
			         ELSE
			            TMP(I,J) = LA(KK)%Z_MIN(I,J)
				        IF (ABS(LA(KK)%TIDE_LEVEL).GT.GX) THEN
				           TMP(I,J) = LA(KK)%Z_MIN(I,J)+LA(KK)%TIDE_LEVEL
				        ENDIF
			         ENDIF
		          ENDDO
		       ENDDO

			   IF (TIME.GE.TEND-2.0*LO%DT) THEN
                  WRITE (FNAME4,6) LA(KK)%ID
 6                FORMAT('zamp/zmin_layer',I2.2,'.dat')!111118
			   ELSE
                  WRITE (FNAME4,4) LA(KK)%ID,K
 4                FORMAT('zamp/zmin_layer',I2.2,'_',I4.4,'hrs.dat')!111118
               ENDIF
               OPEN (25,FILE=FNAME4,STATUS='UNKNOWN')
               DO J = 2,LA(KK)%NY
               	  WRITE (25,'(15F9.4)') (TMP(I,J),I=2,LA(KK)%NX)
               ENDDO
               CLOSE (25)
			   DEALLOCATE(TMP,STAT = ISTAT)
            ENDIF
		 ENDDO
	  ENDIF

	  RETURN
	  END


!----------------------------------------------------------------------
      SUBROUTINE GET_TS (DAT,X0,Y0,LO,LA,ID)
!DESCRIPTION:
!	  #. EXTRACT TIME HISTORY RECORD AT SPECIFIED LOCATION;
!NOTE:
!	  #. CREATED ON NOV 25 2008 (XIAOMING WANG, GNS)
!	  #. UPDATED ON JAN 30 2009 (XIAOMING WANG, GNS)
!	  #. UPDATED ON FEB08 2009 (XIAOMING WANG, GNS)
!		 1. WATER SURFACE ELEVATION ON DRY LAND WILL TAKE THE VALUE OF 
!			LAND ELEVATION, NOW CHANGE IT TO ZERO.
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) :: LO
	  TYPE (LAYER), DIMENSION(NUM_GRID)  :: LA
	  REAL DAT,X0,Y0
	  INTEGER ID,IS,JS,IE,JE,KI,KJ
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

!*	  ID = 1
	  DAT = 0.0

!*	  CALL GAUGE_LAYERID (ID,X0,Y0,LO,LA)

	  IF (ID.EQ.1) THEN
         IS = 1
	     JS = 1
	     IE = LO%NX
	     JE = LO%NY

         KI = 0
	     KJ = 0
!OMP 111025
!!!$omp parallel
!!!$omp do private(I)
         DO I = IS,IE-1
		    IF (X0.GE.LO%X(I) .AND. X0.LT.LO%X(I+1)) THEN
		       KI = I
		    END IF
		    IF (X0.LT.LO%X(IS)) KI = IS
		    IF (X0.GE.LO%X(IE)) KI = IE-1
	     END DO
!!!$omp barrier
!!!$omp do private(J)
         DO J = JS,JE-1
		    IF (Y0.GE.LO%Y(J) .AND. Y0.LT.LO%Y(J+1)) THEN
		       KJ = J
		    END IF
		    IF (Y0.LT.LO%Y(JS)) KJ = JS
		    IF (Y0.GE.LO%Y(JE)) KJ = JE-1			   
	     END DO
!!!$omp end parallel
	     DELTA_X = LO%X(KI+1)-LO%X(KI)
	     DELTA_Y = LO%Y(KJ+1)-LO%Y(KJ)
	     CX = (X0-LO%X(KI))/DELTA_X
	     CY = (Y0-LO%Y(KJ))/DELTA_Y
         Z1 = LO%Z(KI,KJ,2)*(1.0-CX)*(1.0-CY)
	     Z2 = LO%Z(KI+1,KJ,2)*(CX)*(1-CY)
	     Z3 = LO%Z(KI,KJ+1,2)*(1.0-CX)*(CY)
	     Z4 = LO%Z(KI+1,KJ+1,2)*(CX)*(CY)
	     DAT = Z1+Z2+Z3+Z4
		 IF (ABS(LO%TIDE_LEVEL).GT.GX) DAT = DAT + LO%TIDE_LEVEL	
	  ELSE
		 K = ID-1
         IS = 2
	     JS = 2
	     IE = LA(K)%NX
	     JE = LA(K)%NY

         KI = 0
	     KJ = 0
!OMP 111025
!!!$omp parallel
!!!$omp do private(I)
         DO I = IS,IE-1
		    IF (X0.GE.LA(K)%X(I) .AND. X0.LT.LA(K)%X(I+1)) THEN
		       KI = I
		    END IF
		    IF (X0.LT.LA(K)%X(IS)) KI = IS
		    IF (X0.GE.LA(K)%X(IE)) KI = IE-1
	     END DO
!!!$omp barrier
!!!$omp do private(J)
         DO J = JS,JE-1
		    IF (Y0.GE.LA(K)%Y(J) .AND. Y0.LT.LA(K)%Y(J+1)) THEN
		    KJ = J
		    END IF
		    IF (Y0.LT.LA(K)%Y(JS)) KJ = JS
		    IF (Y0.GE.LA(K)%Y(JE)) KJ = JE-1
	     END DO
!!!$omp end parallel
	     DELTA_X = LA(K)%X(KI+1)-LA(K)%X(KI)
	     DELTA_Y = LA(K)%Y(KJ+1)-LA(K)%Y(KJ)
	     CX = (X0-LA(K)%X(KI))/DELTA_X
	     CY = (Y0-LA(K)%Y(KJ))/DELTA_Y

!		 ETALL = LA(K)%Z(KI,KJ,2)
!		 ETALR = LA(K)%Z(KI+1,KJ,2)
!		 ETAUL = LA(K)%Z(KI,KJ+1,2)
!		 ETAUR = LA(K)%Z(KI+1,KJ+1,2)
!		 IF (ETALL+LA(K)%H(KI,KJ) .LT. GX) ETALL = 0.0
!		 IF (ETALR+LA(K)%H(KI+1,KJ) .LT. GX) ETALR = 0.0
!		 IF (ETAUL+LA(K)%H(KI,KJ+1) .LT. GX) ETAUL = 0.0
!		 IF (ETAUR+LA(K)%H(KI+1,KJ+1) .LT. GX) ETAUR = 0.0
!
!        Z1 = ETALL*(1.0-CX)*(1.0-CY)
!	     Z2 = ETALR*CX*(1.0-CY)
!	     Z3 = ETAUL*(1.0-CX)*CY
!	     Z4 = ETAUR*CX*CY
!	     DAT = Z1+Z2+Z3+Z4
!
         Z1 = LA(K)%Z(KI,KJ,2)*(1.0-CX)*(1.0-CY)
	     Z2 = LA(K)%Z(KI+1,KJ,2)*(CX)*(1-CY)
	     Z3 = LA(K)%Z(KI,KJ+1,2)*(1.0-CX)*(CY)
	     Z4 = LA(K)%Z(KI+1,KJ+1,2)*(CX)*(CY)
	     DAT = Z1+Z2+Z3+Z4
		 IF (ABS(LA(K)%TIDE_LEVEL).GT.GX) DAT = DAT + LA(K)%TIDE_LEVEL	
	  ENDIF

      RETURN
      END 

!----------------------------------------------------------------------
      SUBROUTINE GAUGE_LAYERID (ID,X0,Y0,LO,LA)
!DESCRIPTION:
!	  #. DETERMINE WHICH GRID LAYER THE TIDAL GAGE IS LOCATED IN;
!INPUT:
!	  #. TIDAL GAGE LOCATION: X0, Y0;
!	  #. GRID LAYER INFO: LO, LA;
!OUTPUT:
!	  #. GRID LAYER ID IN WHICH THE TIDAL GAGE IS LOCATED;
!NOTE:
!	  #. CREATED ON JAN 30 2009 (XIAOMING WANG, GNS)
!	  #. UPDATED ON JAN 30 2009 (XIAOMING WANG, GNS)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER) :: LO
	  TYPE (LAYER), DIMENSION(NUM_GRID)  :: LA
	  INTEGER ID
	  REAL DAT,X0,Y0
	  INTEGER IS,JS,IE,JE,KI,KJ
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn

	  ID = 1
	  IDTMP = 1
	  LEVEL = 1
	  LTMP = 1

	  IS = 2
	  JS = 2

	  DO K = 1, NUM_GRID
		 IE = LA(K)%NX
		 JE = LA(K)%NY
		 IF (LA(K)%LAYSWITCH.EQ.0) THEN
			IF (X0.GE.LA(K)%X(IS) .AND. X0.LT.LA(K)%X(IE) .AND. 	&
				Y0.GE.LA(K)%Y(JS) .AND. Y0.LT.LA(K)%Y(JE)) THEN
			   IDTMP = LA(K)%ID
			   LTMP = LA(K)%LEVEL
			ENDIF
			IF (LTMP.GT.LEVEL) THEN
			   LEVEL = LTMP
			   ID = IDTMP
		    ENDIF
		 ENDIF
	  ENDDO

!	  WRITE (*,*) ID

	  RETURN
	  END

!----------------------------------------------------------------------
      SUBROUTINE WAVE_MAKER (TIME,LO,WV)
!.....SEND IN INCIDENT WAVES THROUGH A BOUNDARY
!.....CREATED BY XIAOMING WANG (MAR 15, 2004)
!     UPDATED BY XIAOMING WANG (SEP 17 2006)
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      USE WAVE_PARAMS
!      IMPLICIT NONE
      TYPE (LAYER)  :: LO
      TYPE (WAVE)   :: WV
	  REAL ETA,FLUX,TIME,X,DX,SOUTH_LAT,DX_RAD,DD,CC,TIME_LAG,T
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
      DATA OSIXTY/0.016666666667/, BIG/-999./
      DATA RAD/0.01745329252/
!      DATA RR/6.37E6/           !      RADIUS OF EARTH
!      DATA PI/3.14159265358979/


	  IF (LO%LAYCORD .EQ. 0) THEN
	     SOUTH_LAT = LO%SOUTH_LAT*RAD_DEG
	     DX_RAD = LO%DX*RAD_MIN
         DX = R_EARTH*COS(SOUTH_LAT)*DX_RAD   !CONVERT RAD TO METERS
      ELSE 
		 DX = LO%DX
      ENDIF
	  CC = SQRT(GRAV*(WV%DEPTH+WV%AMP))

      IF (WV%MK_TYPE .EQ. 5) THEN
!	     TIME = TIME-19*LO%DT
         !OMP 111025
!!!$omp parallel
!!!$omp do private(I,X,ETA,FLUX)
         DO I = 1,LO%NX
		    X = I*LO%DX - 50.0
			IF (X.LE.0.0) THEN
			   CALL SOLIT (LO,ETA,FLUX,X,TIME-LO%DT,WV)
		       DO J = 1,LO%NY
				  LO%Z(I,J,1) = ETA
				  LO%M(I,J,1) = FLUX
			   ENDDO			      
			   CALL SOLIT (LO,ETA,FLUX,X,TIME,WV)
			   DO J = 1,LO%NY
				  LO%Z(I,J,2) = ETA
				  LO%M(I,J,2) = FLUX
			   ENDDO
            ENDIF
		 ENDDO

!!!$omp end parallel	  
	  ENDIF

	  X = 0.0
!      CALL SOLIT (ETA,FLUX,X,TIME,WV)
      IF (WV%MK_TYPE .LE. 2) THEN ! FOR SOLITARY OR TIMEHISTORY INPUT
	     CALL SOLIT (LO,ETA,FLUX,X,TIME,WV)
	     SELECT CASE (WV%INCIDENT)
	     CASE (1)     !FROM TOP BOUNDARY
            !OMP 111025
!!!$omp parallel
!!!$omp do private(I)
	        DO I = 1,LO%NX
	           LO%Z(I,LO%NY,2) = ETA !+LO%Z(I,LO%NY,1)
	           LO%N(I,LO%NY,2) = -FLUX !+LO%N(I,LO%NY,1)
	        ENDDO
!!!$omp end parallel
	     CASE (2)    !FROM BOTTOM BOUNDARY
		             !OMP 111025
!!!$omp parallel
!!!$omp do private(I)
	        DO I = 1,LO%NX
	           LO%Z(I,1,2) = ETA !+LO%Z(I,1,1)
	           LO%N(I,1,2) = FLUX !+LO%N(I,1,1)
			ENDDO
!!!$omp end parallel
	     CASE (3)   !FROM LEFT BOUNDARY
		             !OMP 111025
!!!$omp parallel
!!!$omp do private(J)
	        DO J = 1,LO%NY
	           LO%Z(1,J,2) = ETA !+LO%Z(1,J,1)
	           LO%M(1,J,2) = FLUX !+LO%M(1,J,1)
			ENDDO
!!!$omp end parallel
	     CASE (4)   !FROM RIGHT BOUNDARY
		    !OMP 111025
!!!$omp parallel
!!!$omp do private(J)
	        DO J = 1,LO%NY
	           LO%Z(LO%NX,J,2) = ETA !+LO%Z(LO%NX,J,1)
	           LO%M(LO%NX,J,2) = -FLUX !+LO%M(LO%NX,J,1)
			ENDDO
!!!$omp end parallel
         CASE (5)  !OBLIQUE INCIDENT WAVE
			!PROPAGATE TO UPPER-RIGHT
		    IF (WV%ANG.GE.0.0 .AND. WV%ANG.LT.90.0) THEN 
			   ANG = WV%ANG*RAD_DEG 
			   SN = SIN(ANG)
			   CS = COS(ANG)
!OMP 111025
!!!$omp parallel
!!!$omp do private(J,DIS,TIME_LAG,T,ETA,FLUX)
               DO J=1,LO%NY
                  DIS = DBLE(J-1)*DX*CS
				  TIME_LAG = DIS/CC
				  T = TIME - TIME_LAG
				  CALL SOLIT(LO,ETA,FLUX,X,T,WV)
				  LO%Z(1,J,2) = ETA
				  LO%M(1,J,2) = FLUX*SN
				  LO%N(1,J,2) = FLUX*CS
			   ENDDO
!!!$omp barrier
!!!$omp do private(I,DIS,TIME_LAG,T,ETA,FLUX)
			   DO I=1,LO%NX
                  DIS = DBLE(I-1)*DX*SN
				  TIME_LAG = DIS/CC
				  T = TIME - TIME_LAG
				  CALL SOLIT(LO,ETA,FLUX,X,T,WV)
				  LO%Z(I,1,2) = ETA
				  LO%M(I,1,2) = FLUX*SN
				  LO%N(I,1,2) = FLUX*CS
			   ENDDO
!!!$omp end parallel
			ENDIF
			!PROPAGATE TO LOWER-RIGHT 
		    IF (WV%ANG.GE.90.0 .AND. WV%ANG.LT.180.0) THEN 
			   ANG = (180.0-WV%ANG)*RAD_DEG
			   CS = COS(ANG)
			   SN = SIN(ANG)
!OMP 111025
!!!$omp parallel
!!!$omp do private(J,DIS,TIME_LAG,T,ETA,FLUX)			   
               DO J=1,LO%NY
                  DIS = DBLE(LO%NY-J)*DX*CS
				  TIME_LAG = DIS/CC
				  T = TIME - TIME_LAG
				  CALL SOLIT(LO,ETA,FLUX,X,T,WV)
				  LO%Z(1,J,2) = ETA
				  LO%M(1,J,2) = FLUX*SN
				  LO%N(1,J,2) = -FLUX*CS
			   ENDDO
!!!$omp barrier
!!!$omp do private(I,DIS,TIME_LAG,T,ETA,FLUX)
			   DO I=1,LO%NX
                  DIS = DBLE(I-1)*DX*SN
				  TIME_LAG = DIS/CC
				  T = TIME - TIME_LAG
				  CALL SOLIT(LO,ETA,FLUX,X,T,WV)
				  LO%Z(I,LO%NY,2) = ETA
				  LO%M(I,LO%NY,2) = FLUX*SN
				  LO%N(I,LO%NY,2) = -FLUX*CS
			   ENDDO
!!!$omp end parallel
			ENDIF
			!PROPAGATE TO LOWER-LEFT
		    IF (WV%ANG.GE.180.0 .AND. WV%ANG.LT.270.0) THEN  
			   ANG = (270.0-WV%ANG)*RAD_DEG
			   CS = COS(ANG)
			   SN = SIN(ANG)
!OMP 111025
!!!$omp parallel
!!!$omp do private(J,DIS,TIME_LAG,T,ETA,FLUX)				   
               DO J=1,LO%NY
                  DIS = DBLE(LO%NY-J)*DX*SN
				  TIME_LAG = DIS/CC
				  T = TIME - TIME_LAG
				  CALL SOLIT(LO,ETA,FLUX,X,T,WV)
				  LO%Z(LO%NX,J,2) = ETA
				  LO%M(LO%NX,J,2) = -FLUX*CS
				  LO%N(LO%NX,J,2) = -FLUX*SN
			   ENDDO
!!!$omp barrier
!!!$omp do private(I,DIS,TIME_LAG,T,ETA,FLUX)
			   DO I=1,LO%NX
                  DIS = DBLE(LO%NX-I)*DX*CS
				  TIME_LAG = DIS/CC
				  T = TIME - TIME_LAG
				  CALL SOLIT(LO,ETA,FLUX,X,T,WV)
				  LO%Z(I,LO%NY,2) = ETA
				  LO%M(I,LO%NY,2) = -FLUX*CS
				  LO%N(I,LO%NY,2) = -FLUX*SN
			   ENDDO
!!!$omp end parallel
			ENDIF
			!PROPAGATE TO UPPER-LEFT
		    IF (WV%ANG.GE.270.0 .AND. WV%ANG.LT.360.0) THEN 
			   ANG = (360.0-WV%ANG)*RAD_DEG
			   CS = COS(ANG) 
			   SN = SIN(ANG)
!OMP 111025
!!!$omp parallel
!!!$omp do private(J,DIS,TIME_LAG,T,ETA,FLUX)				   
               DO J=1,LO%NY
                  DIS = DBLE(J-1)*DX*CS
				  TIME_LAG = DIS/CC
				  T = TIME - TIME_LAG
				  CALL SOLIT(LO,ETA,FLUX,X,T,WV)
				  LO%Z(LO%NX,J,2) = ETA
				  LO%M(LO%NX,J,2) = -FLUX*SN
				  LO%N(LO%NX,J,2) = FLUX*CS
			   ENDDO
!!!$omp barrier
!!!$omp do private(I,DIS,TIME_LAG,T,ETA,FLUX)
			   DO I=1,LO%NX
                  DIS = DBLE(LO%NX-I)*DX*SN
				  TIME_LAG = DIS/CC
				  T = TIME - TIME_LAG
				  CALL SOLIT(LO,ETA,FLUX,X,T,WV)
				  LO%Z(I,1,2) = ETA
				  LO%M(I,1,2) = -FLUX*SN
				  LO%N(I,1,2) = FLUX*CS
			   ENDDO
!!!$omp end parallel
			ENDIF
         END SELECT
	  ENDIF
	  IF (WV%MK_TYPE .EQ. 3) THEN ! FOCUSING SOLITARY WAVE
		 SELECT CASE (WV%INCIDENT)
			CASE (1)  !WAVE FROM TOP BOUNARY
!*		       D0 = DBLE(LO%NY-1)*DX-WV%POINT(2)
		       D0 = LO%Y(LO%NY)-WV%POINT(2)
!OMP 111025
!!!$omp parallel
!!!$omp do private(I,DIS_VERT,DIS_HORI,DD,CC,TIME_LAG,T,ETA,FLUX)
			   DO I = 1,LO%NX
			      DIS_VERT = D0
!*				  DIS_HORI = DBLE(I-1)*DX-WV%POINT(1)
				  DIS_HORI = LO%X(I)-WV%POINT(1)
			      DD = SQRT(DIS_VERT**2+DIS_HORI**2)-D0
                  CC = SQRT(GRAV*(WV%DEPTH+WV%AMP))
                  TIME_LAG = DD/CC
				  T = TIME + TIME_LAG
				  CALL SOLIT(LO,ETA,FLUX,X,T,WV)
	              LO%Z(I,LO%NY,2) = ETA !+LO%Z(1,J,1)
	              LO%N(I,LO%NY,2) = -FLUX*DIS_VERT/(DD+D0) !+LO%M(1,J,1)
				  LO%M(I,LO%NY,2) = -FLUX*DIS_HORI/(DD+D0)
			   ENDDO
!!!$omp end parallel
		    CASE (2)  ! WAVE FROM BOTTOM BOUNDARY
		       D0 = WV%POINT(2)-LO%Y(1)
!OMP 111025
!!!$omp parallel
!!!$omp do private(I,DIS_VERT,DIS_HORI,DD,TIME_LAG,T,ETA,FLUX)
			   DO I = 1,LO%NX
			      DIS_VERT = D0
!*				  DIS_HORI = DBLE(I-1)*DX-WV%POINT(1)
				  DIS_HORI =  LO%X(I)-WV%POINT(1)
			      DD = SQRT(DIS_HORI**2+DIS_VERT**2)-D0
                  !CC = SQRT(9.807*(WV%DEPTH+WV%AMP))   !<= different from top boundary
                  TIME_LAG = DD/CC
				  T = TIME + TIME_LAG
				  CALL SOLIT(LO,ETA,FLUX,X,T,WV)
	              LO%Z(I,1,2) = ETA !+LO%Z(1,J,1)
	              LO%N(I,1,2) = FLUX*DIS_VERT/(DD+D0) !+LO%M(1,J,1)
                  LO%M(I,1,2) = -FLUX*DIS_HORI/(DD+D0)
			   ENDDO
!!!$omp end parallel
		    CASE (3)  !WAVE FROM LEFT BOUNDARY
!*		       D0 = WV%POINT(1)
		       D0 = WV%POINT(1) - LO%X(1)
!OMP 111025
!!!$omp parallel
!!!$omp do private(J,DIS_VERT,DIS_HORI,DD,TIME_LAG,T,ETA,FLUX)			   
			   DO J = 1,LO%NY
			      DIS_HORI = D0
!*				  DIS_VERT = DBLE(J-1)*DX-WV%POINT(2)
				  DIS_VERT = LO%Y(J)-WV%POINT(2)
			      DD = SQRT(DIS_VERT**2+DIS_HORI**2)-D0
                  !CC = SQRT(9.807*(WV%DEPTH+WV%AMP))  !<= different from top boundary
                  TIME_LAG = DD/CC
				  T = TIME + TIME_LAG
				  CALL SOLIT(LO,ETA,FLUX,X,T,WV)
	              LO%Z(1,J,2) = ETA !+LO%Z(1,J,1)
	              LO%M(1,J,2) = FLUX*DIS_HORI/(DD+D0) !+LO%M(1,J,1)
				  LO%N(1,J,2) = -FLUX*DIS_VERT/(DD+D0)
			   ENDDO
!!!$omp end parallel
			CASE (4) !WAVE FROM RIGHT BOUNDARY
!*		       D0 = DBLE(LO%NX-1)*DX-WV%POINT(1)
		       D0 = LO%X(LO%NX)-WV%POINT(1)
!OMP 111025
!!!$omp parallel
!!!$omp do private(J,DIS_VERT,DIS_HORI,DD,TIME_LAG,T,ETA,FLUX)				   
			   DO J = 1,LO%NY
			      DIS_HORI = D0
!*				  DIS_VERT = DBLE(J-1)*DX-WV%POINT(2)
				  DIS_VERT = LO%Y(J)-WV%POINT(2)
			      DD = SQRT(DIS_VERT**2+DIS_HORI**2)-D0
                  !CC = SQRT(9.807*(WV%DEPTH+WV%AMP))  !<= different from top boundary
                  TIME_LAG = DD/CC
				  T = TIME + TIME_LAG
				  CALL SOLIT(LO,ETA,FLUX,X,T,WV)
	              LO%Z(LO%NX,J,2) = ETA !+LO%Z(1,J,1)
	              LO%M(LO%NX,J,2) = -FLUX*DIS_HORI/(DD+D0) !+LO%M(1,J,1)
				  LO%N(LO%NX,J,2) = -FLUX*DIS_VERT/(DD+D0)
			   ENDDO
!!!$omp end parallel
         END SELECT
      ENDIF
      ! WAVE MAKER STOP WORKING ON LAND
!OMP 111025 1b
!!!$omp parallel
!!!$omp do private(J)
      DO J=1,LO%NY
	     IF (LO%H(1,J) .LE. 0.0) THEN
	        LO%Z(1,J,2) = 0.0
		    LO%M(1,J,2) = 0.0
		    LO%N(1,J,2) = 0.0
		 ENDIF
		 IF (LO%H(LO%NX,J) .LE. 0.0) THEN
	        LO%Z(LO%NX,J,2) = 0.0
		    LO%M(LO%NX,J,2) = 0.0
		    LO%N(LO%NX,J,2) = 0.0
		 ENDIF
	  ENDDO
!!!$omp barrier
!!!$omp do private(I)
      DO I=1,LO%NX
	     IF (LO%H(I,1) .LE. 0.0) THEN
	        LO%Z(I,1,2) = 0.0
		    LO%M(I,1,2) = 0.0
		    LO%N(I,1,2) = 0.0
		 ENDIF
		 IF (LO%H(I,LO%NY) .LE. 0.0) THEN
	        LO%Z(I,LO%NY,2) = 0.0
		    LO%M(I,LO%NY,2) = 0.0
		    LO%N(I,LO%NY,2) = 0.0
		 ENDIF
	  ENDDO
!!!$omp end parallel 
      RETURN
      END

!----------------------------------------------------------------------
      SUBROUTINE SOLIT (LO,ETA,FLUX,X,TIME,WAVE_INFO)
!     CREATED ON SEP 17, 2006 (XIAOMING WANG)
!     ADDITIONAL PASSING PARAMETER, LO, IS ADDED ON MAR 18 2008
!     input:LO,X,TIME,WAVE_INFO    output:ETA,FLUX
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      USE WAVE_PARAMS
	  TYPE (LAYER):: LO
	  TYPE (WAVE) :: WAVE_INFO
      REAL ETA, FLUX, TIME, X
	  REAL TIMELAG,THI,CE,WAVEPERI,WLENGTH
	  COMMON /CONS/ ELMAX,GRAV,PI,R_EARTH,GX,EPS,ZERO,ONE,NUM_GRID,	&
					NUM_FLT,V_LIMIT,RAD_DEG,RAD_MIN,RHO_W,RHO_A,Pn
	  
!      PI = 3.14159265358979
	  G = GRAV
	  IF (LO%LAYCORD .EQ. 0) THEN
	     DX = LO%DX*RAD_MIN*R_EARTH
	  ELSE
	     DX = LO%DX
	  ENDIF
	  DT = LO%DT

      IF (WAVE_INFO%MK_TYPE.EQ.0) THEN
	     A0 = WAVE_INFO%AMP
		 C0 = SQRT(GRAV*(WAVE_INFO%AMP+WAVE_INFO%DEPTH))
		 PERI = 1.30
		 WLENGTH = C0*PERI
		 WNUM = 2.*PI/WLENGTH
		 OMIGA = 2.*PI/PERI
		 
         ETA = A0*COS(WNUM*X-OMIGA*TIME+PI/2.0)
		 ETAP = A0*COS(WNUM*(X+LO%DX/2.)-OMIGA*(TIME+DT/2.0)+PI/2.0)
!	     CE = SQRT(9.807*(WAVE_INFO%DEPTH+ETA))
		 FLUX = ETAP*C0
      ENDIF

      IF (WAVE_INFO%MK_TYPE.EQ.5) THEN
	     A0 = WAVE_INFO%AMP
		 C0 = SQRT(GRAV*(WAVE_INFO%AMP+WAVE_INFO%DEPTH))
		 PERI = 1.30
		 WLENGTH = C0*PERI
		 WNUM = 2.0*PI/WLENGTH
		 OMIGA = 2.0*PI/PERI
		 
         ETA = A0*COS(WNUM*X-OMIGA*TIME+PI/2.0)
		 ETAP = A0*COS(WNUM*(X+LO%DX/2.)-OMIGA*(TIME+DT/2.0)+PI/2.0)
!	     CE = SQRT(9.807*(WAVE_INFO%DEPTH+ETA))
		 FLUX = ETAP*C0
      ENDIF

	  IF (WAVE_INFO%MK_TYPE.EQ.1 .OR. WAVE_INFO%MK_TYPE.EQ.3) THEN
         THI = SQRT(3.0*WAVE_INFO%AMP/(4.0*WAVE_INFO%DEPTH**3))
         CE = SQRT(GRAV*(WAVE_INFO%DEPTH+WAVE_INFO%AMP))
         WAVEPERI = 2.0/(THI*CE)*(3.8+WAVE_INFO%AMP/WAVE_INFO%DEPTH)
         WLENGTH  = 2.0*2.12*WAVE_INFO%DEPTH						&
							/SQRT(WAVE_INFO%AMP/WAVE_INFO%DEPTH)
         TIMELAG  = 0.6 * WAVEPERI
         ETA = WAVE_INFO%AMP/COSH(SQRT(3.0/4.0*WAVE_INFO%AMP		&
						/WAVE_INFO%DEPTH**3)*CE*(TIMELAG-TIME))**2
!         PRINT *,ETA
		 FLUX = ETA*CE  !/(ETA+WAVE_INFO%DEPTH)
	  ELSEIF (WAVE_INFO%MK_TYPE.EQ.2) THEN
         DO I=1,WAVE_INFO%FORM_LEN-1
		  IF (TIME.LT.WAVE_INFO%T(1)) THEN
		     ETA = 0.0
			 FLUX = 0.0
          ELSEIF (TIME.GE.WAVE_INFO%T(I) .AND.						&
					TIME.LT.WAVE_INFO%T(I+1)) THEN
	         ETA=(WAVE_INFO%FSE(I+1)-WAVE_INFO%FSE(I))				&
					/(WAVE_INFO%T(I+1) - WAVE_INFO%T(I))			&
					*(TIME-WAVE_INFO%T(I))+WAVE_INFO%FSE(I)
             CE = SQRT(GRAV*(WAVE_INFO%DEPTH+ETA))
			 FLUX = ETA*CE  !/(ETA+WAVE_INFO%DEPTH)
		  ELSEIF (TIME.GE.WAVE_INFO%T(WAVE_INFO%FORM_LEN)) THEN
             ETA = 0.0
			 FLUX = 0.0
          ENDIF
         ENDDO   	     
      ENDIF

	  RETURN
	  END

!----------------------------------------------------------------------
      SUBROUTINE READ_WAVE (WAVE_INFO)
!.....CUSTOMIZED INPUT WAVE PROFILE
!     ONLY USED WHEN WAVE TYPE OPTION IS 2.
!----------------------------------------------------------------------
	  USE WAVE_PARAMS
	  TYPE (WAVE) :: WAVE_INFO
	  REAL H_MAX,SOUTH_LAT,DX,CR  
	  REAL TEMP1,TEMP2
	  INTEGER COUNT 
      CHARACTER(LEN=80) FNAME

	  TEMP1 = 0.0
	  TEMP2 = 0.0
      IF (WAVE_INFO%MK_TYPE==2) THEN
         OPEN(UNIT=20,FILE=WAVE_INFO%FORM_NAME,STATUS='OLD',IOSTAT=ISTAT)
         IF (ISTAT /=0) THEN
            PRINT *,"ERROR:: CAN'T OPEN TIME HISTORY DATA; EXITING."
            STOP
         END IF
		 COUNT = 0		 
		 DO WHILE (ISTAT ==0)
		    COUNT = COUNT + 1
			READ (20,*,IOSTAT=ISTAT) TEMP1,TEMP2
!			write (*,*) TEMP1,TEMP2
	     ENDDO
		 COUNT=COUNT-1
!*		 CLOSE(20)
         WAVE_INFO%FORM_LEN = COUNT
		 ALLOCATE(WAVE_INFO%T(WAVE_INFO%FORM_LEN))
         ALLOCATE(WAVE_INFO%FSE(WAVE_INFO%FORM_LEN))
		 WAVE_INFO%T = 0.0
		 WAVE_INFO%FSE = 0.0
		 REWIND(20)
!*		 OPEN(UNIT=20,FILE=WAVE_INFO%FORM_NAME,STATUS='OLD',IOSTAT=ISTAT)
	     DO I=1,WAVE_INFO%FORM_LEN
	        READ(20,*) WAVE_INFO%T(I),WAVE_INFO%FSE(I)
	     ENDDO
		 CLOSE(20)
	  ENDIF
	  IF (WAVE_INFO%INCIDENT.EQ.5) THEN   ! FOR OBLIQUE WAVE
         WRITE (*,*) '    YOU ARE USING OBLIQUE INCIDENT WAVE. INCIDENT ANGLE IS MEASURED'
		 WRITE (*,*) '    CLOCKWISE FROM THE NORTH (UPWARD), RANGING 0.0 TO 360.'
		 WRITE (*,*) '    PLEASE INPUT INCDIENT ANGLE (IN DEGREES):'
		 READ *, WAVE_INFO%ANG
	  ENDIF
	  IF (WAVE_INFO%MK_TYPE.EQ.3) THEN   ! FOR FOCUSING INCIDENT WAVE
         WRITE (*,*) '    YOU ARE USING FOCUSING INCIDENT WAVE. THE FOCUS IS WHERE'
		 WRITE (*,*) '    THE INCIDENT WAVE FROM A BOUNDARY CONVERGES.'
		 WRITE (*,*) '    PLEASE INPUT X COORD. OF THE FOCUS (IN METERS):'
		 READ *, WAVE_INFO%POINT(1)
		 WRITE (*,*) '    PLEASE INPUT Y COORD. OF THE FOCUS (IN METERS):'
		 READ *, WAVE_INFO%POINT(2)
	  ENDIF
       

	  RETURN
	  END
!----------------------------------------------------------------130911
      SUBROUTINE SAMEPASS (LO,LA)
!.....�l������1:1���ɭ�,��������,���A�p��y�q�M����
!----------------------------------------------------------------------
      USE LAYER_PARAMS
      TYPE (LAYER)		:: LO, LA
      IS = LA%CORNERS(1)-1 ! 130916 �ץ� IS,IE,JS,JE�n-1�~�Mdepth�諸��
      IE = LA%CORNERS(2)-1
      JS = LA%CORNERS(3)-1
      JE = LA%CORNERS(4)-1
!$omp parallel
!$omp do private(I,J)
      DO I=IS,IE
         DO J=JS,JE					    
            !�ɮ׿�XZ(I,J,1),M(I,J,1),N(I,J,1)
            LA%Z(I-IS+1,J-JS+1,1)=LO%Z(I,J,2)
!			LA%Z(I-IS+1,J-JS+1,2)=LA%Z(I-IS+1,J-JS+1,1)
			LA%M(I-IS+1,J-JS+1,1)=LO%M(I,J,2)
!			LA%M(I-IS+1,J-JS+1,2)=LA%M(I-IS+1,J-JS+1,1)
			LA%N(I-IS+1,J-JS+1,1)=LO%N(I,J,2)
!			LA%N(I-IS+1,J-JS+1,2)=LA%N(I-IS+1,J-JS+1,1)
         ENDDO
      ENDDO
!$omp end parallel
!!!   �p�G���}��F�Ҧ�  130904
	  IF (LO%FRIC_SWITCH .EQ.3 ) THEN
!$omp parallel
!$omp do private(I,J)      	  
         DO I=IS,IE
            DO J=JS,JE
	           LA%H(I,J)=LO%H(I,J)
		    ENDDO
         ENDDO
!$omp end parallel
	  ENDIF

	  RETURN
	  END