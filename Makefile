#
# Ole Troan, ot@cisco.com
# September 2010

XML2RFC=xml2rfc.tcl

all:	drafts

draft-ietf-softwire-mapping-of-address-and-port: draft-ietf-softwire-mapping-address-and-port.xml
	$(XML2RFC) $< $@-00.txt
draft-ietf-softwire-map-dhcp-option: draft-ietf-softwire-map-dhcp-option.xml
	$(XML2RFC) $< $@-00.txt

drafts: \
	draft-ietf-softwire-mapping-of-address-and-port \
	draft-ietf-softwire-map-dhcp-option

.PHONY: clean draft commit
clean:
	/bin/rm -f *.txt
