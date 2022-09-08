#!/bin/bash
echo "Building 1825 Tiles"
cd ../Tiles
for i in *.scad ; do
  echo "Building $i"
  openscad "$i" -o "${i%.scad}.stl"
done
mkdir -p Yellow Green Gray Blue StripedGreenBrown StripedBrownBlue StripedGrayBrown
#
# D1
#
cp 007.stl Yellow/007_2.stl
cp 058.stl Yellow/058_2.stl
cp 115.stl Yellow/115_2.stl
cp 010.stl Green/010_3.stl
cp 011.stl Green/011_3.stl
cp 017.stl Green/017_1.stl
cp 018.stl Green/018_1.stl
cp 020.stl Green/020_1.stl
cp 021.stl Green/021_1.stl
cp 022.stl Green/022_1.stl
cp 030.stl Green/030_1.stl
cp 031.stl Green/031_1.stl
cp 082.stl Green/082_1.stl
cp 083.stl Green/083_1.stl
cp 035.stl Brown/035_1.stl
cp 036.stl Brown/036_1.stl
cp 037.stl Brown/037_1.stl
cp 038.stl Brown/038_1.stl
cp 039.stl Brown/039_1.stl
cp 040.stl Brown/040_1.stl
cp 043.stl Brown/043_1.stl
cp 044.stl Brown/044_1.stl
cp 047.stl Brown/047_1.stl
cp 174.stl Brown/174_2.stl
cp 119.stl StripedGreenBrown/119_2.stl
cp 200.stl StripedBrownBlue/200_2.stl
zip 1825_D1.zip */*.stl
rm */*.stl
#
# K1
#
cp 016.stl Green/016_1_v1.stl
cp 017.stl Green/017_1.stl
cp 018.stl Green/018_1.stl
cp 019.stl Green/019_1_v1.stl
cp 020.stl Green/020_1_v1.stl
cp 021.stl Green/021_1.stl
cp 022.stl Green/022_1.stl
cp 028.stl Green/028_1_v2.stl
cp 029.stl Green/029_1_v2.stl
cp 030.stl Green/030_1.stl
cp 031.stl Green/031_1.stl
cp 039.stl Brown/039_1.stl
cp 040.stl Brown/040_1.stl
cp 041.stl Brown/041_1.stl
cp 042.stl Brown/042_1.stl
cp 043.stl Brown/043_1.stl
cp 044.stl Brown/044_1.stl
cp 047.stl Brown/047_1.stl
zip 1825_K1.zip */*.stl
rm */*.stl
#
# K3
#
cp 048.stl Gray/048_1.stl
cp 049.stl Gray/049_1.stl
cp 050.stl Gray/050_2.stl
cp 051.stl Gray/051_3.stl
cp 060.stl Gray/060_2.stl
cp 166.stl StripedGrayBrown/166_4.stl
cp 167.stl Gray/167_4.stl
cp 168.stl Gray/168_2.stl
zip 1825_K3.zip Gray/*.stl
rm Gray/*.stl
#
# K5
#
cp 015.stl Green/015_1.stl
cp 069.stl Yellow/069_1.stl
cp 119.stl StripedGreenBrown/119_1.stl
zip 1825_K5.zip */*.stl
rm */*.stl
#
# K6
#
cp 058.stl Yellow/058_2.stl
cp 198.stl Yellow/198_1.stl
cp 199.stl Yellow/199_1.stl
cp 011.stl Green/011_2.stl
cp 082.stl Green/082_1.stl
cp 083.stl Green/083_1.stl
cp 119.stl StripedGreenBrown/119_2.stl
cp 200.stl StripedBrownBlue/200_2.stl
zip 1825_K6.zip */*.stl
rm */*.stl
#
# R1
#
cp 002.stl Yellow/002_1.stl
cp 003.stl Yellow/003_1.stl
cp 004.stl Yellow/004_1.stl
cp 006.stl Yellow/006_2.stl
cp 007.stl Yellow/007_2.stl
cp 008.stl Yellow/008_2.stl
cp 069.stl Yellow/069_1.stl
cp 010.stl Green/010_1.stl
cp 011.stl Green/011_1.stl
cp 013.stl Green/013_1.stl
cp 014.stl Green/014_1.stl
cp 023.stl Green/023_1.stl
cp 024.stl Green/024_1.stl
cp 035.stl Brown/035_1.stl
cp 037.stl Brown/037_1.stl
cp 038.stl Brown/038_1.stl
cp 066.stl Brown/066_1.stl
zip 1825_R1.zip */*.stl
rm */*.stl
#
# R2
#
cp 003.stl Yellow/003_1.stl
cp 058.stl Yellow/058_2.stl
cp 115.stl Yellow/115_1.stl
cp 010.stl Green/010_1.stl
cp 035.stl Brown/035_1.stl
cp 037.stl Brown/037_1.stl
cp W09-R2.stl Blue/W09.stl
zip 1825_R2.zip */*.stl
rm */*.stl
#
# R3
#
cp 008.stl Yellow/008_1.stl
cp 009.stl Yellow/009_2.stl
cp 011.stl Green/011_1.stl
cp 014.stl Green/014_1.stl
zip 1825_R3.zip */*.stl
rm */*.stl
#
# U1
#
cp 001.stl Yellow/001_1.stl
cp 002.stl Yellow/002_1.stl
cp 003.stl Yellow/003_1.stl
cp 004.stl Yellow/004_3.stl
cp 005.stl Yellow/005_2.stl
cp 006.stl Yellow/006_2.stl
cp 007.stl Yellow/007_2.stl
cp 008.stl Yellow/008_8.stl
cp 009.stl Yellow/009_7.stl
cp 055.stl Yellow/055_1.stl
cp 056.stl Yellow/056_1.stl
cp 012.stl Green/012_2.stl
cp 013.stl Green/013_1.stl
cp 014.stl Green/014_2.stl
cp 015.stl Green/015_2.stl
cp 016.stl Green/016_1.stl
cp 019.stl Green/019_1.stl
cp 020.stl Green/020_1.stl
cp 023.stl Green/023_3.stl
cp 024.stl Green/024_3.stl
cp 025.stl Green/025_1.stl
cp 026.stl Green/026_1.stl
cp 027.stl Green/027_1.stl
cp 028.stl Green/028_1.stl
cp 029.stl Green/029_1.stl
cp 052.stl Green/052_2.stl
cp 087.stl Green/087_1.stl
cp 088.stl Green/088_1.stl 
cp 032.stl Brown/032_1.stl
cp 034.stl Brown/034_1.stl
cp 038.stl Brown/038_2.stl
cp 041.stl Brown/041_1.stl
cp 042.stl Brown/042_1.stl
cp 045.stl Brown/045_1.stl
cp 046.stl Brown/046_1.stl
cp 047.stl Brown/047_1.stl
cp 064.stl Brown/064_1.stl
cp 065.stl Brown/065_1.stl
cp 066.stl Brown/066_1.stl
cp 067.stl Brown/067_1.stl
cp 068.stl Brown/068_1.stl
zip 1825_U1.zip */*.stl
rm */*.stl
#
# U2
#
cp 001.stl Yellow/001_1.stl
cp 002.stl Yellow/002_1.stl
cp 003.stl Yellow/003_1.stl
cp 004.stl Yellow/004_1.stl
cp 005.stl Yellow/005_2.stl
cp 006.stl Yellow/006_2.stl
cp 007.stl Yellow/007_3.stl
cp 008.stl Yellow/008_4.stl
cp 009.stl Yellow/009_4.stl
cp 055.stl Yellow/055_1.stl
cp 056.stl Yellow/056_1.stl
cp 069.stl Yellow/069_1.stl
cp 114.stl Yellow/114_1.stl
cp 012.stl Green/012_3.stl
cp 014.stl Green/014_2.stl
cp 015.stl Green/015_2.stl
cp 016.stl Green/016_1.stl
cp 018.stl Green/018_1.stl
cp 019.stl Green/019_2.stl
cp 020.stl Green/020_1.stl
cp 023.stl Green/023_2.stl
cp 024.stl Green/024_2.stl
cp 025.stl Green/025_1.stl
cp 026.stl Green/026_1.stl
cp 027.stl Green/027_1.stl
cp 028.stl Green/028_1.stl
cp 029.stl Green/029_1.stl
cp 052.stl Green/052_2.stl
cp 033.stl Brown/033_1.stl
cp 034.stl Brown/034_1.stl
cp 038.stl Brown/038_3.stl
cp 039.stl Brown/039_1.stl
cp 040.stl Brown/040_1.stl
cp 041.stl Brown/041_1.stl
cp 042.stl Brown/042_1.stl
cp 043.stl Brown/043_1.stl
cp 044.stl Brown/044_1.stl
cp 047.stl Brown/047_1.stl
cp 064.stl Brown/064_1.stl
cp 065.stl Brown/065_1.stl
cp 066.stl Brown/066_1.stl
cp 067.stl Brown/067_1.stl
cp 068.stl Brown/068_1.stl
cp 049.stl Gray/049_1.stl
cp 050.stl Gray/050_1.stl
cp 051.stl Gray/051_2.stl
zip 1825_U2.zip */*.stl
rm */*.stl
#
# U3
#
cp 001.stl Yellow/001_1.stl
cp 002.stl Yellow/002_1.stl
cp 003.stl Yellow/003_1.stl
cp 004.stl Yellow/004_3.stl
cp 005.stl Yellow/005_2.stl
cp 006.stl Yellow/006_2.stl
cp 007.stl Yellow/007_3.stl
cp 008.stl Yellow/008_6.stl
cp 009.stl Yellow/009_5.stl
cp 055.stl Yellow/055_1.stl
cp 056.stl Yellow/056_1.stl
cp 115.stl Yellow/115_1.stl
cp 012.stl Green/012_2.stl
cp 013.stl Green/013_1.stl
cp 014.stl Green/014_3.stl
cp 015.stl Green/015_3.stl
cp 016.stl Green/016_1.stl
cp 019.stl Green/019_1.stl
cp 023.stl Green/023_3.stl
cp 024.stl Green/024_3.stl
cp 026.stl Green/026_1.stl
cp 027.stl Green/027_1.stl
cp 028.stl Green/028_1.stl
cp 029.stl Green/029_1.stl
cp 052.stl Green/052_2.stl
cp 081.stl Green/081_1.stl
cp 034.stl Brown/034_1.stl
cp 038.stl Brown/038_2.stl
cp 039.stl Brown/039_1.stl
cp 041.stl Brown/041_1.stl
cp 042.stl Brown/042_1.stl
cp 043.stl Brown/043_1.stl
cp 044.stl Brown/044_1.stl
cp 045.stl Brown/045_1.stl
cp 046.stl Brown/046_1.stl
cp 047.stl Brown/047_1.stl
cp 063.stl Brown/063_2.stl
cp 066.stl Brown/066_2.stl
cp 067.stl Brown/067_1.stl
cp 118.stl Brown/118_1.stl

zip 1825_U2.zip */*.stl
rm */*.stl
#
# Whole shebang!
#
# Map tiles
#

mv B08.stl B12.stl E01.stl F02.stl F10.stl K07.stl M09.stl P04.stl Blue/
mv P08.stl Q11.stl Q23.stl T16.stl U01.stl U25.stl V06.stl V14.stl Blue/
mv V22.stl W09-R2.stl W09-U1.stl W25.stl Y13.stl Y17.stl Y19.stl Blue/
mv G09.stl J14.stl N14.stl P16.stl R12.stl V08.stl X16.stl Z04.stl Yellow/
mv G05.stl O09.stl O11.stl S13.stl V10.stl V20.stl Green/

mv 001.stl Yellow/001_2.stl
mv 002.stl Yellow/002_4.stl
mv 003.stl Yellow/003_5.stl
mv 004.stl Yellow/004_8.stl
mv 005.stl Yellow/005_6.stl
mv 006.stl Yellow/006_7.stl
mv 007.stl Yellow/007_12.stl
mv 008.stl Yellow/008_21.stl
mv 009.stl Yellow/009_18.stl
mv 010.stl Green/010_5.stl
mv 011.stl Green/011_5.stl
mv 012.stl Green/012_7.stl
mv 013.stl Green/013_3.stl
mv 014.stl Green/014_9.stl
mv 015.stl Green/015_8.stl
mv 016.stl Green/016_4.stl
mv 017.stl Green/017_1.stl
mv 018.stl Green/018_2.stl
mv 019.stl Green/019_5.stl
mv 020.stl Green/020_3.stl
mv 021.stl Green/021_1.stl
mv 022.stl Green/022_1.stl
mv 023.stl Green/023_9.stl
mv 024.stl Green/024_9.stl
mv 025.stl Green/025_2.stl
mv 026.stl Green/026_3.stl
mv 027.stl Green/027_3.stl
mv 028.stl Green/028_4.stl
mv 029.stl Green/029_4.stl
mv 030.stl Green/030_1.stl
mv 031.stl Green/031_1.stl
mv 032.stl Brown/032_1.stl
mv 033.stl Brown/033_1.stl
mv 034.stl Brown/034_3.stl
mv 035.stl Brown/035_3.stl
mv 036.stl Brown/036_1.stl
mv 037.stl Brown/037_3.stl
mv 038.stl Brown/038_9.stl
mv 039.stl Brown/039_3.stl
mv 040.stl Brown/040_2.stl
mv 041.stl Brown/041_4.stl
mv 042.stl Brown/042_3.stl
mv 043.stl Brown/043_3.stl
mv 044.stl Brown/044_3.stl
mv 045.stl Brown/045_2.stl
mv 046.stl Brown/046_2.stl
mv 047.stl Brown/047_4.stl
mv 048.stl Gray/048_1.stl
mv 049.stl Gray/049_2.stl
mv 050.stl Gray/050_3.stl
mv 051.stl Gray/051_5.stl
mv 052.stl Green/052_6.stl
mv 055.stl Yellow/055_3.stl
mv 056.stl Yellow/056_3.stl
mv 058.stl Yellow/058_4.stl
mv 060.stl Gray/060_2.stl
mv 063.stl Brown/063_2.stl
mv 064.stl Brown/064_2.stl
mv 065.stl Brown/065_2.stl
mv 066.stl Brown/066_5.stl
mv 067.stl Brown/067_3.stl
mv 068.stl Brown/068_2.stl
mv 069.stl Yellow/069_3.stl
mv 081.stl Green/081_1.stl
mv 082.stl Green/082_1.stl
mv 083.stl Green/083_1.stl
mv 087.stl Green/087_1.stl
mv 088.stl Green/088_1.stl 
mv 114.stl Yellow/114_1.stl
mv 115.stl Yellow/115_4.stl
mv 118.stl Brown/118_1.stl
mv 119.stl StripedGreenBrown/119_3.stl
mv 166.stl StripedGrayBrown/166_4.stl
mv 167.stl Gray/167_4.stl
mv 168.stl Gray/168_2.stl
mv 174.stl Brown/174_2.stl
mv 198.stl Yellow/198_1.stl
mv 199.stl Yellow/199_1.stl
mv 200.stl StripedBrownBlue/200_2.stl
