#################################################
#                                               #
# Control file for COMCOT program (v1.7)        #
#                                               #
#################################################
#--+-----1----+----2----+----3----+----4----+----5----+----6----+----7----+----8
#===============================================:===============================
# General Parameters for Simulation             : Value Field                  |
#===============================================:===============================
#Job Description: NZ30sec bathymetry, Spherical Coordinates for code testing
 Total run time (Wall clock, seconds)           : 345600.0
 Output Zmax & TS (0-Max Z;1-Timeseries;2-Both) :    -1
 Start Type(0-ColdStart; HotStart 1-lay01 2-all):     0
 Resuming Time If hot start (Seconds)           :9999999.0
 Specify Min WaterDepth offshore  (meter)       :     5.0
 Ini. Cond.(0:FLT,1:File,2:WM,3:LS,4:0+3,5:1+2,6:storm):6
 Specify BC  (0-Open;1-Sponge;2-Wall;3-FACTS)   :     0
 Specify Input Z filename (for BC=3, FACTS)     :ha.xyt
 Specify Input U filename (for BC=3, FACTS)     :ua.xyt
 Specify Input V filename (for BC=3, FACTS)     :va.xyt
 Backup Time interval                           :999999.0
 USE FACTS TO INTERPLOT TOP    B.C. 1:USE       :     0
 USE FACTS TO INTERPLOT BOTTOM B.C. 1:USE       :     0
 USE FACTS TO INTERPLOT LEFT   B.C. 1:USE       :     0
 USE FACTS TO INTERPLOT RIGHT  B.C. 1:USE       :     0
 PS:Specify BC=4 FACTS only ha.xyt file can work, but still need ua.xyt and va.xyt  BC=3 流量驅動,BC=4水位驅動 ha,ua,va三個xyt檔都要 只是流量驅動會覆蓋ha.xyt值,水位驅動計算的流量覆蓋ua.xyt和va.xyt值
#===============================================:===============================
# Parameters for Fault Model (Segment 01)       :Values                        |
#===============================================:===============================
 No. of FLT Planes (With fault_multi.ctl if >1) :  -1
 Fault Rupture Time (seconds)                   :   0.0
 Faulting Option (0: Model; 1- Data;)           :   9
 Focal Depth                             (meter):  0.000
 Length of source area                   (meter):  33.992e3
 Width of source area                    (meter):  63.971e3
 Dislocation of fault plate              (meter):  9.8761
 Strike direction (theta)               (degree):  340.7619
 Dip  angle       (delta)               (degree):  20.0
 Slip angle       (lambda)              (degree):  90.0
 Origin of Comp. Domain (Layer 01) (Lat, degree):    5.0
 Origin of Comp. Domain (Layer 01) (Lon, degree):  105.0
 Epicenter Location: Latitude           (degree):   21.14951032
 Epicenter Location: Longitude          (degree):  119.9358658
 File Name of Deformation Data                  :ini_surf.xyz
 Data Format Option (0-COMCOT; 1-MOST; 2-XYZ)   :     2

#===============================================:===============================
#  Parameters for Wave Maker                    :Values                        |
#===============================================:===============================
 Wave type  ( 1:Solit, 2:given, 3:focusing )    :     1
 FileName of Customized Input (for Type=2)      :fse.dat
 Incident direction( 1:top,2:bt,3:lf,4:rt,5:ob ):     2
 Characteristic Wave Amplitude        (meter)   :     3.000
 Typical Water depth                  (meter)   :   372.000
 TIME TO STOP WAVE MAKER AND LET BC OPEN (SEC)  :9999999.000
 
#===============================================:===============================
#  Parameters for Submarine LS/Transient Motion :ValUes                        |
#===============================================:===============================
 X Coord. of Left/West Edge of Landlide Area    :  177.00
 X Coord. of Right/East Edge of Landlide Area   :  179.00
 Y Coord. of Bottom/South Edge of Landlide Area :  -41.00
 Y Coord. of Top/North Edge of Landlide Area    :  -39.00
 File Name of landslide Data                    : landslide_test.dat
 Data Format Option (0-Old; 1-XYT; 2-Function)  :     2
 
#===============================================:===============================
# Configurations for all grids                  :Values                        |
#===============================================:===============================
# Parameters for 1st-level grid -- layer 01     :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     0
 Coordinate System    (0:spherical, 1:cartesian):     0
 Governing Equations  (0:linear,    1:nonlinear):     0
 Grid Size  (dx, sph:minute, cart:meter)        :     6.0
 Time step                            ( second ):    12.0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     1
 Manning's Roughness Coef. (For fric.option=0)  :     0.02
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 X_start                                        :   115.0
 X_end                                          :   140.0
 Y_start                                        :    10.0
 Y_end                                          :    35.0
 File Name of Bathymetry Data                   :mod_layer01.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3
 Grid Identification Number                     :    01
 Grid Level                                     :     1
 Parent Grid's ID Number                        :    -1
 Time interval to Save Data    ( unit: sec )    :    180.0
 
#===============================================:=============================== 3600.0
#  Parameters for Sub-level grid -- layer 02    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     1
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction (0:Yes,1:No,2:var. n 3:0+sed)  :     3
 Manning's Roughness Coef. (For fric.option=0)  :     0.02
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     5
 X_start                                        :   4907.5
 X_end                                          :   4942.5
 Y_Start                                        :   9757.5
 Y_end                                          :   9802.5
 FileName of Water depth data                   :layer01.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     2
 Grid Identification Number                     :    02
 Grid Level                                     :     2
 Parent Grid's ID Number                        :     1
 Time interval to Save Data    ( unit: sec )    :     1.0 
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 03    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     0
 Governing Eqn.       (0:linear,    1:nonlinear):     0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     1
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     8
 X_start                                        :  119.800000
 X_end                                          :  120.300000
 Y_start                                        :   23.60000
 Y_end                                          :   24.000000
 FileName of Water depth data                   :layer03.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3 
 Grid Identification Number                     :    03
 Grid Level                                     :     3
 Parent Grid's ID Number                        :    02 
 Time interval to Save Data    ( unit: sec )    :    60.0  
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 04    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     0
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     1
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     8
 X_start                                        :    120.099258
 X_end                                          :    120.248730
 Y_start                                        :    23.68209
 Y_end                                          :    23.83
 FileName of Water depth data                   :layer04.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3
 Grid Identification Number                     :    04
 Grid Level                                     :     4
 Parent Grid's ID number                        :    03 
 Time interval to Save Data    ( unit: sec )    :    60.0 
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 05    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     0
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction (0:Yes,1:No,2:var. n 3:0+sed)  :     0
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     4
 X_start                                        :   120.3092711496687
 X_end                                          :   120.723621321133
 Y_start                                        :    22.1896412622199
 Y_end                                          :    22.53257020096585
 FileName of Water depth data                   :  4_2.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3 
 Grid Identification Number                     :    05
 Grid Level                                     :     4
 Parent Grid's ID Number                        :    03  
 Time interval to Save Data    ( unit: sec )    :    60.0 
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 06    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     0
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction (0:Yes,1:No,2:var. n 3:0+sed)  :     0
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     4
 X_start                                        :   120.0036509071348
 X_end                                          :   120.5120381818606
 Y_start                                        :    22.42373978748143
 Y_end                                          :    23.3
 FileName of Water depth data                   :layer06.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3 
 Grid Identification Number                     :    06
 Grid Level                                     :     4
 Parent Grid's ID Number                        :    03 
 Time interval to Save Data    ( unit: sec )    :    60.0 
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 07    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     0
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction (0:Yes,1:No,2:var. n 3:0+sed)  :     0
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     4
 X_start                                        :   120.0036509071348
 X_end                                          :   120.5120381818606
 Y_start                                        :    23.2
 Y_end                                          :    24.24865827343963
 FileName of Water depth data                   :  4_4.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3 
 Grid Identification Number                     :    07
 Grid Level                                     :     4
 Parent Grid's ID Number                        :    03   
 Time interval to Save Data    ( unit: sec )    :    60.0 
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 08    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     0
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction (0:Yes,1:No,2:var. n 3:0+sed)  :     0
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     4
 X_start                                        :   120.4562042092812
 X_end                                          :   120.9175729323763
 Y_start                                        :    24.15490301533408
 Y_end                                          :    24.80244805853942
 FileName of Water depth data                   :layer08.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3 
 Grid Identification Number                     :    08
 Grid Level                                     :     4
 Parent Grid's ID Number                        :    03 
 Time interval to Save Data    ( unit: sec )    :    60.0 
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 09    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     0
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction (0:Yes,1:No,2:var. n 3:0+sed)  :     0
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     4
 X_start                                        :   120.808842317314
 X_end                                          :   121.3231069967601
 Y_start                                        :    24.8
 Y_end                                          :    25.19808824930069
 FileName of Water depth data                   :  4_6.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3 
 Grid Identification Number                     :    09
 Grid Level                                     :     4
 Parent Grid's ID Number                        :    03  
 Time interval to Save Data    ( unit: sec )    :    60.0  
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 10    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     0
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction (0:Yes,1:No,2:var. n 3:0+sed)  :     0
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     4
 X_start                                        :   121.2320085958588
 X_end                                          :   122.0460161131184
 Y_start                                        :    24.96080357036498
 Y_end                                          :    25.3508512831777
 FileName of Water depth data                   :layer10.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3 
 Grid Identification Number                     :    10
 Grid Level                                     :     4
 Parent Grid's ID Number                        :    03 
 Time interval to Save Data    ( unit: sec )    :    60.0  
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 11    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     0
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction (0:Yes,1:No,2:var. n 3:0+sed)  :     0
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     4
 X_start                                        :   121.7227643425554
 X_end                                          :   122.05
 Y_start                                        :    24.35
 Y_end                                          :    25.0404101584892
 FileName of Water depth data                   :  4_8.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3 
 Grid Identification Number                     :    11
 Grid Level                                     :     4
 Parent Grid's ID Number                        :    03 
 Time interval to Save Data    ( unit: sec )    :    60.0  
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 12    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     0
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction (0:Yes,1:No,2:var. n 3:0+sed)  :     0
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     4
 X_start                                        :   121.3906957787801
 X_end                                          :   121.8079853387364
 Y_start                                        :    23.41747516260113
 Y_end                                          :    24.38422152963531
 FileName of Water depth data                   :layer12.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3 
 Grid Identification Number                     :    12
 Grid Level                                     :     4
 Parent Grid's ID Number                        :    03  
 Time interval to Save Data    ( unit: sec )    :    60.0  
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 13    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     0
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction (0:Yes,1:No,2:var. n 3:0+sed)  :     0
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     4
 X_start                                        :   121.1203399645682
 X_end                                          :   121.4906102867619
 Y_start                                        :    22.753
 Y_end                                          :    23.51418785598371
 FileName of Water depth data                   :  4_10.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3 
 Grid Identification Number                     :    13
 Grid Level                                     :     4
 Parent Grid's ID Number                        :    03
 Time interval to Save Data    ( unit: sec )    :    60.0  
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 14    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     0
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction (0:Yes,1:No,2:var. n 3:0+sed)  :     0
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     4
 X_start                                        :   120.808842317314
 X_end                                          :   121.2084996631093
 Y_start                                        :    22.14603554034114
 Y_end                                          :    22.78475484366331
 FileName of Water depth data                   :layer14.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3 
 Grid Identification Number                     :    14
 Grid Level                                     :     4
 Parent Grid's ID Number                        :    03  
 Time interval to Save Data    ( unit: sec )    :    60.0
