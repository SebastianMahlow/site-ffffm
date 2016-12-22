## Frankfurter Development Version
### v2.0.2.1-dev-1222 (gesperrt)
- Gebaut 22.12.2016
- Freigegebenes Gluon v2016.2.2 + TL-WR940N v4 Unterstützung
- Region-Code abhängige Images werden jetzt als Europa Versionen gebaut
- Das Package 'ffffm-disable-80211b' wurde wegen neuem Gluon-Main-Package entfernt.
- Vorbereitung erweitertes IPv6 für Clients 
- Anzahl Backbone-Supernodes von 20 auf 10 reduziert
- Wegen dem DL-Server-Umzug, den Link auf den Updateserver angepasst 
- Für einige Router mit mehr als 4MB Flash gibt es jetzt:
  - Unterstützen von vielen USB-NICs (falls USB-Port vorhanden)
  - Unterstützung USB-Speicher (falls USB-Port vorhanden)
  - 'nano' als zusätzlichen Editor
  - tcpdump-mini
- Images für ath10k-Devices werden gebaut
- Autoupdate wird automatisch aktiviert

#### Known Issues
- Auf Up-Link-Knoten kein Autoupdate mehr möglich. Die DNS-Namensauflösung funktioniert dort nicht. 
- opkg-Pfad zum OpwnWrt Repository ist IPv4

### v2.0.0.1-dev-11120137
- Gebaut 12.11.2016
- Basis: Frankfurter v2.0-stable-34 in Kombination mit freigegebenem Gluon **v2016.2.1**
- Package "ffffm-disable-80211b" entfernt. Diese wird jetzt über die site.conf realisiert.
- Package "ffffm-banner" optimiert. "v4up" funktioniert wieder. Der Anzeigtest von "nodeinfo" ist jetzt etwas strukturierter.
- USB-Unterstützung bei einigen Routern mit mehr als 4MB Flash. Datei-Sticks und einige NICs werden unterstützt. Siehe https://github.com/freifunk-ffm/site-ffffm/blob/dev/specific_site.mk

#### Known Issues
- opkg-Pfad zum OpwnWrt Repository ist IPv4

### v1.10.3.5-dev-xxx
- Gebaut xx.yy.2016
- Dieses ist eine "Raus aus dem Dev-, rein in den Stable-Branch" Firmware
- Autoupdate wird aktiviert
- Autoupdate-Branch wird automatisch auf "stable" gesetzt

### v1.10.3.4-dev-166
- Gebaut 13.07.2016
- fast Identisch mit [Test v1.10.4-test-96](https://github.com/freifunk-ffm/site-ffffm/tree/test#v1104-test-96-noch-nicht-automatisch-ausgerollt), das Package ath9k-broken-wifi-workaround liegt jedoch in neuerer Version vor.

### v1.10.3.2-dev-154
- Gebaut 26.05.2016
- Basis: freigegebenes Gluon **v2015.1.2**
- Neues Package ffffm-airtime-v2015.1.x eingebaut

#### Known Issues
- Der Befehl 'help' (aus ffffm-banner) liefert nicht die erwünschte Ausgabe.
- Kein opkg-Pfad zu Build spezifischen Kernelmodulen vorhanden.


### v1.10.3.1-dev-150
- Gebaut 18.05.2016
- Basis: freigegebenes Gluon **v2015.1.2**
- Konfiguration und Packages von ffmstable-1.10 übernommen

Änderungen gegenüber der Firmware ffmstable-1.10 (Gluon v2015.1.2):

 - Neue Hardwareunterstützung
   - WR841N/ND v10/v11
   - WR1043ND v3
   - CPE210/510 v1.1 
 - site.conf: Anpassungen bezüglich IPv6
 - site.conf: Mesh-VPN per default aktiv
 - Package 'ffffm-ebtable-net-rules' hinzu
 - Package 'ffffm-keep-radio-channel' hinzu
 - Package 'ffffm-banner' hinzu
 - Konfigurationsmodus jetzt mehrsprachig. 

#### Known Issues
- Der Befehl 'help' (aus ffffm-banner) liefert nicht die erwünschte Ausgabe.
- Kein opkg-Pfad zu Build spezifischen Kernelmodulen vorhanden.

### v1.10.2.1-dev-142
- Gebaut 29.04.2016
- Freigegebenes Gluon v2016.1.4
- Anpassung WLAN-Treiber: https://gluon.readthedocs.io/en/v2016.1.4/releases/v2016.1.4.html

#### Known Issues
- Das WLAN hängt sich bei einigen wenigen Routern manchmal auf
- opkg-Pfad zum OpwnWrt Repository ist IPv4

### v1.10.1.2-dev-120
- Gebaut 02.04.2016
- Freigegebenes Gluon v2016.1.3

#### Known Issues
- Das WLAN hängt sich bei einigen wenigen Routern manchmal auf
- opkg-Pfad zum OpwnWrt Repository ist IPv4

### v1.10.1.1-dev-118
- Gebaut 22.03.2016
- Bugfix: Konfiguration der Auto-MTU-Erkennung 
- Neues Package 'ffffm-banner' hinzu

#### Known Issues
- opkg-Pfad zum OpwnWrt Repository ist noch IPv4


### ffmdev-3.117
- Gebaut 12.03.2016 
- Freigegebenes Gluon v2016.1.2
 
#### Known Issues
- opkg-Pfad zum OpwnWrt Repository ist noch IPv4
- Die Auto-MTU-Erkennung funktioniert wegen Fehlkonfiguration nicht.
- Der Aufruf fremder Router-Statusseiten bereitet manchmal mit OS X Rechnern Probleme

### ffmdev-3.114
- Gebaut 11.03.2016 
- Freigegebenes Gluon v2016.1.1
- 'Autoupdate-Branch' wieder auf 'dev' gesetzt 
- 'next_node.ipv6' ist jetzt fddd:5d16:b5dd:ffff::1
- 'prefix6' jetzt 'fddd:5d16:b5dd:0::/64'
- opkg-Pfad der Kernel-Module zeigt nun auf http://1.updates.services.ffffm/dev/sysupgrade/modules/...
- Auto-MTU Korrektur: Eine neu erkannte MTU wird jetzt wieder sofort übernommen

#### Known Issues
- opkg-Pfad zum OpwnWrt Repository ist noch IPv4

### ffmdev-3.106
- Package ffffm-autoupdater-use-site-conf-branch eingebunden (FFM-Eigenentwicklung)
- site.conf: 'Autoupdate-Branch' temporär auf 'test' gesetzt 
- Auto-MTU: Wegen x86-Problemen wird jetzt eine neu erkannte MTU erst nach einem Reboot übernommen

#### Known Issues
- opkg-Pfade sind noch IPv4

### ffmdev-3.101
- fastd Ports jetzt wieder 10001 und 10002 (fastd-Links mit grosser MTU jetzt vorhanden)
- Typo in Konfig-Modus-Texten (DE/EN)
- Role: Outdoor Node hinzu
- Build spezifische opkg-Module werden auf Frankfurter Server abgelegt
- opkg-Pfade hinzu

#### Known Issues
- Auto-MTU funktioniert nach einem Update nicht immer beim x86-Image
- opkg-Pfade sind noch IPv4

### ffmdev-3.89

- Gebaut 02/2016
- Freigegebenes Gluon v2016.1
- Neu: Per uci eingestellte WLAN-Kanäle sind jetzt Update-fest (kein Abhängen von Mesh-Wolken durch Auto-Upgrade) (FFM-Eigenentwicklung)
- Futro CF-Karten Unterstützung

### ffmdev-3.84
- Gebaut 01/2016
- Gluon Entwicklungsstand Master-Branch von 01/2016
- Neu: Auto-MTU (FFM-Eigenentwicklung)(z.Z. inkl. GUI)
- fastd-Connection-Limit wieder auf 2 angehoben
- Das Package ffffm-ebtables-net-rules wurde entfernt (Teilweise zu scharfe Regeln -> Diskussionsbedarf)
- fastd Ports auf 10000 und 10001 (mangels fastd-Links mit grosser MTU)

### ffmdev-3.83
- Gebaut 11/2015
- Gluon Entwicklungsstand Master-Branch von 11/2015
- fastd-Connection-Limit von 2 auf 1 reduziert
- Langsame Mesh-VPN Verschlüsselung 'salsa2012+gmac' entfernt
- Neu: 'Node-Role' hinzu (Gluon)
- neues 802.11s Mesh deaktiviert
- fastd Ports 10001 und 10002 (wegen MTU 1280/1426 Byte)
- Unterstützung von u.a. WR841N/ND v10 und CPE210/510 V1.1

### ffmdev-3.63
- Gebaut 10/2015
- Basis war der damalige Gluon Master-Branch von 10/2015
- Konfig-Modus in den Sprachen DE und EN
- Keine Anzeige des Router-Keys am Ende der Router-Konfiguration
- radvd für öffentliches IPv6-Netz deaktiviert und für ULA-Netz aktiviert
- Verschlüsselung von Mesh-VPN kann abgeschaltet werden (Gluon)
- Wifi-Konfigurationspaket (Gluon)
- Mesh-VPN ist standardmäßig aktiv

<br>
<br>

## Bekannte Probleme
Mit Gluon v2016.1 ist das Aktivieren des Konfigurationsmoduses etwas hakelig. Die optische Reboot-Rückmeldung über die LEDs kommt erst nach ca. 10 Sekunden.

<br>
<br>
<br>

## Git cheat-sheet 
### Aktuellen gluon-branch nach dev ziehen:
1. git fetch freifunk-gluon
2. git log freifunk-gluon/master
3. git checkout $whatevercommit
4. git branch -d dev
5. git checkout -b dev
6. git push --set-upstream origin dev

Bei Bedarf mit cherry-pick eigene commits wieder reinziehen

