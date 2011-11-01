#
# Ole Troan, ot@cisco.com
# September 2010

XML2RFC=xml2rfc.tcl

all:	drafts

draft-mdt-softwire-mapping-address-and-port: draft-mdt-softwire-mapping-address-and-port.xml
	$(XML2RFC) $< $@-02.txt
draft-mdt-softwire-map-dhcp-option: draft-mdt-softwire-map-dhcp-option.xml
	$(XML2RFC) $< $@-01.txt

drafts: \
	draft-mdt-softwire-mapping-address-and-port \
	draft-mdt-softwire-map-dhcp-option

design: draft-mdt-softwire-mapping-address-and-port

dhcp: draft-mdt-softwire-map-dhcp-option

.PHONY: clean draft commit design dhcp
clean:
	/bin/rm -f *.txt
