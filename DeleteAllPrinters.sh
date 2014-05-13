#!/bin/bash
####################################################################################################
#
# More information: 
#
# GitRepo: https://github.com/macmule/DeleteAllPrinters
#
# License: http://macmule.com/license/
#
####################################################################################################

# Get a list of all installed printers
lpstat -p | awk '{print $2}' | while read printer
do
	# Echo the name of the printer we're about to delete
	echo "Deleting Printer:" $printer
	# Delete the printer
	lpadmin -x $printer
done
