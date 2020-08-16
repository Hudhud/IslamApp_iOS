//
//  TabItemDataGenerator.swift
//  IslamApp
//
//

import Foundation

struct TabItemDataGenerator {
    
    static func generateProfeternes() -> [TabItemData] {
    
        let one = TabItemData(title: "Sandfærdighed", text: "Alle profeterne var sandfærdige i alt, hvad de fortalte om og overbragte fra Allah, da folk ikke vil tage imod kaldet fra én, der ikke er sandfærdig.")
        let two = TabItemData(title: "Troværdighed", text: "Alle profeterne var troværdige, idet folk ikke vil tage imod kaldet fra én, der ikke er troværdig.")
        let three = TabItemData(title: "Skarpsindighed", text: "Alle profeterne var skarpsindige. Ingen af dem var svage i deres argumenter.")
        let four = TabItemData(title: "Veltalenhed", text: "Alle profeterne var veltalende. De benyttede sig af få og fyldestgørende ord til at forklare et budskab.")
        let five = TabItemData(title: "Immunitet", text: "Alle profeterne var immune, dvs. de var beskyttet mod blasfemi (kufr), store synder (kaba´ir) og små usle synder (sagha’ir al-khissah), såvel før som efter profetien. På den anden side er det muligt for dem at begå andre små synder, men dog bliver de øjeblikkeligt retledet til at angre, førend nogen efterligner dem i synden.")

        return [one, two, three, four, five]
        
    }
    
    static func generateWuduBetingelser() -> [TabItemData] {
        
        let one = TabItemData(title: "1", text: "At være Muslim.")
        let two = TabItemData(title: "2", text: "At have nået At-Tamjjiz-alderen, dvs. den alder, hvor barnet forstår det stillede spørgsmål og kan svare tilbage på det.")
        let three = TabItemData(title: "3", text: "At der ikke er noget på kroppen, der forhindrer vandet i at nå de steder, der skal vaskes.")
        let four = TabItemData(title: "4", text: "At vandet skal være rindende.")
        let five = TabItemData(title: "5", text: "At bruge rensende (mutahhir) vand, dvs. det vand, der ikke er forandret ved at blive blandet med et rent (tahir) stof, som man nemt kan skærme vandet fra, såsom mælk, blæk eller lignende.\n\n Hvis vandet forandres til en sådan grad, at det ikke længere kaldes vand, så er dette vand ikke egnet til renselse.\n\n Hvis vandet imidlertid forandres pga. dets sammenblanding med et stof, som er på sit oprindelige sted eller dets afløb eller lignende, og fra hvilket vandet ikke nemt kan beskyttes, så påvirker dette ikke vandets rensende egenskab, også selvom der er tale om en stor forandring.\n\n Vandet må heller ikke forandres af noget nadjis-smuds (urent), selv ikke en lille forandring. Hvis vandet var mindre end to qullah (ca. 216 liter), er det betinget af, at ufritaget nadjis-smuds ikke kommer i kontakt med vandet, selv hvis det ikke forandrer vandet, samt at vandet ikke havde været anvendt i en rituel afvaskning eller fjernelse af noget nadjasah.\n")
        
        return [one, two, three, four, five]
    }
    
    static func generateWuduAfbrydelser() -> [TabItemData] {
        
        let one = TabItemData(title: "1", text: "Alt, der kommer ud af endetarmen eller kønsdelen, undtagen udløsning.")
        let two = TabItemData(title: "2", text: "Berøring af penis, skedeåbning eller ringmuskelen på et menneske med håndfladen uden afskærmning.")
        let three = TabItemData(title: "3", text: "Berøring af huden af en kvinde, man kan gifte sig med, og som har nået en alder, hvor hun er fysisk tiltrækkende; (Hvis man rører håret af en fremmed kvinde, afbrydes wudu' ikke, men det er haram).\n\n Ligeledes for en kvinde at røre huden af en fremmed mand.")
        let four = TabItemData(title: "4", text: "At miste bevidstheden eller forstanden, dog ikke søvn, hvis man sover siddende med enden fast anbragt på underlaget.")
        return [one, two, three, four]
        
    }
    
    static func generateBonnenBetingelser() -> [TabItemData] {
        
        let one = TabItemData(title: "Islam", text: "At være Muslim.")
        let two = TabItemData(title: "Qiblah", text: "At være rettet med brystet mod Qiblah.")
        let three = TabItemData(title: "Bønindtrædelse", text: "At tiden for den pågældende bøn er indtrådt.")
        let four = TabItemData(title: "At-tamjjiz-alderen", text: "At have nået At-Tamjjiz-alderen, dvs. den alder, hvor barnet forstår det stillede spørgsmål og kan svare tilbage på det.")
        let five = TabItemData(title: "Forpligtelsen", text: "At kende til forpligtelsen af de fem forpligtede bønner.")
        let six = TabItemData(title: "Bønnens søjler", text: "Ikke at anse nogle af bønnens søjler som værende sunnah.")
        let seven = TabItemData(title: "^Awrah", text: "For den frie kvinde at tildække hele kroppen undtagen ansigtet og hænderne, dvs., at skjule huden og håret samt deres farver; for manden at tildække området mellem navlen og knæene.")
        
        return [one, two, three, four, five, six, seven]
    }
    
    static func generateBonnenAfbrydelser() -> [TabItemData] {
        
        let one = TabItemData(title: "Tale", text: "At udtale to bogstaver eller blot et betydningsbærende bogstav, medmindre det bliver sagt i forglemmelse og at det er lidt.")
        let two = TabItemData(title: "Mange bevægelser", text: "At udføre mange bevægelser, hvilke ifølge nogle lærde er det, der rummer en rak^ah’s tid.")
        let three = TabItemData(title: "Voldsom bevægelse", text: "At udføre en voldsom bevægelse såsom at springe.")
        let four = TabItemData(title: "Ekstra bevægelsessøjle", text: "At tilføje en ekstra bevægelsessøjle.")
        let five = TabItemData(title: "Lege", text: "At udføre én bevægelse med hensigt at lege såsom at række tunge ad nogen.")
        let six = TabItemData(title: "Spise & drikke", text: "At spise eller at drikke, undtagen hvis man glemmer, at man er i bøn, og at det er lidt.")
        let seven = TabItemData(title: "Afbryde bønnen", text: "At have til hensigt at afbryde bønnen.")
        let eight = TabItemData(title: "Afbryde bønnen (hændelse)", text: "At lade hensigten om at afbryde bønnen afhænge af forekomsten af en hændelse.")
        let nine = TabItemData(title: "Afbryde bønnen (tøve)", text: "At tøve med at afbryde bønnen.")
        let ten = TabItemData(title: "Tvivl", text: "At fuldføre en søjle alt imens man er i tvivl om, man har udført hensigten til at udføre bønnen eller ej under den indledende takbirah; \"Allahu akbar\", eller når tvivlen herom varer længe.")
        return [one, two, three, four, five, six, seven, eight, nine, ten]
        
    }
    
    static func generateFastensSojler() -> [TabItemData] {
        
        let one = TabItemData(title: "Hensigten", text: "For den obligatoriske faste, altså fasten i Ramadan-måneden skal hensigten laves natten (mellem solnedgang og daggry) før fastens dag.")
        let two = TabItemData(title: "Fastens afbrydelser", text: "At afholde sig fra samleje, onani, fremprovokeret opkast, frafald samt at indføre noget, der har en størrelse i hovedets eller kroppens hulrum gennem en åben indgang (munden, næsen, de eliminatoriske udgange samt ørene ifølge nogle af de lærde) undtagen ens eget ublandede og rene spyt, så længe det er inde i munden.")
        return [one, two]
        
    }
    
    static func generateBonnenSojler() -> [TabItemData] {

        
        let one = TabItemData(title: "Intro", text: "Bønnen har en række søjler og et antal sunan. Uden alle søjlerne er bønnen ugyldig, hvorimod man kan undlade sunan uden at bønnen gøres ugyldig, omend man mister belønning for disse sunan\n\nI det følgende gennemgås søjlerne.")
        
        let two = TabItemData(title: "1", text: "At have en hensigt i hjertet om at udføre bønnen. Man skal specificere bønnen, når den har en speciel anledning eller tid, samt at have en hensigt om at udføre forpligtelsen i de pligtige bønner.")
        
        var three = TabItemData(title: "2", text: "At sige ”Allahu Akbar” (den indledende takbirah) mindst så højt, at man kan høre sig selv, som det er påkrævet i enhver mundtlig søjle.",  audioName: "takbira")
        three.image = #imageLiteral(resourceName: "sojle1")
        
        var four = TabItemData(title: "3", text: "At stå op (qiyam) i de forpligtede bønner, hvis man magter det.")
        four.image = #imageLiteral(resourceName: "sojle4")
        
        var five = TabItemData(title: "4", text: "At læse Al-Fatihah\n\n\"Bismillahir-Rahmanir-Rahim.\n Al-Hamdu lillahi Rabbil- ^alamin\n Ar-Rahmanir-Rahim.\n Maliki yawmid-Din.\n Iyyaka na^budu wa iyyaka nasta^in.\n Ihdinas-siratal-mustaqim\n Siratal-ladhina an ^amta ^alayhim, Ghayril-maghdubi ^alayhim wa lad-dallin\"", audioName: "alfatiha")
        five.arabText = "\"بِسْمِ اللَّـهِ الرَّ\u{200C}حْمَـٰنِ الرَّ\u{200C}حِيمِ ﴿١﴾ الْحَمْدُ لِلَّـهِ رَ\u{200C} الْعَالَمِينَ ﴿٢﴾ الرَّ\u{200C}حْمَـٰنِ الرَّ\u{200C} ﴿٣﴾ مَالِكِ يَوْمِ الدِّينِ ﴿٤﴾ إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ ﴿٥﴾ اهْدِنَا الصِّرَ\u{200C}اطَ الْمُسْتَقِيمَ ﴿٦﴾ صِرَ\u{200C} الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ\u{200C} الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ ﴿٧﴾\""
        five.image = #imageLiteral(resourceName: "sojle2")
        
        
        var six = TabItemData(title: "5", text: "At bukke sig således at håndfladerne kan nå knæene (ruku^).")
        six.image = #imageLiteral(resourceName: "sojle3")
        
        let seven = TabItemData(title: "6", text: "At være stille (tuma´ninah) i bukningen så længe som det tager at sige ”Subhanallah”. Dvs. at alle kroppens knogler skal falde til ro på en gang.")
        
        var eight = TabItemData(title: "7", text: "At rette sig op (I^tidal) til opretstående stilling efter bukningen.")
        eight.image = #imageLiteral(resourceName: "sojle4")
        
        let nine = TabItemData(title: "8", text: "At være stille (tuma´ninah) i denne opretstående stilling.")
        
        var ten = TabItemData(title: "9", text: "At knæle (udføre sudjud) to gange ved at sætte hele eller en del af sin utildækkede pande på bedestedet med et let tryk og med sin bagdel højere end sin øvre del af kroppen, samt at sætte dele af sine knæ, håndflader og tæerspidserne på bedestedet.")
        ten.image = #imageLiteral(resourceName: "sojle6")
        
        let eleven = TabItemData(title: "10", text: "At være stille (tuma´ninah) i knælningen.")
        
        var twelve = TabItemData(title: "11", text: "At sidde mellem de to knælninger.")
        twelve.image = #imageLiteral(resourceName: "sojle7")
        
        let thirteen = TabItemData(title: "12", text: "At være stille (tuma´ninah) mens man sidder.")
        
        var fourteen = TabItemData(title: "13", text: "At sidde for at sige den-sidste-tashahhud, As-salatu ^alan-Nabiy, og den afsluttende salam.")
        fourteen.image = #imageLiteral(resourceName: "sojle8")
        
        var fifteen = TabItemData(title: "14", text: "At sige den sidste tashahhud: \n\n\"At-tahiyyatul-mubarakatus-salawatut-tayyibatu lillah,\n As-salamu ^alayka ayyuhan-nabiyyu wa rahmatullahi wa barakatuh,\n as-salamu ^alayna wa ^ala ^ibadil-lahis-salihin\n Ash hadu alla ilaha illal-lah wa ash hadu anna Muhammadar-rasuulullah\"", audioName: "tashahhud")
        fifteen.arabText = "\"التَّحِيَّاتُ الْمُبَارَكَاتُ الصَّلَوَاتُ الطَّيِّبَاتُ لِلَّهِ، السَّلَامُ عَلَيْكَ أَيُّهَا النَّبِيُّ وَرَحْمَةُ اللَّهِ وَبَرَكَاتُهُ، السَّلَامُ عَلَيْنَا وَعَلَى عِبَادِ اللَّهِ الصَّالِحِينَ، أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا اللَّهُ، وَأَشْهَدُ أَنَّ مُحَمَّدًا رَسُولُ اللَّهِ\""
        
        var sixteen = TabItemData(title: "15", text: "At sige As-Salatu ^alan-nabiyy, må Allah ophøje hans rang. \n\n\"Allahumma salli ^ala Muhammad\"", audioName: "salat")
        sixteen.arabText = "\"اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ\""
        
        var seventeen = TabItemData(title: "16", text: "At sige den afsluttende salam\n\"As-salamu ^alaykum\"", audioName: "assalam")
        seventeen.image = #imageLiteral(resourceName: "sojle9")
        seventeen.arabText = "\"السَّلاَمُ عَلَيْكُمْ\""
        
        let eighteen = TabItemData(title: "17", text: "At overholde rækkefølgen for søjlerne. Bevidst udeladelse af denne gennemgåede rækkefølge ugyldiggør bønnen.")
        
        return [one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen]
        
    }
    
    static func generateBoentider() -> [TabItemData] {
        
        let two = TabItemData(title: "Hvordan indtræder bønnerne?", text: "Iblandt forpligtelserne for enhver ansvarlig (mukallaf) er udførelse af de fem " +
            "bønner i løbet af dagen og natten. Eftersom kendskabet til disse bøntider er en " +
            "pligt for enhver ansvarlig, gøres der rede for dem i det følgende:\n\n" +
            "<b>Den første bøn er middagsbønnen (Adh-Dhuhr)</b>, hvis tid indtræder, når solen aftager " +
            "fra sit højeste punkt på himlen (midten af himlen) mod vest, og udtræder når skyggen" +
            " af en tilfældig genstand bliver lige så lang som en genstands egen længde adderet " +
            "med længden af kulminationsskyggen. Kulminationsskyggen er den målte skygge, når " +
            "solen er ved sit højeste punkt i løbet af en dag.\n\n" +
            "Den anden bøn er eftermiddagsbønnen (Al-^asr), hvis tid varer fra middagsbønnens " +
            "udtrædelse til solnedgang (når hele solskiven er forsvundet).\n\n" +
            "Den tredje bøn er solnedgangsbønnen (Al-Maghrib), hvis tid indtræder fra " +
            "eftermiddagsbønnens udtrædelse, og udtræder når det rødlige skumringslys " +
            "(svagt lys der dukker op i den vestlige horisont efter solnedgang) er forsvundet.\n\n" +
            "Den fjerde bøn er natbønnen (Al-^Ishaa´), hvis tid indtræder ved solnedgangsbønnens " +
            "udtrædelse, og udtræder ved frembrudet af det sande daggry (Al-Fadjir As-Saadiq), " +
            "hvilket er det vandrette lys, der viser sig i den østlige horisont, som et tyndt " +
            "skær der dernæst udbreder sig.\n\n" + "Den femte bøn er morgenbønnen (As-Subh), hvis tid indtræder ved natbønnens udtrædelse, og udtræder ved solopgang (Shuruuq).")
        return [two]
    }
    static func generateHvordanMan() -> [TabItemData] {
        
        let one = TabItemData(title: "Intro", text: "Wudu' har en række søjler og et antal sunan. Uden alle søjlerne er wudu' ugyldig, hvorimod man kan undlade sunan uden at wudu' gøres ugyldig, omend man mister belønning for disse sunan.\n\nI det følgende gennemgås søjlerne.")
        let two = TabItemData(title: "Hensigt", text: "At udføre en hensigt f.eks. \"Nawaytul wudu' \" dvs. \"Jeg har til hensigt at udføre wudu' lillah (for Allah's skyld)\" e.l.")
        let three = TabItemData(title: "Ansigt", text: "At vaske ansigtet, fra den normale hårgrænse til hagen og fra det ene øre til det andet, både håret og huden, men ikke indersiden af en mands tætte skæg og tætte bakkenbarter.", image: #imageLiteral(resourceName: "ansigt"))
        let four = TabItemData(title: "Arme", text: "At vaske hænderne og underarmene til og med albuerne og det, der er på dem.", image: #imageLiteral(resourceName: "arme"))
        let five = TabItemData(title: "Hoved", text: "At stryge på hovedet eller noget af det med en våd hånd.", image: #imageLiteral(resourceName: "hoved"))
        let six = TabItemData(title: "Fødder", text: "At vaske fødderne til og med anklerne.", image: #imageLiteral(resourceName: "ankler"))
        let seven = TabItemData(title: "Rækkefølgen", text: "At overholde denne rækkefølge, for ellers er ens wudu' ikke gyldig.")

        return [one, two, three, four, five, six, seven]
        
    }
    
    static func generateTrosbekendelsen() -> [TabItemData] {
        
        var one = TabItemData(title: "Hvad er trosbekendelsen?", text: "Førend man kan blive muslim, skal man have den rette tro på Allah og Hans profeter samt at fremsige trosbekendelsen der kan blive fremsagt i hvilket som helst sprog:")
        one.arabText = "أَشْهَدُ أَنْ لاَ إِلَٰهَ إِلاَّ اللهُ وأَشْهَدُ أَنَّ مُحَمَّدًا رَسُولُ اللهِ"
        one.bottomText = "”Ash-hadu allaa ilaaha illallaah wa ash-hadu anna Muhammadar-rasuulullaah”\n\nhvilket betyder: \n\"Jeg bevidner, at der ingen anden guddom end Allah er, og bevidner, at \n Muhammad er Allahs sendebud\".\n\nMan kan også fremsige et andet udtryk med en lignende betydning såsom ”Der er ingen anden guddom end Gud og Muhammad er Guds profet”."
        
        let two = TabItemData(title: "Hvad er betydningen af trosbekendelsen", text: "Eftersom de to vidnesbyrd udgør grundlaget for islams kald, er det forpligtet enhver muslim at være bekendt med deres betydninger.\n\nBetydningen af ”Ash-hadu allaa ilaaha illallaah” (Jeg bevidner, at der ingen anden guddom end Allah er) er: Jeg ved, tror dvs. godtager i mit hjerte, underkaster mig samt erklærer med min tunge, at intet er tilbedt med rette undtagen Allah. Dvs. ingen fortjener at blive tilbedt - hvilket vil sige at man ydmyger sig selv til det yderste for - undtagen Allah. \n\n Betydningen af det andet vidnesbyrd, som lyder ”Ash-hadu anna Muhammadar-rasuulullaah” (Jeg bevidner, at Muhammad er Allahs profet), må Allah ophøje hans rang, er: Jeg ved, tror, godtager, underkaster mig i mit hjerte og erklærer med min tunge, at Muhammad, søn af ^Abdullah - qurayshianeren (dvs. den som stammer fra den mest ærværdige stamme Quraysh), er Allahs skabning og sendebud til alle skabninger blandt mennesker og djin. Dette indbefatter ligeledes troen på, at han blev født i Makkah og fik sin åbenbaring om profetien déri. Han emigrerede fra Makkah og rejste på Allahs befaling til Al-Madinah, den belyste by, hvori han døde og blev begravet.")
        return [one, two]
        
    }
    
    static func generate13egenskaber() -> [TabItemData] {
        
        var one = TabItemData(title: "Eksistens", text: "Før Allah skabte himlen, tronen, stedet, tiden og alle andre skabninger, eksisterede Han uden dem, og Han eksisterer nu som han altid har gjort, da Han ikke forandrer Sig. Ergo eksisterer Allah uden tid og sted, da de er skabt af Ham. \n\nProfeten, må Allah ophøje hans rang, sagde:")
        one.arabText = "\"كَانَ اللهُ وَلَمْ يَكُنْ شَيْءٌ غَيْرُهُ\""
        one.bottomText = "hvilket betyder: \n\"Allah eksisterede i al evighed og der var intet andet end Ham\", berettet af Al-Bukhariy."
        
        var two = TabItemData(title: "Enehed", text: "Allah er Én og har ingen partner i Sin guddommelighed. Han er Én i Sit selv, Én i Sine egenskaber og Én i Sine handlinger.\n\n Allah, være ophøjet, sagde i Surat Muhammad, vers 19:")
        two.arabText = "\"فَاعْلَمْ أَنَّهُ لَا إِلَٰهَ إِلَّا اللهُ\""
        two.bottomText = "hvilket betyder: \n\"Vid (Oh Muhammad), at Han (Allah) er den eneste Gud\"."
        
        var three = TabItemData(title: "Evighed", text: "Allah har ingen begyndelse på Sin eksistens og intet andet end Ham er evigt. Han eksisterede før Han skabte alle skabningerne som f.eks. tid og sted.\n\nProfeten, må Allah ophøje hans rang, sagde: ")
        three.arabText = "\"كَانَ اللهُ وَلَمْ يَكُنْ شَيْءٌ غَيْرُهُ\""
        three.bottomText = "hvilket betyder: \n\"Allah eksisterede i al evighed og der var intet andet end Ham\", berettet af Al-Bukhariy."
        
        var four = TabItemData(title: "Uophørlighed", text: "Allah er uophørlig dvs. Han ingen slutning har på Sin eksistens. Han forgår ikke, ej heller udslettes Han.\n\nAllah, være ophøjet, sagde i Surat Al-Hadid, vers 3:")
        four.arabText = "\"هُوَ الأَوَّلُ وَالآخِرُ\""
        four.bottomText = "hvilket betyder: \n\"Han er Al-Awwal (Den evige) og Al-Akhir (Den uophørlige)\"."
        
        var five = TabItemData(title: "Uafhængighed", text: "Allah har ikke brug for nogen eller noget, mens alle skabninger har brug for Ham.\n\n Allah, være ophøjet, sagde i Surat Al-Ikhlas, vers 2:")
        five.arabText = "\"اللهُ الصَّمَدُ\""
        five.bottomText = "hvilket betyder: \n\"Allah har ikke brug for nogen eller noget, mens alt har brug for Ham\"."
        
        
        var six = TabItemData(title: "Magt", text: "Allah magter alt, dvs. Han formår alt, hvad Han vil.\n\nAllah, være ophøjet, sagde i Surat Al-Mulk, vers 1:")
        six.arabText = "“وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ”"
        six.bottomText = "hvilket betyder: \n\"Og Han magter alting\"."
        
        var seven = TabItemData(title: "Vilje", text: "Alt i universet sker med Allahs vilje. Intet sker mod Hans vilje.\n\nAbou  Dawoud  har  berettet  i  sin  ”Sunan”,  at  profeten, må  Allah  ophøje  hans  rang, lærte nogle af sine døtre at sige:")
        seven.arabText = "\"مَا شَاءَ اللَّهُ كَانَ وَمَا لَمْ يَشَأْ لَمْ يَكُنْ\""
        seven.bottomText = "hvilket betyder: \n\"Det, som Allah vil have skal ske, vil ske, og det, som Han ikke vil have skal ske, vil ikke ske\"."
        
        var eight = TabItemData(title: "Viden", text: "Allah er vidende om alt før det sker. Intet er skjult for Ham.\n\n Allah, være ophøjet, sagde i Surat Al-Anfal, vers 75:")
        eight.arabText = "\"إِنََّ اللهَ بِكُلِّ شَيْءٍ عَلِيمٌ\""
        eight.bottomText = "hvilket betyder: \n\"Sandelig er Allah velvidende om alt\"."
        
        var nine = TabItemData(title: "Hørelse", text: "Allah hører alt uden ører eller andre redskaber.\n\n..Allah, være ophøjet, sagde i Surat Ash-Shura, vers 11:")
        nine.arabText = "\"وَهُوَ السَّمِيعُ الْبَصِيرُ\""
        nine.bottomText = "hvilket betyder: \n\"Og Han er Den althørende og Den altseende\"."
        
        var ten = TabItemData(title: "Syn", text: "Allah ser alt uden øjne eller andre redskaber.\n\nAllah, være ophøjet, sagde i Surat Ash-Shura, vers 11:")
        ten.arabText = "\"وَهُوَ السَّمِيعُ الْبَصِيرُ\""
        ten.bottomText = "hvilket betyder: \n\"Og Han er Den althørende og Den altseende\"."
        
        var eleven = TabItemData(title: "Liv", text: "Allah er beskrevet med et evigt liv, der ikke er med sjæl, kød, blod eller andet.\n\nAllah, være ophøjet, sagde i Surat Al-Baqarah, vers 255:")
        eleven.arabText = "\"اللهُ لاَ إِلَٰهَ إِلاَّ هُوَ الْحَيُّ\""
        eleven.bottomText = "hvilket betyder: \n\"Allah, der er ingen anden Gud end Ham. Han er Al-Hayy (Den, der er beskrevet med et evigt liv)\"."
        
        var twelve = TabItemData(title: "Tale", text: "Allahs tale er ikke med lyd, bogstaver eller sprog, og den ligner ikke vores tale. Det, der står i koranen på arabisk, er et udtryk for Allahs evige tale.\n\nAllah, være ophøjet, sagde i Surat An-Nisaa', vers 164:")
        twelve.arabText = "\"وَكَلَّمَ اللهُ مُوسَى تَكْلِيمًا\""
        twelve.bottomText = "hvilket betyder: \n\"Og Allah talte (med Sin evige tale) til Musa\"."
        
        var thirteen = TabItemData(title: "Uforlignelighed", text: "Allah ligner ikke nogen eller noget. Hvad end man forestiller sig i sin fantasi og illusion, er Allah ikke lig det.\n\nAllah, være ophøjet, sagde Surat Ash-Shura vers 11:")
        thirteen.arabText = "\"لَيْسَ كَمِثْلِهِ شَيْءٌ\""
        thirteen.bottomText = "hvilket betyder: \n\"Der er absolut intet lig Ham (Allah)\"."
        
        return [one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen]
        
    }
    
    
}
