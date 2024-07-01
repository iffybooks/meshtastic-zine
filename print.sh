PDF_PATH="README-book.pdf"
exiftool $PDF_PATH | grep "Page Count"
#Cover
lp -d Brother_HL_L6200DW_series -o print-quality=4 -o orientation-requested=4 -o InputSlot=tray-2 -o page-ranges=1-2 -o sides=two-sided-long-edge $PDF_PATH
#Body ## Check
lp -o page-ranges=3-26 -d Brother_HL_L6200DW_series -o print-quality=4 -o orientation-requested=4 -o InputSlot=tray-1 -o sides=two-sided-long-edge $PDF_PATH
sleep 0.1

