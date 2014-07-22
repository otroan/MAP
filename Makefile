#
# Ole Troan, ot@cisco.com
# September 2010

XML2RFC=xml2rfc

all:	drafts

draft-mdt-softwire-mapping-address-and-port: draft-mdt-softwire-mapping-address-and-port.xml
	$(XML2RFC) $< $@-04.txt
draft-ietf-softwire-map: draft-ietf-softwire-map.xml
	$(XML2RFC) $< -f $@-11.txt
draft-ietf-softwire-map-dhcp: draft-ietf-softwire-map-dhcp.xml
	$(XML2RFC) $< -f $@-08.txt
draft-mdt-softwire-map-dhcp-option: draft-mdt-softwire-map-dhcp-option.xml
	$(XML2RFC) $< $@-02.txt
draft-mdt-softwire-map-deployment: draft-mdt-softwire-map-deployment.xml
	$(XML2RFC) $< $@-00.txt

drafts: \
	draft-mdt-softwire-mapping-address-and-port \
	draft-mdt-softwire-map-dhcp-option \
	draft-mdt-softwire-map-deployment

design: draft-mdt-softwire-mapping-address-and-port
merged: draft-ietf-softwire-map
dhcp: draft-ietf-softwire-map-dhcp
deployment: draft-mdt-softwire-map-deployment

.PHONY: clean draft commit design dhcp
clean:
	/bin/rm -f *.txt
