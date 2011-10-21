#
# Ole Troan, ot@cisco.com
# September 2010

XML2RFC=xml2rfc.tcl

all:	drafts

draft-mdt-softwire-mapping-address-and-port: draft-mdt-softwire-mapping-address-and-port.xml
	$(XML2RFC) $< $@-00.txt
draft-mdt-softwire-map-dhcp-option: draft-mdt-softwire-map-dhcp-option.xml
	$(XML2RFC) $< $@-00.txt

drafts: \
	draft-mdt-softwire-mapping-address-and-port \
#	draft-mdt-softwire-map-dhcp-option

.PHONY: clean draft commit
clean:
	/bin/rm -f *.txt
