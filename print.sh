PDF_PATH="README-book.pdf"
exiftool $PDF_PATH | grep "Page Count"
#Cover
lp -d Brother_MFC_L2700DW_series -o print-quality=4 -o orientation-requested=4 -o InputSlot=tray-2 -o sides=two-sided-long-edge $PDF_PATH
