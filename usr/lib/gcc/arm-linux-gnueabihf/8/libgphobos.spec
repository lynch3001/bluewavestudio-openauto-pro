#
# This spec file is read by gdc when linking.
# It is used to specify the libraries we need to link in, in the right
# order.
#

%rename lib liborig_gdc_renamed
*lib: -lm -lpthread  -ldl %(liborig_gdc_renamed)
