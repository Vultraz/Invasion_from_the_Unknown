# Run validation tests

ADDON_NAME           := Invasion_from_the_Unknown

CAMPAIGNSYM          := CAMPAIGN_INVASION_FROM_THE_UNKNOWN
EXTRASYMS            := ENABLE_DWARVISH_RUNESMITH,ENABLE_DWARVISH_ARCANISTER

DIST_VERSION_FILE    := dist/VERSION
DIST_PASSPHRASE_FILE := ~/.wesnoth-pbl-pass

DIFFICULTIES         := EASY NORMAL HARD
PACKS                := \
	CAMPAIGN_INVASION_FROM_THE_UNKNOWN_EPISODE_I \
	CAMPAIGN_INVASION_FROM_THE_UNKNOWN_EPISODE_II

include ../naia/tools/Makefile.wmltools

pot: local-pot

normalize-textdomains:
	find . \( -name '*.cfg' -o -name '*.lua' \) -type f -print0 | xargs -0 \
		sed -ri 's/wesnoth-(After_the_Storm|Era_of_Chaos)/wesnoth-Invasion_from_the_Unknown/'

clean: clean-wmltools
