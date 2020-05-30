# First I'll make cherry-picks to Frameworks/base repo
BASE=~/aosp/frameworks/base
cd $BASE
git fetch https://github.com/Jhonse02/frameworks_base.git
git cherry-pick a63e06c70f697bec321777365c3442f150313cd2
git cherry-pick 3889829427c86e36aed5435a7309252a848046e1
git cherry-pick 3bd8ab8a54b408c3e0091a4e3842e0d89f729b2d
git cherry-pick c1cc5e3bd45a1194055aad805bcb91ffd9128e19
git cherry-pick bfca93b1b0003ea962191260033fe95a36bf0c6a
git cherry-pick ee8dd3be9a6692159eb03edc2cbd9350a8c754bb
git cherry-pick f35f21da68e5ea2ed83b31048d7dadfde7d54dd5
git cherry-pick 7a2a2719ffcf71a370bc601f9b34ffdcaa7eb9a8
git cherry-pick ce9eed9938aef5097a6873ed863cd1130be97500

# Then, I'll make cherry-picks to vendor/aosp repo
VENDOR=~/aosp/vendor/aosp
cd $VENDOR
git fetch https://github.com/Jhonse02/vendor_aosp.git
git cherry-pick eddb46980e120213e97cca80fb4b5ebe185478ce
git cherry-pick b89c7cdc415657de00ebc168706738ff9daf6a3f
git cherry-pick c385309d544134cd6d0f50761c1aca7228b267df

