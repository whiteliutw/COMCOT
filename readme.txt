# COMCOT code: comcot1715_sp9.f90
# setup file:comcot1715_sp9.ctl
# typhoon parameter file:typhoon_parameter.txt
#-------------------------------------------------
typhoon_parameter.txt includes five columns:
1:time(sec) 
2.lonitude of typhoon center
3.latitude of typhoon center
4.pressure of typhoon center(hPa)
5.maximum wind speed(m/s)

#-------------------------------------------------
comcot1715_sp9.f90
1.based on COMCOT version 1.7.
2.add a CWB parameterized model.
3.remove coriolis effect.
