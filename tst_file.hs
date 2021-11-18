let cp = 1
    hur = 0.5
in do
-- change ligner a little bit for some fun
  d1 $ linger 0.5 $ fast 1
      $ shiftBy (0.00) $ jux ((hurry hur).(#cut 2)) $ slice 18 "9(3,8,{0 0 1 1 2 2 3 3}%1) [7 5 1*2]*1" $ "tyler:1" # cut 1
      # speed 1 # frange 200 1000 # pan 0
      # gain 1.4 # cut 1
  d2 $ slow cp $ off 0 (# speed 0.5) $ struct "t(3,8)" $ "[dr_few,bd:2]" # speed (1/2) # gain 0.9 # cut 1 # shape 0.5
  d5 $ slow cp $ chop 8 $ "~ ~ east:2 ~" # speed 0.5 # pan 0.2
  --
  -- THisone's a keeper
  --
  d3 $ jux (|+ up 5) $ rarely (echo 0.125) $ fast 8 $ struct "[t ~!2 t ~ t ~!2]"$ "em2:0" # hpf 2000 # pan 0 # sus 0.2 # hpf 2000 #gain 0.7

  d3 silence
  -- d5 $

let cp = 1
    hur = 1
in do
  -- once $ "rezzett" # gain 2 # speed 1
  d1 $ linger (1) $ fast 1
      $ shiftBy (0.00) $ jux ((hurry hur).(#cut 2)) $ slice 17 "<2 9>(5,8,{0 0 1 1 2 2 3 3}%1) [7 5 1*2]*1" $ "tyler:1" # cut 1
      # speed 0.9 # frange 100 1000 # pan 0  # crush 8
      # gain 1.4 # cut 1
  d2 $ slow cp $ off 0 (# speed 0.5) $ struct "t(3,8)" $ "[dr_few]" # speed (1/2) # gain 0.9 # cut 1 # shape 0.7
  d5 $ slow cp $ chop 8 $ "~ ~ east:2 ~" # speed 0.5 # pan 0
  d3 $ jux (|+ up 5) $ rarely (echo 0.125) $ fast 4 $ struct "[t ~!4 t ~ t ~!2]"$ "em2:1" # hpf 2000 # pan 0 # sus 0.2 # hpf 2000 #gain 0.7
  --
  -- THisone's a keeper
  --
  d3 silence
  -- d5 $


d12 $ "click*4"

do
  hush
  -- d12 $ "click*4"
  d1 $ slice 8 "[2 2]*8" $ "tyler" #speed 0.75 # cut "-1" |*| gain (fast 4 $ range 0.4 1 saw)



let cp = 2
    hur = 1
in do
  d1 $ linger 1 $ slow 2
      $ shiftBy (0.00) $ jux ((hurry hur).(#cut 2)) $ slice 13 "[7 5 2 1]" $ "tyler:1" # cut 1
      # speed (2) # frange 200 1000 # pan 0  # crush 12
      # gain 1.4 # cut 1 # cps 1
  d2 $ slow 1 $ slow cp $ off 0 (# speed 0.5) $ struct "t(2,8)" $ "[dr_few,bd:2]" # speed (1/8) # gain 0.9 # cut 1 # shape 0.5
  d5 $ slow cp $ chop 8 $ "[~ <~ ~ ~ ~ ~ ~ east:2*2>] east:2*4" # speed 1 # pan 0
  d3 $ jux (|+ up 5) $ rarely (echo 0.125) $ fast 8 $ struct "[t ~!4 t ~ t ~!2]"$ "em2:1" # hpf 2000 # pan 0 # sus 0.2 # hpf 2000 #gain 0.7
  --
  -- THisone's a keeper
  --
  d3 silence
  -- d5 $




  do
    d2 $ "bd*2" # lpf 100
    d3 $ n (fast 2 $ arp "up" "[0,3,9,12]") # "rash" # lpf 500 # gain (fast 4 $ range 0.5 1.1 saw) |+| n 20 # cut 0
    d4 $ stut 2 (2/3) (1/4) $ jux (ghost. fast 4) $ n (run 11) # "industrial" # gain 0.7 # pan 0.8 # lpf (slow 8 $ range 100 5000 $ sine) |*| gain "1 0"
    d5 $ fast 1 $ "~ sd:1" # speed 0.5 # cut 1 # pan 0.2 # shape 0.5 # hpf 100



setcps 0.5
