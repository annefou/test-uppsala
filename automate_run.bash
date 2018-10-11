# Adjust your path on your machine
#output directory where we will save results
RESULT_DIR=/home/anacos/Documents/data-shell/results   #$PWD/results
#input directory for molecules data
INPUT_DIR=/home/anacos/Documents/data-shell/molecules
#Do not change here except you know what you are doing!

rm -rf $RESULT_DIR
mkdir $RESULT_DIR
touch $RESULT_DIR/length.txt
for filename in $INPUT_DIR/*.pdb

    do

   wc -l $filename | sort -n | head -n 1 >> $RESULT_DIR/lengths.txt

done

cat $RESULT_DIR/lengths.txt
