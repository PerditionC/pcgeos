name pvault.app
#ifdef NSAFE_BUILD
#longname "Pocket Vault"
#endif
#ifdef DESKTOP_BUILD
longname "The Vault"
#endif
type    appl, process, single
class   PVaultProcessClass
appobj  PVaultApp
tokenchars "PoVa"
tokenid 16431
stack 4096
heapspace 10k
library geos
library ui
library ansic
resource AppResource ui-object
resource Interface ui-object
resource PasswordWithHintResource ui-object
resource ChangePasswordResource ui-object
resource PVStrings read-only lmem

#ifdef COMPILE_OPTION_EXPIRE_ON
#resource EXPIREDIALOGRESOURCE ui-object
#export ExpireDialogClass
#endif

export PVaultEditItemDialogClass

usernotes "Copyright 2001 Breadbox Computer Company LLC.  All Rights Reserved."

#ifdef NSAFE_BUILD
#export NSafeGenTextClass
#library foam
#platform n9000c
#endif

#ifdef DESKTOP_BUILD
platform geos201
#endif

