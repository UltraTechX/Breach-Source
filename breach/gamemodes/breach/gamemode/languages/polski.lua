polski = {}

polski.roundtype = "Typ rundy: {type}"
polski.preparing = "Przygotuj się, runda zacznie się za {num} sekund"
polski.round = "Gra się rozpoczeła, powodzenia"

polski.lang_pldied = "{num} graczy zginęło"
polski.lang_descaped = "{num} personel(u) Klasy D uciekło"
polski.lang_sescaped = "{num} obiektów SCP uciekło"
polski.lang_rescaped = "{num} Naukowców uciekło"
polski.lang_dcaptured = "{num} personel(u) Klasy D zostało pojmanych przez Chaos Insurgency"
polski.lang_rescorted = "{num} Naukowców zostało eskortowanych przez MTF"
polski.lang_teleported = "{num} graczy zostało porwane do wymiaru łuzowego"
polski.lang_snapped = "{num} graczy zostało zabitych przez SCP - 173"
polski.lang_zombies = '{num} graczy zostało "wyleczonych" przez SCP - 049'
polski.lang_secret_found = "Sekret nie został odnaleziony"
polski.lang_secret_nfound = "Sekret został odnaleziony"

polski.class_unknown = "Niezidentyfikowany"

polski.starttexts = {
	ROLE_SCP173 = {
		"Jesteś SCP - 173",
		{"Twoim celem jest ucieczka z placówki",
		"Nie możesz sie ruszać jeśli ktoś się na ciebie patrzy",
		"Pamiętaj, ludzie mrugają",
		"PPM aktywuje specjalną moc: możesz oślepić wszystkich w około"}
	},
	ROLE_SCP106 = {
		"Jesteś SCP - 106",
		{"Twoim celem jest ucieczka z placówki",
		"Jeśli klikniesz na kogoś, przeteleportujesz go do wymiaru łuzowego"}
	},
	ROLE_SCP966 = {
		"Jesteś SCP-966",
		{"Twoim celem jest ucieczka z placówki",
		"Jesteś widzialny tylko przez noktowizor"}
	},
	ROLE_SCP457 = {
		"Jesteś SCP-457",
		{"Twoim celem jest ucieczka z placówki",
		"Zawsze się palisz",
		"Jeśli będziesz blisko kogoś, zaczniesz go podpalać"}
	},
	ROLE_SCP049 = {
		"Jesteś SCP - 049",
		{"Twoim celem jest ucieczka z placówki",
		"Jak dotkniesz kogoś, to stanie się SCP-049-2"}
	},
	ROLE_SCP0492 = {
		"Jesteś SCP-049-2",
		{"Twoim celem jest ucieczka z placówki",
		"Pomagaj SCP-049"}
	},
	ROLE_SCP0082 = {
		"Jesteś SCP-008-2",
		{"Twoim celem jest zarażenie wszystkich ochroniarzy",
		"Jeśli zaatakujesz kogoś to stanie się 008-2"}
	},
	ROLE_RES = {
		"Jesteś naukowcem",
		{"Twoim celem jest ucieczka z placówki",
		"Szukaj pomocy i spróbuj wydostać się z placówki",
		"Uważaj na klasę D, mogą próbować cię zabić"}
	},
	ROLE_MEDIC = {
		"Jesteś medykiem",
		{"Twoim celem jest ucieczka z placówki",
		"Szukaj pomocy i spróbuj wydostać się z placówki",
		"Uważaj na klasę D, mogą próbować cię zabić",
		"Jeśli ktoś będzie potrzebował leczenia to go ulecz"}
	},
	ROLE_CLASSD = {
		"Jesteś personelem Klasy D",
		{"Twoim celem jest ucieczka z placówki",
		"Pomagaj swoim kolegom, samemu masz nikłe szanse na przeżycie",
		"Szukaj kart dostępu i uważaj na MTF i obiekty SCP"}
	},
	ROLE_VETERAN = {
		"Jesteś weteranem Klasy D",
		{"Twoim celem jest ucieczka z placówki",
		"Pomagaj swoim kolegom, samemu masz nikłe szanse na przeżycie",
		"Szukaj kart dostępu i uważaj na MTF i obiekty SCP"}
	},
	ROLE_SECURITY = {
		"Jesteś Ochroniarzem",
		{"Twoim celem jest znalezienie wszystkich naukowców i eliminacja Klasy D",
		"Eskortuj ich do lądowiska",
		"Musisz zabić każdego kto ci przeszkodzi",
		"Słuchaj się swojego Dowódcy i wykonuj jego polecenia"}
	},
	ROLE_CSECURITY = {
		"Jesteś Dowódcą Ochroniarzy",
		{"Twoim celem jest znalezienie wszystkich naukowców i eliminacja Klasy D",
		"Eskortuj ich do lądowiska",
		"Wydawaj polecenia ochroniarzom ci przydzielonym"}
	},
	ROLE_MTFGUARD = {
		"Jesteś Ochroniarzem MTF",
		{"Twoim celem jest znalezienie wszystkich naukowców i eliminacja Klasy D",
		"Eskortuj ich do lądowiska",
		"Musisz zabić każdego kto ci przeszkodzi",
		"Słuchaj się swojego Dowódcy i wykonuj jego polecenia"}
	},
	ROLE_MTFMEDIC = {
		"Jesteś Medykiem MTF",
		{"Twoim celem jest wspieranie innych ochroniarzy i naukowców",
		"Jeśli będą ranni to ich ulecz",
		"Słuchaj się swojego Dowódcy i wykonuj jego polecenia"}
	},
	ROLE_MTFL = {
		"Jesteś Porucznikiem MTF",
		{"Twoim celem jest znalezienie wszystkich naukowców i eliminacja Klasy D",
		"Eskortuj ich do lądowiska",
		"Musisz zabić każdego kto ci przeszkodzi",
		"Słuchaj się Dowódcy i wykonuj jego polecenia",
		"Jeśli Dowódca przydzieli ci ochroniarzy to wydawaj im polecenia",
		"Jeśli Dowódca zginie to przejmij dowodzenie"}
	},
	ROLE_HAZMAT = {
		"Jesteś specjalnym żołnierzem MTF",
		{"Twoim celem jest znalezienie wszystkich naukowców i eliminacja Klasy D",
		"Eskortuj ich do lądowiska",
		"Musisz zabić każdego kto ci przeszkodzi",
		"Słuchaj się Dowódcy i wykonuj jego polecenia"}
	},
	ROLE_MTFNTF = {
		"Jesteś agentem MTF Jednostki Nine-Tailed Fox",
		{"Twoim celem jest znalezienie wszystkich naukowców i eliminacja Klasy D",
		"Eskortuj ich do lądowiska",
		"Musisz zabić każdego kto ci przeszkodzi",
		"Wejdź do placówki i pomóż ochroniarzom",
		"Jeśli jest jakiś Dowódca to wykonuj jego polecenia"}
	},
	ROLE_MTFCOM = {
		"Jesteś Dowódcą MTF",
		{"Twoim celem jest znalezienie wszystkich naukowców",
		"Eskortuj ich do lądowiska",
		"Musisz zabić każdego kto ci przeszkodzi",
		"Wydawaj polecenia ochroniarzom"}
	},
	ROLE_SD = {
		"Jesteś Dyrektorem Placówki",
		{"Twoim celem jest wydawanie poleceń",
		"Jeśli jest jakiś Dowódca MTF lub Dowódca Ochrony to wydawaj im polecenia",
		"Zrób co w swojej mocy by uchronić placówke"}
	},
	ROLE_CHAOS = {
		"Jesteś żołnierzem Chaos Insurgency",
		{"Twoim celem jest zabicie ochroniarzy MTF",
		"Jeśli znajdziesz personel Klasy D eskortuj go do lądowiska",
		"Zabij każdego kto ci przeszkodzi"}
	},
	ROLE_CHAOSCOM = {
		"Jesteś Dowódcą Chaos Insurgency",
		{"Twoim celem jest wydawanie poleceń żołnierzom CI",
		"Musicie zabić wszystkich ochroniarzy MTF",
		"Zrócie jak największy chaos w placówce"}
	},
	ROLE_CHAOSSPY = {
		"Jesteś szpiegiem Chaos Insurgency",
		{"Twoim celem jest zabicie ochroniarzy MTF",
		"Będą myśleć, że jesteś z nimi",
		"Jeśli znajdziesz personel Klasy D eskortuj go do lądowiska"}
	},
	ROLE_SPEC = {
		"Jesteś Obserwatorem",
		{'Użyj komendy "br_spectate" żeby wrócić'}
	},
}

polski.lang_end1 = "Runda kończy się w tym miejscu"
polski.lang_end2 = "Czas minął"
polski.lang_end3 = "Gra zakończyła się"

polski.escapemessages = {
	{
		main = "Uciekłeś",
		txt = "Uciekłeś w {t} minut, dobra robota!",
		txt2 = "Następnym razem spróbuj zostać eskortowanym przez MTF żeby dostać bonusowe punkty",
		clr = Color(237, 28, 63),
	},
	{
		main = "Uciekłeś",
		txt = "Uciekłeś w {t} minut, dobra robota!",
		txt2 = "Następnym razem spróbuj zostać eskortowanym przez CI żeby dostać bonus punktów",
		clr = Color(237, 28, 63),
	},
	{
		main = "Zostałeś eskortowany",
		txt = "Zostałeś eskortowany w {t} minut, dobra robota!",
		txt2 = "",
		clr = Color(237, 28, 63),
	},
	{
		main = "Uciekłeś",
		txt = "Uciekłeś w {t} minut, dobra robota!",
		txt2 = "",
		clr = Color(237, 28, 63),
	}
}


polski.ROLES = {}
polski.ROLES.ROLE_SCP173 = "SCP-173"
polski.ROLES.ROLE_SCP106 = "SCP-106"
polski.ROLES.ROLE_SCP049 = "SCP-049"
polski.ROLES.ROLE_SCP457 = "SCP-457"
polski.ROLES.ROLE_SCP0492 = "SCP-049-2"
polski.ROLES.ROLE_SCP0082 = "SCP-008-2"
polski.ROLES.ROLE_SCP966 = "SCP-966"

polski.ROLES.ROLE_RES = "Naukowiec"
polski.ROLES.ROLE_MEDIC = "Medyk"

polski.ROLES.ROLE_CLASSD = "Personel Klasy D"
polski.ROLES.ROLE_VETERAN = "Weteran Klasy D"

polski.ROLES.ROLE_SECURITY = "Ochroniarz"
polski.ROLES.ROLE_MTFGUARD = "Ochroniarz MTF"
polski.ROLES.ROLE_MTFMEDIC = "Medyk MTF"
polski.ROLES.ROLE_MTFL = "Porucznik MTF"
polski.ROLES.ROLE_HAZMAT = "MTF SCU"
polski.ROLES.ROLE_MTFNTF = "MTF NTF"
polski.ROLES.ROLE_CSECURITY = "Dowódca ochroniarzy"
polski.ROLES.ROLE_MTFCOM = "Dowódca MTF"
polski.ROLES.ROLE_SD = "Dyrektor Placówki"

polski.ROLES.ROLE_CHAOSSPY = "Szpieg CI"
polski.ROLES.ROLE_CHAOS = "Żołnierz CI"
polski.ROLES.ROLE_CHAOSCOM = "Dowódca CI"
polski.ROLES.ROLE_SPEC = "Obserwator"

ALLLANGUAGES.polski = polski
