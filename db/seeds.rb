# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#['employee', 'client', 'admin', 'banned'].each do |role|
#  Role.find_or_create_by({name: role})
#end

@nums = (0..307).to_a

@cities = {
    "0"=> {
        "name"=> "Abrantes",
        "fregs"=> [
            "Abrantes (São Vicente e São João) e Alferrarede",
            "Aldeia do Mato e Souto",
            "Alvega e Concavada",
            "Bemposta",
            "Carvalhal",
            "Fontes",
            "Martinchel",
            "Mouriscas",
            "Pego",
            "Rio de Moinhos",
            "São Facundo e Vale das Mós",
            "São Miguel do Rio Torto e Rossio ao Sul do Tejo",
            "Tramagal"
        ]
    },
    "1"=> {
        "name"=> "Águeda",
        "fregs"=> [
            "Aguada de Cima",
            "Águeda e Borralha",
            "Barrô e Aguada de Baixo",
            "Belazaima do Chão, Castanheira do Vouga e Agadão",
            "Fermentelos",
            "Macinhata do Vouga",
            "Préstimo e Macieira de Alcoba",
            "Recardães e Espinhel",
            "Travassô e Óis da Ribeira",
            "Trofa, Segadães e Lamas do Vouga",
            "Valongo do Vouga"
        ]
    },
    "2"=> {
        "name"=> "Aguiar da Beira",
        "fregs"=> [
            "Aguiar da Beira e Coruche",
            "Carapito",
            "Cortiçada",
            "Dornelas",
            "Eirado",
            "Forninhos",
            "Pena Verde",
            "Pinheiro",
            "Sequeiros e Gradiz",
            "Souto de Aguiar da Beira e Valverde"
        ]
    },
    "3"=> {
        "name"=> "Alandroal",
        "fregs"=> [
            "Alandroal (Nossa Senhora da Conceição), São Brás dos Matos (Mina do Bugalho) e Juromenha",
            "Capelins (Santo António)",
            "Santiago Maior",
            "Terena (São Pedro)"
        ]
    },
    "4"=> {
        "name"=> "Albergaria-a-Velha",
        "fregs"=> [
            "Albergaria-a-Velha e Valmaior",
            "Alquerubim",
            "Angeja",
            "Branca",
            "Ribeira de Fráguas",
            "São João de Loure e Frossos"
        ]
    },
    "5"=> {
        "name"=> "Albufeira",
        "fregs"=> [
            "Albufeira e Olhos de Água",
            "Ferreiras",
            "Guia",
            "Paderne"
        ]
    },
    "6"=> {
        "name"=> "Alcácer do Sal",
        "fregs"=> [
            "Alcácer do Sal (Santa Maria do Castelo e Santiago) e Santa Susana",
            "Comporta",
            "Torrão"
        ]
    },
    "7"=> {
        "name"=> "Alcanena",
        "fregs"=> [
            "Alcanena e Vila Moreira",
            "Bugalhos",
            "Malhou, Louriceira e Espinheiro",
            "Minde",
            "Moitas Venda",
            "Monsanto",
            "Serra de Santo António"
        ]
    },
    "8"=> {
        "name"=> "Alcobaça",
        "fregs"=> [
            "Alcobaça e Vestiaria",
            "Alfeizerão",
            "Aljubarrota",
            "Bárrio",
            "Benedita",
            "Cela",
            "Cós, Alpedriz e Montes",
            "Maiorga",
            "Pataias e Martingança",
            "São Martinho do Porto",
            "Turquel",
            "Vimeiro"
        ]
    },
    "9"=> {
        "name"=> "Alcochete",
        "fregs"=> [
            "Alcochete",
            "Samouco",
            "São Francisco"
        ]
    },
    "10"=> {
        "name"=> "Alcoutim",
        "fregs"=> [
            "Alcoutim e Pereiro",
            "Giões",
            "Martim Longo",
            "Vaqueiros"
        ]
    },
    "11"=> {
        "name"=> "Alenquer",
        "fregs"=> [
            "Abrigada e Cabanas de Torres",
            "Aldeia Galega da Merceana e Aldeia Gavinha",
            "Alenquer (Santo Estêvão e Triana)",
            "Carnota",
            "Carregado e Cadafais",
            "Meca",
            "Olhalvo",
            "Ota",
            "Ribafria e Pereiro de Palhacana",
            "Ventosa",
            "Vila Verde dos Francos"
        ]
    },
    "12"=> {
        "name"=> "Alfândega da Fé",
        "fregs"=> [
            "Agrobom, Saldonha e Vale Pereiro",
            "Alfândega da Fé",
            "Cerejais",
            "Eucísia, Gouveia e Valverde",
            "Ferradosa e Sendim da Serra",
            "Gebelim e Soeima",
            "Parada e Sendim da Ribeira",
            "Pombal e Vales",
            "Sambade",
            "Vilar Chão",
            "Vilarelhos",
            "Vilares de Vilariça"
        ]
    },
    "13"=> {
        "name"=> "Alijó",
        "fregs"=> [
            "Alijó",
            "Carlão e Amieiro",
            "Castedo e Cotas",
            "Favaios",
            "Pegarinhos",
            "Pinhão",
            "Pópulo e Ribalonga",
            "São Mamede de Ribatua",
            "Sanfins do Douro",
            "Santa Eugénia",
            "Vale de Mendiz, Casal de Loivos e Vilarinho de Cotas",
            "Vila Chã",
            "Vila Verde",
            "Vilar de Maçada"
        ]
    },
    "14"=> {
        "name"=> "Aljezur",
        "fregs"=> [
            "Aljezur",
            "Bordeira",
            "Odeceixe",
            "Rogil"
        ]
    },
    "15"=> {
        "name"=> "Aljustrel",
        "fregs"=> [
            "Aljustrel e Rio de Moinhos",
            "Ervidel",
            "Messejana",
            "São João de Negrilhos"
        ]
    },
    "16"=> {
        "name"=> "Almada",
        "fregs"=> [
            "Almada, Cova da Piedade, Pragal e Cacilhas",
            "Caparica e Trafaria",
            "Charneca de Caparica e Sobreda",
            "Costa da Caparica",
            "Laranjeiro e Feijó"
        ]
    },
    "17"=> {
        "name"=> "Almeida",
        "fregs"=> [
            "Almeida",
            "Amoreira, Parada e Cabreira",
            "Azinhal, Peva e Valverde",
            "Castelo Bom",
            "Castelo Mendo, Ade, Monteperobolso e Mesquitela",
            "Freineda",
            "Freixo",
            "Junça e Naves",
            "Leomil, Mido, Senouras e Aldeia Nova",
            "Malhada Sorda",
            "Malpartida e Vale de Coelha",
            "Miuzela e Porto de Ovelha",
            "Nave de Haver",
            "São Pedro de Rio Seco",
            "Vale da Mula",
            "Vilar Formoso"
        ]
    },
    "18"=> {
        "name"=> "Almeirim",
        "fregs"=> [
            "Almeirim",
            "Benfica do Ribatejo",
            "Fazendas de Almeirim",
            "Raposa"
        ]
    },
    "19"=> {
        "name"=> "Almodôvar",
        "fregs"=> [
            "Aldeia dos Fernandes",
            "Almodôvar e Graça dos Padrões",
            "Rosário",
            "São Barnabé",
            "Santa Clara-a-Nova e Gomes Aires",
            "Santa Cruz"
        ]
    },
    "20"=> {
        "name"=> "Alpiarça",
        "fregs"=> [
            "Alpiarça"
        ]
    },
    "21"=> {
        "name"=> "Alter do Chão",
        "fregs"=> [
            "Alter do Chão",
            "Chancelaria",
            "Cunheira",
            "Seda"
        ]
    },
    "22"=> {
        "name"=> "Alvaiázere",
        "fregs"=> [
            "Almoster",
            "Alvaiázere",
            "Maçãs de Dona Maria",
            "Pelmá",
            "Pussos São Pedro"
        ]
    },
    "23"=> {
        "name"=> "Alvito",
        "fregs"=> [
            "Alvito",
            "Vila Nova da Baronia"
        ]
    },
    "24"=> {
        "name"=> "Amadora",
        "fregs"=> [
            "Águas Livres",
            "Alfragide",
            "Encosta do Sol",
            "Falagueira-Venda Nova",
            "Mina de Água",
            "Venteira"
        ]
    },
    "25"=> {
        "name"=> "Amarante",
        "fregs"=> [
            "Aboadela, Sanche e Várzea",
            "Amarante (São Gonçalo), Madalena, Cepelos e Gatão",
            "Ansiães",
            "Bustelo, Carneiro e Carvalho de Rei",
            "Candemil",
            "Figueiró (Santiago e Santa Cristina)",
            "Fregim",
            "Freixo de Cima e de Baixo",
            "Fridão",
            "Gondar",
            "Jazente",
            "Lomba",
            "Louredo",
            "Lufrei",
            "Mancelos",
            "Olo e Canadelo",
            "Padronelo",
            "Real, Ataíde e Oliveira",
            "Rebordelo",
            "Salvador do Monte",
            "São Simão de Gouveia",
            "Telões",
            "Travanca",
            "Vila Caiz",
            "Vila Chã do Marão",
            "Vila Garcia, Aboim e Chapa"
        ]
    },
    "26"=> {
        "name"=> "Amares",
        "fregs"=> [
            "Amares e Figueiredo",
            "Barreiros",
            "Bico",
            "Caires",
            "Caldelas, Sequeiros e Paranhos",
            "Carrazedo",
            "Dornelas",
            "Ferreiros, Prozelo e Besteiros",
            "Fiscal",
            "Goães",
            "Lago",
            "Rendufe",
            "Santa Maria do Bouro",
            "Santa Marta do Bouro",
            "Torre e Portela",
            "Vilela, Seramil e Paredes Secas"
        ]
    },
    "27"=> {
        "name"=> "Anadia",
        "fregs"=> [
            "Amoreira da Gândara, Paredes do Bairro e Ancas",
            "Arcos e Mogofores",
            "Avelãs de Caminho",
            "Avelãs de Cima",
            "Moita",
            "São Lourenço do Bairro",
            "Sangalhos",
            "Tamengos, Aguim e Óis do Bairro",
            "Vila Nova de Monsarros",
            "Vilarinho do Bairro"
        ]
    },
    "28"=> {
        "name"=> "Angra do Heroísmo",
        "fregs"=> [
            "Altares",
            "Cinco Ribeiras",
            "Doze Ribeiras",
            "Feteira",
            "Nossa Senhora da Conceição",
            "Porto Judeu",
            "Posto Santo",
            "Raminho",
            "Ribeirinha",
            "Santa Bárbara",
            "Santa Luzia",
            "São Bartolomeu dos Regatos",
            "São Bento",
            "São Mateus da Calheta",
            "São Pedro",
            "Sé",
            "Serreta",
            "Terra Chã",
            "Vila de São Sebastião"
        ]
    },
    "29"=> {
        "name"=> "Ansião",
        "fregs"=> [
            "Alvorge",
            "Ansião",
            "Avelar",
            "Chão de Couce",
            "Pousaflores",
            "Santiago da Guarda"
        ]
    },
    "30"=> {
        "name"=> "Arcos de Valdevez",
        "fregs"=> [
            "Aboim das Choças",
            "Aguiã",
            "Álvora e Loureda",
            "Arcos de Valdevez (São Paio) e Giela",
            "Arcos de Valdevez (Salvador), Vila Fonche e Parada",
            "Ázere",
            "Cabana Maior",
            "Cabreiro",
            "Cendufe",
            "Couto",
            "Eiras e Mei",
            "Gavieira",
            "Gondoriz",
            "Grade e Carralcova",
            "Guilhadeses e Santar",
            "Jolda (Madalena) e Rio Cabrão",
            "Miranda",
            "Monte Redondo",
            "Oliveira",
            "Paçô",
            "Padreiro (Salvador e Santa Cristina)",
            "Padroso",
            "Portela e Extremo",
            "Prozelo",
            "Rio de Moinhos",
            "Rio Frio",
            "Sabadim",
            "São Jorge e Ermelo",
            "São Paio de Jolda",
            "Senharei",
            "Sistelo",
            "Soajo",
            "Souto e Tabaçô",
            "Távora (Santa Maria e São Vicente)",
            "Vale",
            "Vilela, São Cosme e São Damião e Sá"
        ]
    },
    "31"=> {
        "name"=> "Arganil",
        "fregs"=> [
            "Arganil",
            "Benfeita",
            "Celavisa",
            "Cepos e Teixeira",
            "Cerdeira e Moura da Serra",
            "Côja e Barril de Alva",
            "Folques",
            "Piódão",
            "Pomares",
            "Pombeiro da Beira",
            "São Martinho da Cortiça",
            "Sarzedo",
            "Secarias",
            "Vila Cova de Alva e Anseriz"
        ]
    },
    "32"=> {
        "name"=> "Armamar",
        "fregs"=> [
            "Aldeias",
            "Aricera e Goujoim",
            "Armamar",
            "Cimbres",
            "Folgosa",
            "Fontelo",
            "Queimada",
            "Queimadela",
            "Santa Cruz",
            "São Cosmado",
            "São Martinho das Chãs",
            "São Romão e Santiago",
            "Vacalar",
            "Vila Seca e Santo Adrião"
        ]
    },
    "33"=> {
        "name"=> "Arouca",
        "fregs"=> [
            "Alvarenga",
            "Arouca e Burgo",
            "Cabreiros e Albergaria da Serra",
            "Canelas e Espiunca",
            "Chave",
            "Covelo de Paivó e Janarde",
            "Escariz",
            "Fermedo",
            "Mansores",
            "Moldes",
            "Rossas",
            "Santa Eulália",
            "São Miguel do Mato",
            "Tropeço",
            "Urrô",
            "Várzea"
        ]
    },
    "34"=> {
        "name"=> "Arraiolos",
        "fregs"=> [
            "Arraiolos",
            "Gafanhoeira (São Pedro) e Sabugueiro",
            "Igrejinha",
            "São Gregório e Santa Justa",
            "Vimieiro"
        ]
    },
    "35"=> {
        "name"=> "Arronches",
        "fregs"=> [
            "Assunção",
            "Esperança",
            "Mosteiros"
        ]
    },
    "36"=> {
        "name"=> "Arruda dos Vinhos",
        "fregs"=> [
            "Arranhó",
            "Arruda dos Vinhos",
            "Cardosas",
            "Santiago dos Velhos"
        ]
    },
    "37"=> {
        "name"=> "Aveiro",
        "fregs"=> [
            "Aradas",
            "Cacia",
            "Eixo e Eirol",
            "Esgueira",
            "Glória e Vera Cruz",
            "Oliveirinha",
            "Requeixo, Nossa Senhora de Fátima e Nariz",
            "Santa Joana",
            "São Bernardo",
            "São Jacinto"
        ]
    },
    "38"=> {
        "name"=> "Avis",
        "fregs"=> [
            "Alcôrrego e Maranhão",
            "Aldeia Velha",
            "Avis",
            "Benavila e Valongo",
            "Ervedal",
            "Figueira e Barros"
        ]
    },
    "39"=> {
        "name"=> "Azambuja",
        "fregs"=> [
            "Alcoentre",
            "Aveiras de Baixo",
            "Aveiras de Cima",
            "Azambuja",
            "Manique do Intendente, Vila Nova de São Pedro e Maçussa",
            "Vale do Paraíso",
            "Vila Nova da Rainha"
        ]
    },
    "40"=> {
        "name"=> "Baião",
        "fregs"=> [
            "Ancede e Ribadouro",
            "Baião (Santa Leocádia) e Mesquinhata",
            "Campelo e Ovil",
            "Frende",
            "Gestaçô",
            "Gove",
            "Grilo",
            "Loivos da Ribeira e Tresouras",
            "Loivos do Monte",
            "Santa Cruz do Douro e São Tomé de Covelas",
            "Santa Marinha do Zêzere",
            "Teixeira e Teixeiró",
            "Valadares",
            "Viariz"
        ]
    },
    "41"=> {
        "name"=> "Barcelos",
        "fregs"=> [
            "Abade de Neiva",
            "Aborim",
            "Adães",
            "Airó",
            "Aldreu",
            "Alheira e Igreja Nova",
            "Alvelos",
            "Alvito (São Pedro e São Martinho) e Couto",
            "Arcozelo",
            "Areias",
            "Areias de Vilar e Encourados",
            "Balugães",
            "Barcelinhos",
            "Barcelos, Vila Boa e Vila Frescainha (São Martinho e São Pedro)",
            "Barqueiros",
            "Cambeses",
            "Campo e Tamel (São Pedro Fins)",
            "Carapeços",
            "Carreira e Fonte Coberta",
            "Carvalhal",
            "Carvalhas",
            "Chorente, Góios, Courel, Pedra Furada e Gueral",
            "Cossourado",
            "Creixomil e Mariz",
            "Cristelo",
            "Durrães e Tregosa",
            "Fornelos",
            "Fragoso",
            "Galegos (Santa Maria)",
            "Galegos (São Martinho)",
            "Gamil e Midões",
            "Gilmonde",
            "Lama",
            "Lijó",
            "Macieira de Rates",
            "Manhente",
            "Martim",
            "Milhazes, Vilar de Figos e Faria",
            "Moure",
            "Negreiros e Chavão",
            "Oliveira",
            "Palme",
            "Panque",
            "Paradela",
            "Pereira",
            "Perelhal",
            "Pousa",
            "Quintiães e Aguiar",
            "Remelhe",
            "Rio Covo (Santa Eugénia)",
            "Roriz",
            "Sequeade e Bastuço (São João e Santo Estêvão)",
            "Silva",
            "Silveiros e Rio Covo (Santa Eulália)",
            "Tamel (Santa Leocádia) e Vilar do Monte",
            "Tamel (São Veríssimo)",
            "Ucha",
            "Várzea",
            "Viatodos, Grimancelos, Minhotães e Monte de Fralães",
            "Vila Cova e Feitos",
            "Vila Seca"
        ]
    },
    "42"=> {
        "name"=> "Barrancos",
        "fregs"=> [
            "Barrancos"
        ]
    },
    "43"=> {
        "name"=> "Barreiro",
        "fregs"=> [
            "Alto do Seixalinho, Santo André e Verderena",
            "Barreiro e Lavradio",
            "Palhais e Coina",
            "Santo António da Charneca"
        ]
    },
    "44"=> {
        "name"=> "Batalha",
        "fregs"=> [
            "Batalha",
            "Golpilheira",
            "Reguengo do Fetal",
            "São Mamede"
        ]
    },
    "45"=> {
        "name"=> "Beja",
        "fregs"=> [
            "Albernoa e Trindade",
            "Baleizão",
            "Beja (Salvador e Santa Maria da Feira)",
            "Beja (Santiago Maior e São João Baptista)",
            "Beringel",
            "Cabeça Gorda",
            "Nossa Senhora das Neves",
            "Salvada e Quintos",
            "Santa Clara de Louredo",
            "Santa Vitória e Mombeja",
            "São Matias",
            "Trigaches e São Brissos"
        ]
    },
    "46"=> {
        "name"=> "Belmonte",
        "fregs"=> [
            "Belmonte e Colmeal da Torre",
            "Caria",
            "Inguias",
            "Maçainhas"
        ]
    },
    "47"=> {
        "name"=> "Benavente",
        "fregs"=> [
            "Barrosa",
            "Benavente",
            "Samora Correia",
            "Santo Estêvão"
        ]
    },
    "48"=> {
        "name"=> "Bombarral",
        "fregs"=> [
            "Bombarral e Vale Covo",
            "Carvalhal",
            "Pó",
            "Roliça"
        ]
    },
    "49"=> {
        "name"=> "Borba",
        "fregs"=> [
            "Borba (Matriz)",
            "Borba (São Bartolomeu)",
            "Orada",
            "Rio de Moinhos"
        ]
    },
    "50"=> {
        "name"=> "Boticas",
        "fregs"=> [
            "Alturas do Barroso e Cerdedo",
            "Ardãos e Bobadela",
            "Beça",
            "Boticas e Granja",
            "Codessoso, Curros e Fiães do Tâmega",
            "Covas do Barroso",
            "Dornelas",
            "Pinho",
            "Sapiãos",
            "Vilar e Viveiro"
        ]
    },
    "51"=> {
        "name"=> "Braga",
        "fregs"=> [
            "Adaúfe",
            "Arentim e Cunha",
            "Braga (Maximinos, Sé e Cividade)",
            "Braga (São José de São Lázaro e São João do Souto)",
            "Braga (São Vicente)",
            "Braga (São Victor)",
            "Cabreiros e Passos (São Julião)",
            "Celeirós, Aveleda e Vimieiro",
            "Crespos e Pousada",
            "Escudeiros e Penso (Santo Estêvão e São Vicente)",
            "Espinho",
            "Esporões",
            "Este (São Pedro e São Mamede)",
            "Ferreiros e Gondizalves",
            "Figueiredo",
            "Gualtar",
            "Guisande e Oliveira (São Pedro)",
            "Lamas",
            "Lomar e Arcos",
            "Merelim (São Paio), Panóias e Parada de Tibães",
            "Merelim (São Pedro) e Frossos",
            "Mire de Tibães",
            "Morreira e Trandeiras",
            "Nogueira, Fraião e Lamaçães",
            "Nogueiró e Tenões",
            "Padim da Graça",
            "Palmeira",
            "Pedralva",
            "Priscos",
            "Real, Dume e Semelhe",
            "Ruilhe",
            "Santa Lucrécia de Algeriz e Navarra",
            "Sequeira",
            "Sobreposta",
            "Tadim",
            "Tebosa",
            "Vilaça e Fradelos"
        ]
    },
    "52"=> {
        "name"=> "Bragança",
        "fregs"=> [
            "Alfaião",
            "Aveleda e Rio de Onor",
            "Babe",
            "Baçal",
            "Carragosa",
            "Castrelos e Carrazedo",
            "Castro de Avelãs",
            "Coelhoso",
            "Donai",
            "Espinhosela",
            "França",
            "Gimonde",
            "Gondesende",
            "Gostei",
            "Grijó de Parada",
            "Izeda, Calvelhe e Paradinha Nova",
            "Macedo do Mato",
            "Mós",
            "Nogueira",
            "Outeiro",
            "Parada e Faílde",
            "Parâmio",
            "Pinela",
            "Quintanilha",
            "Quintela de Lampaças",
            "Rabal",
            "Rebordainhos e Pombares",
            "Rebordãos",
            "Rio Frio e Milhão",
            "Salsas",
            "Samil",
            "Santa Comba de Rossas",
            "São Julião de Palácios e Deilão",
            "São Pedro de Sarracenos",
            "Sé, Santa Maria e Meixedo",
            "Sendas",
            "Serapicos",
            "Sortes",
            "Zoio"
        ]
    },
    "53"=> {
        "name"=> "Cabeceiras de Basto",
        "fregs"=> [
            "Abadim",
            "Alvite e Passos",
            "Arco de Baúlhe e Vila Nune",
            "Basto",
            "Bucos",
            "Cabeceiras de Basto",
            "Cavez",
            "Faia",
            "Gondiães e Vilar de Cunhas",
            "Pedraça",
            "Refojos de Basto, Outeiro e Painzela",
            "Rio Douro"
        ]
    },
    "54"=> {
        "name"=> "Cadaval",
        "fregs"=> [
            "Alguber",
            "Cadaval e Pêro Moniz",
            "Lamas e Cercal",
            "Painho e Figueiros",
            "Peral",
            "Vermelha",
            "Vilar"
        ]
    },
    "55"=> {
        "name"=> "Caldas da Rainha",
        "fregs"=> [
            "A dos Francos",
            "Alvorninha",
            "Caldas da Rainha - Nossa Senhora do Pópulo, Coto e São Gregório",
            "Caldas da Rainha - Santo Onofre e Serra do Bouro",
            "Carvalhal Benfeito",
            "Foz do Arelho",
            "Landal",
            "Nadadouro",
            "Salir de Matos",
            "Santa Catarina",
            "Tornada e Salir do Porto",
            "Vidais"
        ]
    },
    "56"=> {
        "name"=> "Calheta (Açores)",
        "fregs"=> [
            "Calheta",
            "Norte Pequeno",
            "Ribeira Seca",
            "Santo Antão (Calheta)",
            "Topo"
        ]
    },
    "57"=> {
        "name"=> "Calheta (Madeira)",
        "fregs"=> [
            "Arco da Calheta",
            "Calheta",
            "Estreito da Calheta",
            "Fajã da Ovelha",
            "Jardim do Mar",
            "Paul do Mar",
            "Ponta do Pargo",
            "Prazeres"
        ]
    },
    "58"=> {
        "name"=> "Câmara de Lobos",
        "fregs"=> [
            "Câmara de Lobos",
            "Curral das Freiras",
            "Estreito de Câmara de Lobos",
            "Jardim da Serra",
            "Quinta Grande"
        ]
    },
    "59"=> {
        "name"=> "Caminha",
        "fregs"=> [
            "Âncora",
            "Arga (Baixo, Cima e São João)",
            "Argela",
            "Caminha (Matriz) e Vilarelho",
            "Dem",
            "Gondar e Orbacém",
            "Lanhelas",
            "Moledo e Cristelo",
            "Riba de Âncora",
            "Seixas",
            "Venade e Azevedo",
            "Vila Praia de Âncora",
            "Vilar de Mouros",
            "Vile"
        ]
    },
    "60"=> {
        "name"=> "Campo Maior",
        "fregs"=> [
            "Nossa Senhora da Expectação",
            "Nossa Senhora da Graça dos Degolados",
            "São João Baptista"
        ]
    },
    "61"=> {
        "name"=> "Cantanhede",
        "fregs"=> [
            "Ançã",
            "Cadima",
            "Cantanhede e Pocariça",
            "Cordinhã",
            "Covões e Camarneira",
            "Febres",
            "Murtede",
            "Ourentã",
            "Portunhos e Outil",
            "Sanguinheira",
            "São Caetano",
            "Sepins e Bolho",
            "Tocha",
            "Vilamar e Corticeiro de Cima"
        ]
    },
    "62"=> {
        "name"=> "Carrazeda de Ansiães",
        "fregs"=> [
            "Amedo e Zedes",
            "Belver e Mogo de Malta",
            "Carrazeda de Ansiães",
            "Castanheiro do Norte e Ribalonga",
            "Fonte Longa",
            "Lavandeira, Beira Grande e Selores",
            "Linhares",
            "Marzagão",
            "Parambos",
            "Pereiros",
            "Pinhal do Norte",
            "Pombal",
            "Seixo de Ansiães",
            "Vilarinho da Castanheira"
        ]
    },
    "63"=> {
        "name"=> "Carregal do Sal",
        "fregs"=> [
            "Beijós",
            "Cabanas de Viriato",
            "Currelos, Papízios e Sobral",
            "Oliveira do Conde",
            "Parada"
        ]
    },
    "64"=> {
        "name"=> "Cartaxo",
        "fregs"=> [
            "Cartaxo e Vale da Pinta",
            "Ereira e Lapa",
            "Pontével",
            "Valada",
            "Vale da Pedra",
            "Vila Chã de Ourique"
        ]
    },
    "65"=> {
        "name"=> "Cascais",
        "fregs"=> [
            "Alcabideche",
            "Carcavelos e Parede",
            "Cascais e Estoril",
            "São Domingos de Rana"
        ]
    },
    "66"=> {
        "name"=> "Castanheira de Pêra",
        "fregs"=> [
            "Castanheira de Pêra e Coentral"
        ]
    },
    "67"=> {
        "name"=> "Castelo Branco",
        "fregs"=> [
            "Alcains",
            "Almaceda",
            "Benquerenças",
            "Castelo Branco",
            "Cebolais de Cima e Retaxo",
            "Escalos de Baixo e Mata",
            "Escalos de Cima e Lousa",
            "Freixial e Juncal do Campo",
            "Lardosa",
            "Louriçal do Campo",
            "Malpica do Tejo",
            "Monforte da Beira",
            "Ninho do Açor e Sobral do Campo",
            "Póvoa de Rio de Moinhos e Cafede",
            "Salgueiro do Campo",
            "Santo André das Tojeiras",
            "São Vicente da Beira",
            "Sarzedas",
            "Tinalhas"
        ]
    },
    "68"=> {
        "name"=> "Castelo de Paiva",
        "fregs"=> [
            "Fornos",
            "Raiva, Pedorido e Paraíso",
            "Real",
            "Santa Maria de Sardoura",
            "São Martinho de Sardoura",
            "Sobrado e Bairros"
        ]
    },
    "69"=> {
        "name"=> "Castelo de Vide",
        "fregs"=> [
            "Nossa Senhora da Graça de Póvoa e Meadas",
            "Santa Maria da Devesa",
            "Santiago Maior",
            "São João Baptista"
        ]
    },
    "70"=> {
        "name"=> "Castro Daire",
        "fregs"=> [
            "Almofala",
            "Cabril",
            "Castro Daire",
            "Cujó",
            "Gosende",
            "Mamouros, Alva e Ribolhos",
            "Mezio e Moura Morta",
            "Mões",
            "Moledo",
            "Monteiras",
            "Parada de Ester e Ester",
            "Pepim",
            "Picão e Ermida",
            "Pinheiro",
            "Reriz e Gafanhão",
            "São Joaninho"
        ]
    },
    "71"=> {
        "name"=> "Castro Marim",
        "fregs"=> [
            "Altura",
            "Azinhal",
            "Castro Marim",
            "Odeleite"
        ]
    },
    "72"=> {
        "name"=> "Castro Verde",
        "fregs"=> [
            "Castro Verde e Casével",
            "Entradas",
            "Santa Bárbara de Padrões",
            "São Marcos da Ataboeira"
        ]
    },
    "73"=> {
        "name"=> "Celorico da Beira",
        "fregs"=> [
            "Açores e Velosa",
            "Baraçal",
            "Carrapichana",
            "Casas do Soeiro",
            "Celorico (São Pedro e Santa Maria) e Vila Boa do Mondego",
            "Cortiçô da Serra, Vide Entre Vinhas e Salgueirais",
            "Forno Telheiro",
            "Lajeosa do Mondego",
            "Linhares",
            "Maçal do Chão",
            "Mesquitela",
            "Minhocal",
            "Prados",
            "Rapa e Cadafaz",
            "Ratoeira",
            "Vale de Azares"
        ]
    },
    "74"=> {
        "name"=> "Celorico de Basto",
        "fregs"=> [
            "Agilde",
            "Arnoia",
            "Basto (São Clemente)",
            "Borba de Montanha",
            "Britelo, Gémeos e Ourilhe",
            "Caçarilhe e Infesta",
            "Canedo de Basto e Corgo",
            "Carvalho e Basto (Santa Tecla)",
            "Codeçoso",
            "Fervença",
            "Moreira do Castelo",
            "Rego",
            "Ribas",
            "Vale de Bouro",
            "Veade, Gagos e Molares"
        ]
    },
    "75"=> {
        "name"=> "Chamusca",
        "fregs"=> [
            "Carregueira",
            "Chamusca e Pinheiro Grande",
            "Parreira e Chouto",
            "Ulme",
            "Vale de Cavalos"
        ]
    },
    "76"=> {
        "name"=> "Chaves",
        "fregs"=> [
            "Águas Frias",
            "Anelhe",
            "Bustelo",
            "Calvão e Soutelinho da Raia",
            "Cimo de Vila da Castanheira",
            "Curalha",
            "Eiras, São Julião de Montenegro e Cela",
            "Ervededo",
            "Faiões",
            "Lama de Arcos",
            "Loivos e Póvoa de Agrações",
            "Madalena e Samaiões",
            "Mairos",
            "Moreiras",
            "Nogueira da Montanha",
            "Oura",
            "Outeiro Seco",
            "Paradela",
            "Planalto de Monforte",
            "Redondelo",
            "Sanfins",
            "Santa Cruz/Trindade e Sanjurge",
            "Santa Leocádia",
            "Santa Maria Maior",
            "Santo António de Monforte",
            "Santo Estêvão",
            "São Pedro de Agostém",
            "São Vicente",
            "Soutelo e Seara Velha",
            "Travancas e Roriz",
            "Tronco",
            "Vale de Anta",
            "Vidago",
            "Vila Verde da Raia",
            "Vilar de Nantes",
            "Vilarelho da Raia",
            "Vilas Boas",
            "Vilela do Tâmega",
            "Vilela Seca"
        ]
    },
    "77"=> {
        "name"=> "Cinfães",
        "fregs"=> [
            "Alhões, Bustelo, Gralheira e Ramires",
            "Cinfães",
            "Espadanedo",
            "Ferreiros de Tendais",
            "Fornelos",
            "Moimenta",
            "Nespereira",
            "Oliveira do Douro",
            "Santiago de Piães",
            "São Cristóvão de Nogueira",
            "Souselo",
            "Tarouquela",
            "Tendais",
            "Travanca"
        ]
    },
    "78"=> {
        "name"=> "Coimbra",
        "fregs"=> [
            "Almalaguês",
            "Antuzede e Vil de Matos",
            "Assafarge e Antanhol",
            "Brasfemes",
            "Ceira",
            "Cernache",
            "Coimbra",
            "Eiras e São Paulo de Frades",
            "Santa Clara e Castelo Viegas",
            "Santo António dos Olivais",
            "São João do Campo",
            "São Martinho de Árvore e Lamarosa",
            "São Martinho do Bispo e Ribeira de Frades",
            "São Silvestre",
            "Souselas e Botão",
            "Taveiro, Ameal e Arzila",
            "Torres do Mondego",
            "Trouxemil e Torre de Vilela"
        ]
    },
    "79"=> {
        "name"=> "Condeixa-a-Nova",
        "fregs"=> [
            "Anobra",
            "Condeixa-a-Velha e Condeixa-a-Nova",
            "Ega",
            "Furadouro",
            "Sebal e Belide",
            "Vila Seca e Bem da Fé",
            "Zambujal"
        ]
    },
    "80"=> {
        "name"=> "Constância",
        "fregs"=> [
            "Constância",
            "Montalvo",
            "Santa Margarida da Coutada"
        ]
    },
    "81"=> {
        "name"=> "Coruche",
        "fregs"=> [
            "Biscainho",
            "Branca",
            "Coruche, Fajarda e Erra",
            "Couço",
            "Santana do Mato",
            "São José da Lamarosa"
        ]
    },
    "82"=> {
        "name"=> "Corvo",
        "fregs"=> [
            "O concelho de Vila do Corvo não tem qualquer freguesia.[2]"
        ]
    },
    "83"=> {
        "name"=> "Covilhã",
        "fregs"=> [
            "Aldeia de São Francisco de Assis",
            "Barco e Coutada",
            "Boidobra",
            "Cantar-Galo e Vila do Carvalho",
            "Casegas e Ourondo",
            "Cortes do Meio",
            "Covilhã e Canhoso",
            "Dominguizo",
            "Erada",
            "Ferro",
            "Orjais",
            "Paul",
            "Peraboa",
            "Peso e Vales do Rio",
            "São Jorge da Beira",
            "Sobral de São Miguel",
            "Teixoso e Sarzedo",
            "Tortosendo",
            "Unhais da Serra",
            "Vale Formoso e Aldeia do Souto",
            "Verdelhos"
        ]
    },
    "84"=> {
        "name"=> "Crato",
        "fregs"=> [
            "Aldeia da Mata",
            "Crato e Mártires, Flor da Rosa e Vale do Peso",
            "Gáfete",
            "Monte da Pedra"
        ]
    },
    "85"=> {
        "name"=> "Cuba",
        "fregs"=> [
            "Cuba",
            "Faro do Alentejo",
            "Vila Alva",
            "Vila Ruiva"
        ]
    },
    "86"=> {
        "name"=> "Elvas",
        "fregs"=> [
            "Assunção, Ajuda, Salvador e Santo Ildefonso",
            "Barbacena e Vila Fernando",
            "Caia, São Pedro e Alcáçova",
            "Santa Eulália",
            "São Brás e São Lourenço",
            "São Vicente e Ventosa",
            "Terrugem e Vila Boim"
        ]
    },
    "87"=> {
        "name"=> "Entroncamento",
        "fregs"=> [
            "Nossa Senhora de Fátima",
            "São João Baptista"
        ]
    },
    "88"=> {
        "name"=> "Espinho",
        "fregs"=> [
            "Anta e Guetim",
            "Espinho",
            "Paramos",
            "Silvalde"
        ]
    },
    "89"=> {
        "name"=> "Esposende",
        "fregs"=> [
            "Antas",
            "Apúlia e Fão",
            "Belinho e Mar",
            "Esposende, Marinhas e Gandra",
            "Fonte Boa e Rio Tinto",
            "Forjães",
            "Gemeses",
            "Palmeira de Faro e Curvos",
            "Vila Chã"
        ]
    },
    "90"=> {
        "name"=> "Estarreja",
        "fregs"=> [
            "Avanca",
            "Beduído e Veiros",
            "Canelas e Fermelã",
            "Pardilhó",
            "Salreu"
        ]
    },
    "91"=> {
        "name"=> "Estremoz",
        "fregs"=> [
            "Ameixial (Santa Vitória e São Bento)",
            "Arcos",
            "Estremoz (Santa Maria e Santo André)",
            "Évora Monte",
            "Glória",
            "São Bento do Cortiço e Santo Estêvão",
            "São Domingos de Ana Loura",
            "São Lourenço de Mamporcão e São Bento de Ana Loura",
            "Veiros"
        ]
    },
    "92"=> {
        "name"=> "Évora",
        "fregs"=> [
            "Bacelo e Senhora da Saúde",
            "Canaviais",
            "Évora (São Mamede, Sé, São Pedro e Santo Antão)",
            "Malagueira e Horta das Figueiras",
            "Nossa Senhora da Graça do Divor",
            "Nossa Senhora da Tourega e Nossa Senhora de Guadalupe",
            "Nossa Senhora de Machede",
            "São Bento do Mato",
            "São Manços e São Vicente do Pigeiro",
            "São Miguel de Machede",
            "São Sebastião da Giesteira e Nossa Senhora da Boa Fé",
            "Torre de Coelheiros"
        ]
    },
    "93"=> {
        "name"=> "Fafe",
        "fregs"=> [
            "Aboim, Felgueiras, Gontim e Pedraído",
            "Agrela e Serafão",
            "Antime e Silvares (São Clemente)",
            "Ardegão, Arnozela e Seidões",
            "Armil",
            "Cepães e Fareja",
            "Estorãos",
            "Fafe",
            "Fornelos",
            "Freitas e Vila Cova",
            "Golães",
            "Medelo",
            "Monte e Queimadela",
            "Moreira do Rei e Várzea Cova",
            "Passos",
            "Quinchães",
            "Regadas",
            "Revelhe",
            "Ribeiros",
            "Santa Cristina de Arões",
            "São Gens",
            "São Martinho de Silvares",
            "São Romão de Arões",
            "Travassós",
            "Vinhós"
        ]
    },
    "94"=> {
        "name"=> "Faro",
        "fregs"=> [
            "Conceição e Estoi",
            "Faro (Sé e São Pedro)",
            "Montenegro",
            "Santa Bárbara de Nexe"
        ]
    },
    "95"=> {
        "name"=> "Felgueiras",
        "fregs"=> [
            "Aião",
            "Airães",
            "Friande",
            "Idães",
            "Jugueiros",
            "Macieira da Lixa e Caramos",
            "Margaride, Várzea, Lagares, Varziela e Moure",
            "Pedreira, Rande e Sernande",
            "Penacova",
            "Pinheiro",
            "Pombeiro de Ribavizela",
            "Refontoura",
            "Regilde",
            "Revinhade",
            "Sendim",
            "Torrados e Sousa",
            "Unhão e Lordelo",
            "Vila Cova da Lixa e Borba de Godim",
            "Vila Fria e Vizela (São Jorge)",
            "Vila Verde e Santão"
        ]
    },
    "96"=> {
        "name"=> "Ferreira do Alentejo",
        "fregs"=> [
            "Alfundão e Peroguarda",
            "Ferreira do Alentejo e Canhestros",
            "Figueira dos Cavaleiros",
            "Odivelas"
        ]
    },
    "97"=> {
        "name"=> "Ferreira do Zêzere",
        "fregs"=> [
            "Águas Belas",
            "Areias e Pias",
            "Beco",
            "Chãos",
            "Ferreira do Zêzere",
            "Igreja Nova do Sobral",
            "Nossa Senhora do Pranto"
        ]
    },
    "98"=> {
        "name"=> "Figueira da Foz",
        "fregs"=> [
            "Alhadas",
            "Alqueidão",
            "Bom Sucesso",
            "Buarcos",
            "Ferreira-a-Nova",
            "Lavos",
            "Maiorca",
            "Marinha das Ondas",
            "Moinhos da Gândara",
            "Paião",
            "Quiaios",
            "São Pedro",
            "Tavarede",
            "Vila Verde"
        ]
    },
    "99"=> {
        "name"=> "Figueira de Castelo Rodrigo",
        "fregs"=> [
            "Algodres, Vale de Afonsinho e Vilar de Amargo",
            "Almofala e Escarigo",
            "Castelo Rodrigo",
            "Cinco Vilas e Reigada",
            "Colmeal e Vilar Torpim",
            "Escalhão",
            "Figueira de Castelo Rodrigo",
            "Freixeda do Torrão, Quintã de Pêro Martins e Penha de Águia",
            "Mata de Lobos",
            "Vermiosa"
        ]
    },
    "100"=> {
        "name"=> "Figueiró dos Vinhos",
        "fregs"=> [
            "Aguda",
            "Arega",
            "Campelo",
            "Figueiró dos Vinhos e Bairradas"
        ]
    },
    "101"=> {
        "name"=> "Fornos de Algodres",
        "fregs"=> [
            "Algodres",
            "Casal Vasco",
            "Cortiçô e Vila Chã",
            "Figueiró da Granja",
            "Fornos de Algodres",
            "Infias",
            "Juncais, Vila Ruiva e Vila Soeiro do Chão",
            "Maceira",
            "Matança",
            "Muxagata",
            "Queiriz",
            "Sobral Pichorro e Fuinhas"
        ]
    },
    "102"=> {
        "name"=> "Freixo de Espada à Cinta",
        "fregs"=> [
            "Freixo de Espada à Cinta e Mazouco",
            "Lagoaça e Fornos",
            "Ligares",
            "Poiares"
        ]
    },
    "103"=> {
        "name"=> "Fronteira",
        "fregs"=> [
            "Cabeço de Vide",
            "Fronteira",
            "São Saturnino"
        ]
    },
    "104"=> {
        "name"=> "Funchal",
        "fregs"=> [
            "Funchal (Santa Luzia)",
            "Funchal (Santa Maria Maior)",
            "Funchal (São Pedro)",
            "Funchal (Sé)",
            "Imaculado Coração de Maria",
            "Nossa Senhora do Monte",
            "Santo António",
            "São Gonçalo",
            "São Martinho",
            "São Roque"
        ]
    },
    "105"=> {
        "name"=> "Fundão",
        "fregs"=> [
            "Alcaide",
            "Alcaria",
            "Alcongosta",
            "Alpedrinha",
            "Barroca",
            "Bogas de Cima",
            "Capinha",
            "Castelejo",
            "Castelo Novo",
            "Enxames",
            "Fatela",
            "Fundão, Valverde, Donas, Aldeia de Joanes e Aldeia Nova do Cabo",
            "Janeiro de Cima e Bogas de Baixo",
            "Lavacolhos",
            "Orca",
            "Pêro Viseu",
            "Póvoa de Atalaia e Atalaia do Campo",
            "Silvares",
            "Soalheira",
            "Souto da Casa",
            "Telhado",
            "Três Povos",
            "Vale de Prazeres e Mata da Rainha"
        ]
    },
    "106"=> {
        "name"=> "Gavião",
        "fregs"=> [
            "Belver",
            "Comenda",
            "Gavião e Atalaia",
            "Margem"
        ]
    },
    "107"=> {
        "name"=> "Góis",
        "fregs"=> [
            "Alvares",
            "Cadafaz e Colmeal",
            "Góis",
            "Vila Nova do Ceira"
        ]
    },
    "108"=> {
        "name"=> "Golegã",
        "fregs"=> [
            "Azinhaga",
            "Golegã",
            "Pombalinho"
        ]
    },
    "109"=> {
        "name"=> "Gondomar",
        "fregs"=> [
            "Baguim do Monte",
            "Fânzeres e São Pedro da Cova",
            "Foz do Sousa e Covelo",
            "Gondomar (São Cosme), Valbom e Jovim",
            "Lomba",
            "Melres e Medas",
            "Rio Tinto"
        ]
    },
    "110"=> {
        "name"=> "Gouveia",
        "fregs"=> [
            "Aldeias e Mangualde da Serra",
            "Arcozelo",
            "Cativelos",
            "Figueiró da Serra e Freixo da Serra",
            "Folgosinho",
            "Gouveia (São Pedro e São Julião)",
            "Melo e Nabais",
            "Moimenta da Serra e Vinhó",
            "Nespereira",
            "Paços da Serra",
            "Ribamondego",
            "Rio Torto e Lagarinhos",
            "São Paio",
            "Vila Cortês da Serra",
            "Vila Franca da Serra",
            "Vila Nova de Tazem"
        ]
    },
    "111"=> {
        "name"=> "Grândola",
        "fregs"=> [
            "Azinheira dos Barros e São Mamede do Sádão",
            "Carvalhal",
            "Grândola e Santa Margarida da Serra",
            "Melides"
        ]
    },
    "112"=> {
        "name"=> "Guarda",
        "fregs"=> [
            "Adão",
            "Aldeia do Bispo",
            "Aldeia Viçosa",
            "Alvendre",
            "Arrifana",
            "Avelãs da Ribeira",
            "Avelãs de Ambom e Rocamondo",
            "Benespera",
            "Casal de Cinza",
            "Castanheira",
            "Cavadoude",
            "Codesseiro",
            "Corujeira e Trinta",
            "Faia",
            "Famalicão",
            "Fernão Joanes",
            "Gonçalo",
            "Gonçalo Bocas",
            "Guarda",
            "Jarmelo São Miguel",
            "Jarmelo São Pedro",
            "João Antão",
            "Maçainhas",
            "Marmeleiro",
            "Meios",
            "Mizarela, Pêro Soares e Vila Soeiro",
            "Panoias de Cima",
            "Pega",
            "Pera do Moço",
            "Porto da Carne",
            "Pousade e Albardo",
            "Ramela",
            "Rochoso e Monte Margarida",
            "Santana da Azinha",
            "Sobral da Serra",
            "Vale de Estrela",
            "Valhelhas",
            "Vela",
            "Videmonte",
            "Vila Cortês do Mondego",
            "Vila Fernando",
            "Vila Franca do Deão",
            "Vila Garcia"
        ]
    },
    "113"=> {
        "name"=> "Guimarães",
        "fregs"=> [
            "Abação e Gémeos",
            "Airão e Vermil",
            "Aldão",
            "Arosa e Castelões",
            "Atães e Rendufe",
            "Azurém",
            "Barco",
            "Briteiros (Santo Estêvão) e Donim",
            "Briteiros (São Salvador e Santa Leocádia)",
            "Brito",
            "Caldelas",
            "Candoso (São Martinho)",
            "Candoso (São Tiago) e Mascotelos",
            "Conde e Gandarela",
            "Costa",
            "Creixomil",
            "Fermentões",
            "Gonça",
            "Gondar",
            "Guardizela",
            "Infantas",
            "Leitões, Oleiros e Figueiredo",
            "Longos",
            "Lordelo",
            "Mesão Frio",
            "Moreira de Cónegos",
            "Nespereira",
            "Oliveira, São Paio e São Sebastião",
            "Pencelo",
            "Pinheiro",
            "Polvoreira",
            "Ponte",
            "Prazins (Santa Eufémia)",
            "Prazins (Santo Tirso) e Corvite",
            "Ronfe",
            "Sande (São Lourenço) e Balazar",
            "Sande (São Martinho)",
            "Sande (Vila Nova e São Clemente)",
            "São Torcato",
            "Selho (São Cristóvão)",
            "Selho (São Jorge)",
            "Selho (São Lourenço) e Gominhães",
            "Serzedelo",
            "Serzedo e Calvos",
            "Silvares",
            "Souto e Gondomar",
            "Tabuadelo e São Faustino",
            "Urgezes"
        ]
    },
    "114"=> {
        "name"=> "Horta",
        "fregs"=> [
            "Capelo",
            "Castelo Branco",
            "Cedros",
            "Feteira",
            "Flamengos",
            "Horta (Angústias)",
            "Horta (Conceição)",
            "Horta (Matriz)",
            "Pedro Miguel",
            "Praia do Almoxarife",
            "Praia do Norte",
            "Ribeirinha",
            "Salão"
        ]
    },
    "115"=> {
        "name"=> "Idanha-a-Nova",
        "fregs"=> [
            "Alcafozes",
            "Aldeia de Santa Margarida",
            "Idanha-a-Nova",
            "Idanha-a-Velha",
            "Ladoeiro",
            "Medelim",
            "Monfortinho",
            "Monsanto",
            "Oledo",
            "Penha Garcia",
            "Proença-a-Velha",
            "Rosmaninhal",
            "Salvaterra do Extremo",
            "São Miguel de Acha",
            "Segura",
            "Toulões",
            "Zebreira"
        ]
    },
    "116"=> {
        "name"=> "Ílhavo",
        "fregs"=> [
            "Gafanha da Encarnação",
            "Gafanha da Nazaré",
            "Gafanha do Carmo",
            "Ílhavo"
        ]
    },
    "117"=> {
        "name"=> "Lagoa",
        "fregs"=> [
            "Estômbar e Parchal",
            "Ferragudo",
            "Lagoa e Carvoeiro",
            "Porches"
        ]
    },
    "118"=> {
        "name"=> "Lagoa (Açores)",
        "fregs"=> [
            "Água de Pau",
            "Cabouco",
            "Lagoa (Nossa Senhora do Rosário)",
            "Lagoa (Santa Cruz)",
            "Ribeira Chã"
        ]
    },
    "119"=> {
        "name"=> "Lagos",
        "fregs"=> [
            "Bensafrim e Barão de São João",
            "Lagos (São Sebastião e Santa Maria)",
            "Luz",
            "Odiáxere"
        ]
    },
    "120"=> {
        "name"=> "Lajes das Flores",
        "fregs"=> [
            "Fajã Grande",
            "Fajãzinha",
            "Fazenda",
            "Lajedo",
            "Lajes das Flores",
            "Lomba",
            "Mosteiro"
        ]
    },
    "121"=> {
        "name"=> "Lajes do Pico",
        "fregs"=> [
            "Calheta de Nesquim",
            "Lajes do Pico",
            "Piedade",
            "Ribeiras",
            "Ribeirinha",
            "São João"
        ]
    },
    "122"=> {
        "name"=> "Lamego",
        "fregs"=> [
            "Avões",
            "Bigorne, Magueija e Pretarouca",
            "Britiande",
            "Cambres",
            "Cepões, Meijinhos e Melcões",
            "Ferreirim",
            "Ferreiros de Avões",
            "Figueira",
            "Lalim",
            "Lamego (Almacave e Sé)",
            "Lazarim",
            "Parada do Bispo e Valdigem",
            "Penajoia",
            "Penude",
            "Samodães",
            "Sande",
            "Várzea de Abrunhais",
            "Vila Nova de Souto d'El-Rei"
        ]
    },
    "123"=> {
        "name"=> "Leiria",
        "fregs"=> [
            "Amor",
            "Arrabal",
            "Bajouca",
            "Bidoeira de Cima",
            "Caranguejeira",
            "Coimbrão",
            "Colmeias e Memória",
            "Leiria, Pousos, Barreira e Cortes",
            "Maceira",
            "Marrazes e Barosa",
            "Milagres",
            "Monte Real e Carvide",
            "Monte Redondo e Carreira",
            "Parceiros e Azoia",
            "Regueira de Pontes",
            "Santa Catarina da Serra e Chainça",
            "Santa Eufémia e Boa Vista",
            "Souto da Carpalhosa e Ortigosa"
        ]
    },
    "124"=> {
        "name"=> "Lisboa",
        "fregs"=> [
            "Ajuda",
            "Alcântara",
            "Alvalade",
            "Areeiro",
            "Arroios",
            "Avenidas Novas",
            "Beato",
            "Belém",
            "Benfica",
            "Campo de Ourique",
            "Campolide",
            "Carnide",
            "Estrela",
            "Lumiar",
            "Marvila",
            "Misericórdia",
            "Olivais",
            "Parque das Nações",
            "Penha de França",
            "Santa Clara",
            "Santa Maria Maior",
            "Santo António",
            "São Domingos de Benfica",
            "São Vicente"
        ]
    },
    "125"=> {
        "name"=> "Loulé",
        "fregs"=> [
            "Almancil",
            "Alte",
            "Ameixial",
            "Boliqueime",
            "Quarteira",
            "Querença, Tôr e Benafim",
            "Salir",
            "São Clemente (Loulé)",
            "São Sebastião (Loulé)"
        ]
    },
    "126"=> {
        "name"=> "Loures",
        "fregs"=> [
            "Bucelas",
            "Camarate, Unhos e Apelação",
            "Fanhões",
            "Loures",
            "Lousa",
            "Moscavide e Portela",
            "Sacavém e Prior Velho",
            "Santa Iria de Azoia, São João da Talha e Bobadela",
            "Santo Antão e São Julião do Tojal",
            "Santo António dos Cavaleiros e Frielas"
        ]
    },
    "127"=> {
        "name"=> "Lourinhã",
        "fregs"=> [
            "Lourinhã e Atalaia",
            "Miragaia e Marteleira",
            "Moita dos Ferreiros",
            "Reguengo Grande",
            "Ribamar",
            "Santa Bárbara",
            "São Bartolomeu dos Galegos e Moledo",
            "Vimeiro"
        ]
    },
    "128"=> {
        "name"=> "Lousã",
        "fregs"=> [
            "Casal de Ermio",
            "Foz de Arouce",
            "Gândaras",
            "Lousã",
            "Serpins",
            "Vilarinho"
        ]
    },
    "129"=> {
        "name"=> "Lousada",
        "fregs"=> [
            "Alvarenga",
            "Aveleda",
            "Santo Estêvão de Barrosas",
            "Boim",
            "Caíde de Rei",
            "Casais",
            "Cernadelo",
            "Covas",
            "Cristelos",
            "Figueiras",
            "Lodares",
            "Lousada (Santa Margarida)",
            "Lousada (São Miguel)",
            "Lustosa",
            "Macieira",
            "Meinedo",
            "Nespereira",
            "Nevogilde",
            "Nogueira",
            "Ordem",
            "Pias",
            "Silvares",
            "Sousela",
            "Torno",
            "Vilar do Torno e Alentém"
        ]
    },
    "130"=> {
        "name"=> "Mação",
        "fregs"=> [
            "Aboboreira",
            "Amêndoa",
            "Cardigos",
            "Carvoeiro",
            "Envendos",
            "Mação",
            "Ortiga",
            "Penhascoso"
        ]
    },
    "131"=> {
        "name"=> "Macedo de Cavaleiros",
        "fregs"=> [
            "Ala",
            "Amendoeira",
            "Arcas",
            "Bagueixe",
            "Bornes",
            "Burga",
            "Carrapatas",
            "Castelãos",
            "Chacim",
            "Cortiços",
            "Corujas",
            "Edroso",
            "Espadanedo",
            "Ferreira",
            "Grijó",
            "Lagoa",
            "Lamalonga",
            "Lamas de Podence",
            "Lombo",
            "Macedo de Cavaleiros",
            "Morais",
            "Murçós",
            "Olmos",
            "Peredo",
            "Podence",
            "Salselas",
            "Santa Combinha",
            "Sezulfe",
            "Soutelo Mourisco",
            "Talhas",
            "Talhinhas",
            "Vale Benfeito",
            "Vale da Porca",
            "Vale de Prados",
            "Vilar do Monte",
            "Vilarinho de Agrochão",
            "Vilarinho do Monte",
            "Vinhas"
        ]
    },
    "132"=> {
        "name"=> "Machico",
        "fregs"=> [
            "Água de Pena",
            "Caniçal",
            "Machico",
            "Porto da Cruz",
            "Santo António da Serra"
        ]
    },
    "133"=> {
        "name"=> "Madalena",
        "fregs"=> [
            "Bandeiras",
            "Candelária",
            "Criação Velha",
            "Madalena",
            "São Caetano",
            "São Mateus"
        ]
    },
    "134"=> {
        "name"=> "Mafra",
        "fregs"=> [
            "Azueira",
            "Carvoeira",
            "Cheleiros",
            "Encarnação",
            "Enxara do Bispo",
            "Ericeira",
            "Gradil",
            "Igreja Nova",
            "Mafra",
            "Malveira",
            "Milharado",
            "Santo Estêvão das Galés",
            "Santo Isidoro",
            "São Miguel de Alcainça",
            "Sobral da Abelheira",
            "Venda do Pinheiro",
            "Vila Franca do Rosário"
        ]
    },
    "135"=> {
        "name"=> "Maia",
        "fregs"=> [
            "Águas Santas",
            "Barca",
            "Folgosa",
            "Gemunde",
            "Gondim",
            "Gueifães",
            "Maia",
            "Milheirós",
            "Moreira",
            "Nogueira",
            "Pedrouços",
            "Avioso (Santa Maria)",
            "Avioso (São Pedro)",
            "São Pedro Fins",
            "Silva Escura",
            "Vermoim",
            "Vila Nova da Telha"
        ]
    },
    "136"=> {
        "name"=> "Mangualde",
        "fregs"=> [
            "Abrunhosa-a-Velha",
            "Alcafache",
            "Chãs de Tavares",
            "Cunha Alta",
            "Cunha Baixa",
            "Espinho",
            "Fornos de Maceira Dão",
            "Freixiosa",
            "Lobelhe do Mato",
            "Mangualde",
            "Mesquitela",
            "Moimenta de Maceira Dão",
            "Póvoa de Cervães",
            "Quintela de Azurara",
            "Santiago de Cassurrães",
            "São João da Fresta",
            "Travanca de Tavares",
            "Várzea de Tavares"
        ]
    },
    "137"=> {
        "name"=> "Manteigas",
        "fregs"=> [
            "Manteigas (Santa Maria)",
            "Manteigas (São Pedro)",
            "Sameiro",
            "Vale de Amoreira"
        ]
    },
    "138"=> {
        "name"=> "Marco de Canaveses",
        "fregs"=> [
            "Alpendurada e Matos",
            "Ariz",
            "Avessadas",
            "Banho e Carvalhosa",
            "Constance",
            "Favões",
            "Folhada",
            "Fornos",
            "Freixo",
            "Magrelos",
            "Manhuncelos",
            "Maureles",
            "Paços de Gaiolo",
            "Paredes de Viadores",
            "Penha Longa",
            "Rio de Galinhas",
            "Rosem",
            "Sande",
            "Santo Isidoro",
            "São Lourenço do Douro",
            "São Nicolau",
            "Soalhães",
            "Sobretâmega",
            "Tabuado",
            "Torrão",
            "Toutosa",
            "Tuias",
            "Várzea da Ovelha e Aliviada",
            "Várzea do Douro",
            "Vila Boa de Quires",
            "Vila Boa do Bispo"
        ]
    },
    "139"=> {
        "name"=> "Marinha Grande",
        "fregs"=> [
            "Marinha Grande",
            "Moita",
            "Vieira de Leiria"
        ]
    },
    "140"=> {
        "name"=> "Marvão",
        "fregs"=> [
            "Beirã",
            "Santa Maria de Marvão",
            "Santo António das Areias",
            "São Salvador da Aramenha"
        ]
    },
    "141"=> {
        "name"=> "Matosinhos",
        "fregs"=> [
            "Custóias",
            "Guifões",
            "Lavra",
            "Leça da Palmeira",
            "Leça do Balio",
            "Matosinhos",
            "Perafita",
            "Santa Cruz do Bispo",
            "São Mamede de Infesta",
            "Senhora da Hora"
        ]
    },
    "142"=> {
        "name"=> "Mealhada",
        "fregs"=> [
            "Antes",
            "Barcouço",
            "Casal Comba",
            "Luso",
            "Mealhada",
            "Pampilhosa",
            "Vacariça",
            "Ventosa do Bairro"
        ]
    },
    "143"=> {
        "name"=> "Mêda",
        "fregs"=> [
            "Aveloso",
            "Barreira",
            "Carvalhal",
            "Casteição",
            "Coriscada",
            "Fonte Longa",
            "Longroiva",
            "Marialva",
            "Meda",
            "Outeiro de Gatos",
            "Pai Penela",
            "Poço do Canto",
            "Prova",
            "Rabaçal",
            "Ranhados",
            "Vale Flor"
        ]
    },
    "144"=> {
        "name"=> "Melgaço",
        "fregs"=> [
            "Alvaredo",
            "Castro Laboreiro",
            "Chaviães",
            "Cousso",
            "Cristoval",
            "Cubalhão",
            "Fiães",
            "Gave",
            "Lamas de Mouro",
            "Paços",
            "Paderne",
            "Parada do Monte",
            "Penso",
            "Prado",
            "Remoães",
            "Roussas",
            "São Paio",
            "Vila"
        ]
    },
    "145"=> {
        "name"=> "Mértola",
        "fregs"=> [
            "Alcaria Ruiva",
            "Corte do Pinto",
            "Espírito Santo",
            "Mértola",
            "Santana de Cambas",
            "São João dos Caldeireiros",
            "São Miguel do Pinheiro",
            "São Pedro de Solis",
            "São Sebastião dos Carros"
        ]
    },
    "146"=> {
        "name"=> "Mesão Frio",
        "fregs"=> [
            "Barqueiros",
            "Cidadelhe",
            "Mesão Frio (Santa Cristina)",
            "Mesão Frio (São Nicolau)",
            "Oliveira",
            "Vila Jusã",
            "Vila Marim"
        ]
    },
    "147"=> {
        "name"=> "Mira",
        "fregs"=> [
            "Carapelhos",
            "Mira",
            "Praia de Mira",
            "Seixo"
        ]
    },
    "148"=> {
        "name"=> "Miranda do Corvo",
        "fregs"=> [
            "Lamas",
            "Miranda do Corvo",
            "Rio Vide",
            "Semide",
            "Vila Nova"
        ]
    },
    "149"=> {
        "name"=> "Miranda do Douro",
        "fregs"=> [
            "Águas Vivas",
            "Atenor",
            "Cicouro",
            "Constantim",
            "Duas Igrejas",
            "Genísio",
            "Ifanes",
            "Malhadas",
            "Miranda do Douro",
            "Palaçoulo",
            "Paradela",
            "Picote",
            "Póvoa",
            "São Martinho de Angueira",
            "Sendim",
            "Silva",
            "Vila Chã de Braciosa"
        ]
    },
    "150"=> {
        "name"=> "Mirandela",
        "fregs"=> [
            "Abambres",
            "Abreiro",
            "Aguieiras",
            "Alvites",
            "Avantos",
            "Avidagos",
            "Barcel",
            "Bouça",
            "Cabanelas",
            "Caravelas",
            "Carvalhais",
            "Cedães",
            "Cobro",
            "Fradizela",
            "Franco",
            "Frechas",
            "Freixeda",
            "Lamas de Orelhão",
            "Marmelos",
            "Mascarenhas",
            "Mirandela",
            "Múrias",
            "Navalho",
            "Passos",
            "Pereira",
            "Romeu",
            "São Pedro Velho",
            "São Salvador",
            "Suçães",
            "Torre de Dona Chama",
            "Vale de Asnes",
            "Vale de Gouvinhas",
            "Vale de Salgueiro",
            "Vale de Telhas",
            "Valverde",
            "Vila Boa",
            "Vila Verde"
        ]
    },
    "151"=> {
        "name"=> "Mogadouro",
        "fregs"=> [
            "Azinhoso",
            "Bemposta",
            "Bruçó",
            "Brunhoso",
            "Brunhozinho",
            "Castanheira",
            "Castelo Branco",
            "Castro Vicente",
            "Meirinhos",
            "Mogadouro",
            "Paradela",
            "Penas Roias",
            "Peredo da Bemposta",
            "Remondes",
            "Saldanha",
            "Sanhoane",
            "São Martinho do Peso",
            "Soutelo",
            "Tó",
            "Travanca",
            "Urrós",
            "Vale da Madre",
            "Vale de Porco",
            "Valverde",
            "Ventozelo",
            "Vila de Ala",
            "Vilar de Rei",
            "Vilarinho dos Galegos"
        ]
    },
    "152"=> {
        "name"=> "Moimenta da Beira",
        "fregs"=> [
            "Aldeia de Nacomba",
            "Alvite",
            "Arcozelos",
            "Ariz",
            "Baldos",
            "Cabaços",
            "Caria",
            "Castelo",
            "Leomil",
            "Moimenta da Beira",
            "Nagosa",
            "Paradinha",
            "Passô",
            "Pera Velha",
            "Peva",
            "Rua",
            "Sarzedo",
            "Segões",
            "Sever",
            "Vilar"
        ]
    },
    "153"=> {
        "name"=> "Moita",
        "fregs"=> [
            "Alhos Vedros",
            "Baixa da Banheira",
            "Gaio-Rosário",
            "Moita",
            "Sarilhos Pequenos",
            "Vale da Amoreira"
        ]
    },
    "154"=> {
        "name"=> "Monção",
        "fregs"=> [
            "Abedim",
            "Anhões",
            "Badim",
            "Barbeita",
            "Barroças e Taias",
            "Bela",
            "Cambeses",
            "Ceivães",
            "Cortes",
            "Lapela",
            "Lara",
            "Longos Vales",
            "Lordelo",
            "Luzio",
            "Mazedo",
            "Merufe",
            "Messegães",
            "Monção",
            "Moreira",
            "Parada",
            "Pias",
            "Pinheiros",
            "Podame",
            "Portela",
            "Riba de Mouro",
            "Sá",
            "Sago",
            "Segude",
            "Tangil",
            "Troporiz",
            "Troviscoso",
            "Trute",
            "Valadares"
        ]
    },
    "155"=> {
        "name"=> "Monchique",
        "fregs"=> [
            "Alferce",
            "Marmelete",
            "Monchique"
        ]
    },
    "156"=> {
        "name"=> "Mondim de Basto",
        "fregs"=> [
            "Atei",
            "Bilhó",
            "Campanhó",
            "Ermelo",
            "Mondim de Basto",
            "Paradança",
            "Pardelhas",
            "Vilar de Ferreiros"
        ]
    },
    "157"=> {
        "name"=> "Monforte",
        "fregs"=> [
            "Assumar",
            "Monforte",
            "Santo Aleixo",
            "Vaiamonte"
        ]
    },
    "158"=> {
        "name"=> "Montalegre",
        "fregs"=> [
            "Cabril",
            "Cambeses do Rio",
            "Cervos",
            "Chã",
            "Contim",
            "Covelães",
            "Covelo do Gerês",
            "Donões",
            "Ferral",
            "Fervidelas",
            "Fiães do Rio",
            "Gralhas",
            "Meixedo",
            "Meixide",
            "Montalegre",
            "Morgade",
            "Mourilhe",
            "Negrões",
            "Outeiro",
            "Padornelos",
            "Padroso",
            "Paradela",
            "Pitões das Júnias",
            "Pondras",
            "Reigoso",
            "Salto",
            "Santo André",
            "Sarraquinhos",
            "Sezelhe",
            "Solveira",
            "Tourém",
            "Venda Nova",
            "Viade de Baixo",
            "Vila da Ponte",
            "Vilar de Perdizes"
        ]
    },
    "159"=> {
        "name"=> "Montemor-o-Novo",
        "fregs"=> [
            "Cabrela",
            "Ciborro",
            "Cortiçadas",
            "Foros de Vale de Figueira",
            "Lavre",
            "Nossa Senhora da Vila",
            "Nossa Senhora do Bispo",
            "Santiago do Escoural",
            "São Cristóvão",
            "Silveiras"
        ]
    },
    "160"=> {
        "name"=> "Montemor-o-Velho",
        "fregs"=> [
            "Abrunheira",
            "Arazede",
            "Carapinheira",
            "Ereira",
            "Gatões",
            "Liceia",
            "Meãs do Campo",
            "Montemor-o-Velho",
            "Pereira",
            "Santo Varão",
            "Seixo de Gatões",
            "Tentúgal",
            "Verride",
            "Vila Nova da Barca"
        ]
    },
    "161"=> {
        "name"=> "Montijo",
        "fregs"=> [
            "Afonsoeiro",
            "Alto Estanqueiro - Jardia",
            "Atalaia",
            "Canha",
            "Montijo",
            "Pegões",
            "Santo Isidro de Pegões",
            "Sarilhos Grandes"
        ]
    },
    "162"=> {
        "name"=> "Mora",
        "fregs"=> [
            "Brotas",
            "Cabeção",
            "Mora",
            "Pavia"
        ]
    },
    "163"=> {
        "name"=> "Mortágua",
        "fregs"=> [
            "Almaça",
            "Cercosa",
            "Cortegaça",
            "Espinho",
            "Marmeleira",
            "Mortágua",
            "Pala",
            "Sobral",
            "Trezói",
            "Vale de Remígio"
        ]
    },
    "164"=> {
        "name"=> "Moura",
        "fregs"=> [
            "Amareleja",
            "Moura (Santo Agostinho)",
            "Moura (São João Baptista)",
            "Póvoa de São Miguel",
            "Safara",
            "Santo Aleixo da Restauração",
            "Santo Amador",
            "Sobral da Adiça"
        ]
    },
    "165"=> {
        "name"=> "Mourão",
        "fregs"=> [
            "Granja",
            "Luz",
            "Mourão"
        ]
    },
    "166"=> {
        "name"=> "Murça",
        "fregs"=> [
            "Candedo",
            "Carva",
            "Fiolhoso",
            "Jou",
            "Murça",
            "Noura",
            "Palheiros",
            "Valongo de Milhais",
            "Vilares"
        ]
    },
    "167"=> {
        "name"=> "Murtosa",
        "fregs"=> [
            "Bunheiro",
            "Monte",
            "Murtosa",
            "Torreira"
        ]
    },
    "168"=> {
        "name"=> "Nazaré",
        "fregs"=> [
            "Famalicão",
            "Nazaré",
            "Valado dos Frades"
        ]
    },
    "169"=> {
        "name"=> "Nelas",
        "fregs"=> [
            "Aguieira",
            "Canas de Senhorim",
            "Carvalhal Redondo",
            "Lapa do Lobo",
            "Moreira",
            "Nelas",
            "Santar",
            "Senhorim",
            "Vilar Seco"
        ]
    },
    "170"=> {
        "name"=> "Nisa",
        "fregs"=> [
            "Alpalhão",
            "Amieira do Tejo",
            "Arez",
            "Espírito Santo",
            "Montalvão",
            "Nossa Senhora da Graça",
            "Santana",
            "São Matias",
            "São Simão",
            "Tolosa"
        ]
    },
    "171"=> {
        "name"=> "Nordeste",
        "fregs"=> [
            "Achada",
            "Achadinha",
            "Algarvia",
            "Lomba da Fazenda",
            "Nordeste",
            "Salga",
            "Santana",
            "Santo António de Nordestinho",
            "São Pedro de Nordestinho"
        ]
    },
    "172"=> {
        "name"=> "Óbidos",
        "fregs"=> [
            "A dos Negros",
            "Amoreira",
            "Gaeiras",
            "Óbidos (Santa Maria)",
            "Óbidos (São Pedro)",
            "Olho Marinho",
            "Sobral da Lagoa",
            "Usseira",
            "Vau"
        ]
    },
    "173"=> {
        "name"=> "Odemira",
        "fregs"=> [
            "Bicos",
            "Boavista dos Pinheiros",
            "Colos",
            "Longueira / Almograve",
            "Luzianes-Gare",
            "Odemira (Santa Maria)",
            "Odemira (São Salvador)",
            "Pereiras-Gare",
            "Relíquias",
            "Saboia",
            "Santa Clara-a-Velha",
            "São Luís",
            "São Martinho das Amoreiras",
            "São Teotónio",
            "Vale de Santiago",
            "Vila Nova de Milfontes",
            "Zambujeira do Mar"
        ]
    },
    "174"=> {
        "name"=> "Odivelas",
        "fregs"=> [
            "Caneças",
            "Famões",
            "Odivelas",
            "Olival Basto",
            "Pontinha",
            "Póvoa de Santo Adrião",
            "Ramada"
        ]
    },
    "175"=> {
        "name"=> "Oeiras",
        "fregs"=> [
            "Algés",
            "Barcarena",
            "Carnaxide",
            "Caxias",
            "Cruz Quebrada - Dafundo",
            "Linda-a-Velha",
            "Oeiras e São Julião da Barra",
            "Paço de Arcos",
            "Porto Salvo",
            "Queijas"
        ]
    },
    "176"=> {
        "name"=> "Oleiros",
        "fregs"=> [
            "Álvaro",
            "Amieira",
            "Cambas",
            "Estreito",
            "Isna",
            "Madeirã",
            "Mosteiro",
            "Oleiros",
            "Orvalho",
            "Sarnadas de São Simão",
            "Sobral",
            "Vilar Barroco"
        ]
    },
    "177"=> {
        "name"=> "Olhão",
        "fregs"=> [
            "Fuseta",
            "Moncarapacho",
            "Olhão",
            "Pechão",
            "Quelfes"
        ]
    },
    "178"=> {
        "name"=> "Oliveira de Azeméis",
        "fregs"=> [
            "Carregosa",
            "Cesar",
            "Cucujães",
            "Fajões",
            "Loureiro",
            "Macieira de Sarnes",
            "Nogueira do Cravo e Pindelo",
            "Oliveira de Azeméis, Santiago de Riba-Ul, Ul, Macinhata da Seixa e Madail",
            "Ossela",
            "Pinheiro da Bemposta, Travanca e Palmaz",
            "São Martinho da Gândara",
            "São Roque"
        ]
    },
    "179"=> {
        "name"=> "Oliveira de Frades",
        "fregs"=> [
            "Arca",
            "Arcozelo das Maias",
            "Destriz",
            "Oliveira de Frades",
            "Pinheiro",
            "Reigoso",
            "Ribeiradio",
            "São João da Serra",
            "São Vicente de Lafões",
            "Sejães",
            "Souto de Lafões",
            "Varzielas"
        ]
    },
    "180"=> {
        "name"=> "Oliveira do Bairro",
        "fregs"=> [
            "Bustos",
            "Mamarrosa",
            "Oiã",
            "Oliveira do Bairro",
            "Palhaça",
            "Troviscal"
        ]
    },
    "181"=> {
        "name"=> "Oliveira do Hospital",
        "fregs"=> [
            "Aldeia das Dez",
            "Alvoco das Várzeas",
            "Avô",
            "Bobadela",
            "Ervedal",
            "Lagares",
            "Lagos da Beira",
            "Lajeosa",
            "Lourosa",
            "Meruge",
            "Nogueira do Cravo",
            "Oliveira do Hospital",
            "Penalva de Alva",
            "Santa Ovaia",
            "São Gião",
            "São Paio de Gramaços",
            "São Sebastião da Feira",
            "Seixo da Beira",
            "Travanca de Lagos",
            "Vila Franca da Beira",
            "Vila Pouca da Beira"
        ]
    },
    "182"=> {
        "name"=> "Ourém",
        "fregs"=> [
            "Alburitel",
            "Atouguia",
            "Casal dos Bernardos",
            "Caxarias",
            "Cercal",
            "Espite",
            "Fátima",
            "Formigais",
            "Freixianda",
            "Gondemaria",
            "Matas",
            "Nossa Senhora da Piedade",
            "Nossa Senhora das Misericórdias",
            "Olival",
            "Ribeira do Fárrio",
            "Rio de Couros",
            "Seiça",
            "Urqueira"
        ]
    },
    "183"=> {
        "name"=> "Ourique",
        "fregs"=> [
            "Conceição",
            "Garvão",
            "Ourique",
            "Panóias",
            "Santa Luzia",
            "Santana da Serra"
        ]
    },
    "184"=> {
        "name"=> "Ovar",
        "fregs"=> [
            "Cortegaça",
            "Esmoriz",
            "Maceda",
            "Ovar, São João, Arada e São Vicente de Pereira Jusã",
            "Válega"
        ]
    },
    "185"=> {
        "name"=> "Paços de Ferreira",
        "fregs"=> [
            "Arreigada",
            "Carvalhosa",
            "Codessos",
            "Eiriz",
            "Ferreira",
            "Figueiró",
            "Frazão",
            "Freamunde",
            "Lamoso",
            "Meixomil",
            "Modelos",
            "Paços de Ferreira",
            "Penamaior",
            "Raimonda",
            "Sanfins de Ferreira",
            "Seroa"
        ]
    },
    "186"=> {
        "name"=> "Palmela",
        "fregs"=> [
            "Marateca",
            "Palmela",
            "Pinhal Novo",
            "Poceirão",
            "Quinta do Anjo"
        ]
    },
    "187"=> {
        "name"=> "Pampilhosa da Serra",
        "fregs"=> [
            "Cabril",
            "Dornelas do Zêzere",
            "Fajão",
            "Janeiro de Baixo",
            "Machio",
            "Pampilhosa da Serra",
            "Pessegueiro",
            "Portela do Fojo",
            "Unhais-o-Velho",
            "Vidual"
        ]
    },
    "188"=> {
        "name"=> "Paredes",
        "fregs"=> [
            "Aguiar de Sousa",
            "Astromil",
            "Baltar",
            "Beire",
            "Besteiros",
            "Bitarães",
            "Castelões de Cepeda",
            "Cete",
            "Cristelo",
            "Duas Igrejas",
            "Gandra",
            "Gondalães",
            "Lordelo",
            "Louredo",
            "Madalena",
            "Mouriz",
            "Parada de Todeia",
            "Rebordosa",
            "Recarei",
            "Sobreira",
            "Sobrosa",
            "Vandoma",
            "Vila Cova de Carros",
            "Vilela"
        ]
    },
    "189"=> {
        "name"=> "Paredes de Coura",
        "fregs"=> [
            "Agualonga",
            "Bico",
            "Castanheira",
            "Cossourado",
            "Coura",
            "Cristelo",
            "Cunha",
            "Ferreira",
            "Formariz",
            "Infesta",
            "Insalde",
            "Linhares",
            "Mozelos",
            "Padornelo",
            "Parada",
            "Paredes de Coura",
            "Porreiras",
            "Resende",
            "Romarigães",
            "Rubiães",
            "Vascões"
        ]
    },
    "190"=> {
        "name"=> "Pedrógão Grande",
        "fregs"=> [
            "Graça",
            "Pedrógão Grande",
            "Vila Facaia"
        ]
    },
    "191"=> {
        "name"=> "Penacova",
        "fregs"=> [
            "Carvalho",
            "Figueira de Lorvão",
            "Friúmes e Paradela",
            "Lorvão",
            "Oliveira do Mondego e Travanca do Mondego",
            "Penacova",
            "São Pedro de Alva e São Paio do Mondego",
            "Sazes do Lorvão"
        ]
    },
    "192"=> {
        "name"=> "Penafiel",
        "fregs"=> [
            "Abragão",
            "Boelhe",
            "Bustelo",
            "Cabeça Santa",
            "Canelas",
            "Capela",
            "Castelões",
            "Croca",
            "Duas Igrejas",
            "Eja",
            "Figueira",
            "Fonte Arcada",
            "Galegos",
            "Guilhufe",
            "Irivo",
            "Lagares",
            "Luzim",
            "Marecos",
            "Milhundos",
            "Novelas",
            "Oldrões",
            "Paço de Sousa",
            "Paredes",
            "Penafiel",
            "Perozelo",
            "Pinheiro",
            "Portela",
            "Rans",
            "Recezinhos (São Mamede)",
            "Recezinhos (São Martinho)",
            "Rio de Moinhos",
            "Rio Mau",
            "Santa Marta",
            "Santiago de Subarrifana",
            "Sebolido",
            "Urrô",
            "Valpedre",
            "Vila Cova"
        ]
    },
    "193"=> {
        "name"=> "Penalva do Castelo",
        "fregs"=> [
            "Antas",
            "Castelo de Penalva",
            "Esmolfe",
            "Germil",
            "Ínsua",
            "Lusinde",
            "Mareco",
            "Matela",
            "Pindo",
            "Real",
            "Sezures",
            "Trancozelos",
            "Vila Cova do Covelo"
        ]
    },
    "194"=> {
        "name"=> "Penamacor",
        "fregs"=> [
            "Águas",
            "Aldeia de João Pires",
            "Aldeia do Bispo",
            "Aranhas",
            "Bemposta",
            "Benquerença",
            "Meimão",
            "Meimoa",
            "Pedrógão de São Pedro",
            "Penamacor",
            "Salvador",
            "Vale da Senhora da Póvoa"
        ]
    },
    "195"=> {
        "name"=> "Penedono",
        "fregs"=> [
            "Antas",
            "Beselga",
            "Castainço",
            "Granja",
            "Ourozinho",
            "Penedono",
            "Penela da Beira",
            "Póvoa de Penela",
            "Souto"
        ]
    },
    "196"=> {
        "name"=> "Penela",
        "fregs"=> [
            "Cumieira",
            "Espinhal",
            "Penela (Santa Eufémia)",
            "Penela (São Miguel)",
            "Podentes",
            "Rabaçal"
        ]
    },
    "197"=> {
        "name"=> "Peniche",
        "fregs"=> [
            "Atouguia da Baleia",
            "Ferrel",
            "Peniche (Ajuda)",
            "Peniche (Conceição)",
            "Peniche (São Pedro)",
            "Serra d'El-Rei"
        ]
    },
    "198"=> {
        "name"=> "Peso da Régua",
        "fregs"=> [
            "Canelas",
            "Covelinhas",
            "Fontelas",
            "Galafura",
            "Godim",
            "Loureiro",
            "Moura Morta",
            "Peso da Régua",
            "Poiares",
            "Sedielos",
            "Vilarinho dos Freires",
            "Vinhós"
        ]
    },
    "199"=> {
        "name"=> "Pinhel",
        "fregs"=> [
            "Alverca da Beira",
            "Atalaia",
            "Azevo",
            "Bogalhal",
            "Bouça Cova",
            "Cerejo",
            "Cidadelhe",
            "Ervas Tenras",
            "Ervedosa",
            "Freixedas",
            "Gouveia",
            "Lamegal",
            "Lameiras",
            "Manigoto",
            "Pala",
            "Pereiro",
            "Pinhel",
            "Pínzio",
            "Pomares",
            "Póvoa de El-Rei",
            "Safurdão",
            "Santa Eufémia",
            "Sorval",
            "Souro Pires",
            "Valbom",
            "Vale de Madeira",
            "Vascoveiro"
        ]
    },
    "200"=> {
        "name"=> "Pombal",
        "fregs"=> [
            "Abiul",
            "Albergaria dos Doze",
            "Almagreira",
            "Carnide",
            "Carriço",
            "Guia",
            "Ilha",
            "Louriçal",
            "Mata Mourisca",
            "Meirinhas",
            "Pelariga",
            "Pombal",
            "Redinha",
            "Santiago de Litém",
            "São Simão de Litém",
            "Vermoil",
            "Vila Cã"
        ]
    },
    "201"=> {
        "name"=> "Ponta Delgada",
        "fregs"=> [
            "Ajuda da Bretanha",
            "Arrifes",
            "Candelária",
            "Capelas",
            "Covoada",
            "Fajã de Baixo",
            "Fajã de Cima",
            "Fenais da Luz",
            "Feteiras",
            "Ginetes",
            "Livramento",
            "Mosteiros",
            "Pilar da Bretanha",
            "São José",
            "São Pedro",
            "São Sebastião",
            "Relva",
            "Remédios",
            "Santa Bárbara",
            "Santa Clara",
            "Santo António",
            "São Roque",
            "São Vicente Ferreira",
            "Sete Cidades"
        ]
    },
    "202"=> {
        "name"=> "Ponta do Sol",
        "fregs"=> [
            "Canhas",
            "Madalena do Mar",
            "Ponta do Sol"
        ]
    },
    "203"=> {
        "name"=> "Ponte da Barca",
        "fregs"=> [
            "Azias",
            "Boivães",
            "Bravães",
            "Britelo",
            "Crasto",
            "Cuide de Vila Verde",
            "Entre Ambos-os-Rios",
            "Ermida",
            "Germil",
            "Grovelas",
            "Lavradas",
            "Lindoso",
            "Nogueira",
            "Oleiros",
            "Paço Vedro de Magalhães",
            "Ponte da Barca",
            "Ruivos",
            "Sampriz",
            "Salvador de Touvedo",
            "São Lourenço de Touvedo",
            "São Pedro de Vade",
            "São Tomé de Vade",
            "Santiago de Vila Chã",
            "São João Baptista de Vila Chã",
            "Vila Nova da Muía"
        ]
    },
    "204"=> {
        "name"=> "Ponte de Lima",
        "fregs"=> [
            "Anais",
            "Arca",
            "Arcos",
            "Arcozelo",
            "Ardegão",
            "Bárrio",
            "Beiral do Lima",
            "Bertiandos",
            "Boalhosa",
            "Brandara",
            "Cabaços",
            "Cabração",
            "Calheiros",
            "Calvelo",
            "Cepões",
            "Correlhã",
            "Estorãos",
            "Facha",
            "Feitosa",
            "Fojo Lobal",
            "Fontão",
            "Fornelos",
            "Freixo",
            "Friastelas",
            "Gaifar",
            "Gandra",
            "Gemieira",
            "Gondufe",
            "Labruja",
            "Labrujó",
            "Mato",
            "Moreira do Lima",
            "Navió",
            "Poiares",
            "Ponte de Lima",
            "Queijada",
            "Rebordões (Santa Maria)",
            "Rebordões (Souto)",
            "Refóios do Lima",
            "Rendufe",
            "Ribeira",
            "Sá",
            "Sandiães",
            "Santa Comba",
            "Santa Cruz do Lima",
            "Seara",
            "Serdedelo",
            "Vilar das Almas",
            "Vilar do Monte",
            "Vitorino das Donas",
            "Vitorino dos Piães"
        ]
    },
    "205"=> {
        "name"=> "Ponte de Sor",
        "fregs"=> [
            "Foros de Arrão",
            "Galveias",
            "Longomel",
            "Montargil",
            "Ponte de Sor",
            "Tramaga",
            "Vale de Açor"
        ]
    },
    "206"=> {
        "name"=> "Portalegre",
        "fregs"=> [
            "Alagoa",
            "Alegrete",
            "Carreiras",
            "Fortios",
            "Reguengo",
            "Ribeira de Nisa",
            "São Julião",
            "São Lourenço",
            "Sé",
            "Urra"
        ]
    },
    "207"=> {
        "name"=> "Portel",
        "fregs"=> [
            "Alqueva",
            "Amieira",
            "Monte do Trigo",
            "Oriola",
            "Portel",
            "Santana",
            "São Bartolomeu do Outeiro",
            "Vera Cruz"
        ]
    },
    "208"=> {
        "name"=> "Portimão",
        "fregs"=> [
            "Alvor",
            "Mexilhoeira Grande",
            "Portimão"
        ]
    },
    "209"=> {
        "name"=> "Porto",
        "fregs"=> [
            "Aldoar",
            "Bonfim",
            "Campanhã",
            "Cedofeita",
            "Foz do Douro",
            "Lordelo do Ouro",
            "Massarelos",
            "Miragaia",
            "Nevogilde",
            "Paranhos",
            "Ramalde",
            "Santo Ildefonso",
            "São Nicolau",
            "Sé",
            "Vitória"
        ]
    },
    "210"=> {
        "name"=> "Porto de Mós",
        "fregs"=> [
            "Alcaria",
            "Alqueidão da Serra",
            "Alvados",
            "Arrimal",
            "Calvaria de Cima",
            "Juncal",
            "Mendiga",
            "Mira de Aire",
            "Pedreiras",
            "São João Baptista",
            "São Pedro",
            "São Bento",
            "Serro Ventoso"
        ]
    },
    "211"=> {
        "name"=> "Porto Moniz",
        "fregs"=> [
            "Achadas da Cruz",
            "Porto Moniz",
            "Ribeira da Janela",
            "Seixal"
        ]
    },
    "212"=> {
        "name"=> "Porto Santo",
        "fregs"=> [
            "Porto Santo"
        ]
    },
    "213"=> {
        "name"=> "Póvoa de Lanhoso",
        "fregs"=> [
            "Águas Santas",
            "Ajude",
            "Brunhais",
            "Calvos",
            "Campos",
            "Covelas",
            "Esperança",
            "Ferreiros",
            "Fontarcada",
            "Frades",
            "Friande",
            "Galegos",
            "Garfe",
            "Geraz do Minho",
            "Lanhoso",
            "Louredo",
            "Monsul",
            "Moure",
            "Oliveira",
            "Póvoa de Lanhoso (Nossa Senhora do Amparo)",
            "Rendufinho",
            "Santo Emilião",
            "São João de Rei",
            "Serzedelo",
            "Sobradelo da Goma",
            "Taíde",
            "Travassos",
            "Verim",
            "Vilela"
        ]
    },
    "214"=> {
        "name"=> "Póvoa de Varzim",
        "fregs"=> [
            "Aver-o-Mar, Amorim e Terroso",
            "Aguçadoura e Navais",
            "Balasar",
            "Estela",
            "Laúndos",
            "Póvoa de Varzim, Beiriz e Argivai",
            "Rates"
        ]
    },
    "215"=> {
        "name"=> "Povoação",
        "fregs"=> [
            "Água Retorta",
            "Faial da Terra",
            "Furnas",
            "Nossa Senhora dos Remédios",
            "Povoação",
            "Ribeira Quente"
        ]
    },
    "216"=> {
        "name"=> "Praia da Vitória",
        "fregs"=> [
            "Agualva",
            "Biscoitos",
            "Cabo da Praia",
            "Fonte do Bastardo",
            "Fontinhas",
            "Lajes",
            "Porto Martins",
            "Praia da Vitória",
            "Quatro Ribeiras",
            "São Brás",
            "Vila Nova"
        ]
    },
    "217"=> {
        "name"=> "Proença-a-Nova",
        "fregs"=> [
            "Alvito da Beira",
            "Montes da Senhora",
            "Peral",
            "Proença-a-Nova",
            "São Pedro do Esteval",
            "Sobreira Formosa"
        ]
    },
    "218"=> {
        "name"=> "Redondo",
        "fregs"=> [
            "Montoito",
            "Redondo"
        ]
    },
    "219"=> {
        "name"=> "Reguengos de Monsaraz",
        "fregs"=> [
            "Campinho",
            "Campo",
            "Corval",
            "Monsaraz",
            "Reguengos de Monsaraz"
        ]
    },
    "220"=> {
        "name"=> "Resende",
        "fregs"=> [
            "Anreade",
            "Barrô",
            "Cárquere",
            "Feirão",
            "Felgueiras",
            "Freigil",
            "Miomães",
            "Ovadas",
            "Panchorra",
            "Paus",
            "Resende",
            "São Cipriano",
            "São João de Fontoura",
            "São Martinho de Mouros",
            "São Romão de Aregos"
        ]
    },
    "221"=> {
        "name"=> "Ribeira Brava",
        "fregs"=> [
            "Campanário",
            "Ribeira Brava",
            "Serra de Água",
            "Tabua"
        ]
    },
    "222"=> {
        "name"=> "Ribeira de Pena",
        "fregs"=> [
            "Alvadia",
            "Canedo",
            "Cerva",
            "Limões",
            "Ribeira de Pena (Salvador)",
            "Ribeira de Pena (Santa Marinha)",
            "Santo Aleixo de Além-Tâmega"
        ]
    },
    "223"=> {
        "name"=> "Ribeira Grande",
        "fregs"=> [
            "Calhetas",
            "Fenais da Ajuda",
            "Lomba da Maia",
            "Lomba de São Pedro",
            "Maia",
            "Pico da Pedra",
            "Porto Formoso",
            "Rabo de Peixe",
            "Ribeira Grande (Conceição)",
            "Ribeira Grande (Matriz)",
            "Ribeira Seca",
            "Ribeirinha",
            "Santa Bárbara",
            "São Brás"
        ]
    },
    "224"=> {
        "name"=> "Rio Maior",
        "fregs"=> [
            "Alcobertas",
            "Arrouquelas",
            "Arruda dos Pisões",
            "Asseiceira",
            "Assentiz",
            "Azambujeira",
            "Fráguas",
            "Malaqueijo",
            "Marmeleira",
            "Outeiro da Cortiçada",
            "Ribeira de São João",
            "Rio Maior",
            "São João da Ribeira",
            "São Sebastião"
        ]
    },
    "225"=> {
        "name"=> "Sabrosa",
        "fregs"=> [
            "Celeirós",
            "Covas do Douro",
            "Gouvães do Douro",
            "Gouvinhas",
            "Paços",
            "Parada de Pinhão",
            "Paradela de Guiães",
            "Provesende",
            "Sabrosa",
            "São Cristóvão do Douro",
            "São Lourenço de Ribapinhão",
            "São Martinho de Antas",
            "Souto Maior",
            "Torre do Pinhão",
            "Vilarinho de São Romão"
        ]
    },
    "226"=> {
        "name"=> "Sabugal",
        "fregs"=> [
            "Águas Belas",
            "Aldeia da Ponte",
            "Aldeia da Ribeira",
            "Aldeia de Santo António",
            "Aldeia do Bispo",
            "Aldeia Velha",
            "Alfaiates",
            "Badamalos",
            "Baraçal",
            "Bendada",
            "Bismula",
            "Casteleiro",
            "Cerdeira",
            "Fóios",
            "Forcalhos",
            "Lajeosa",
            "Lomba",
            "Malcata",
            "Moita",
            "Nave",
            "Pena Lobo",
            "Pousafoles do Bispo",
            "Quadrazais",
            "Quinta de São Bartolomeu",
            "Rapoula do Côa",
            "Rebolosa",
            "Rendo",
            "Ruivós",
            "Ruvina",
            "Sabugal",
            "Santo Estêvão",
            "Seixo do Côa",
            "Sortelha",
            "Souto",
            "Vale das Éguas",
            "Vale de Espinho",
            "Vale Longo",
            "Vila Boa",
            "Vila do Touro",
            "Vilar Maior"
        ]
    },
    "227"=> {
        "name"=> "Salvaterra de Magos",
        "fregs"=> [
            "Foros de Salvaterra",
            "Glória do Ribatejo",
            "Granho",
            "Marinhais",
            "Muge",
            "Salvaterra de Magos"
        ]
    },
    "228"=> {
        "name"=> "Santa Comba Dão",
        "fregs"=> [
            "Couto do Mosteiro",
            "Nagozela",
            "Ovoa",
            "Pinheiro de Ázere",
            "Santa Comba Dão",
            "São Joaninho",
            "São João de Areias",
            "Treixedo",
            "Vimieiro"
        ]
    },
    "229"=> {
        "name"=> "Santa Cruz",
        "fregs"=> [
            "Camacha",
            "Caniço",
            "Gaula",
            "Santa Cruz",
            "Santo António da Serra"
        ]
    },
    "230"=> {
        "name"=> "Santa Cruz da Graciosa",
        "fregs"=> [
            "Guadalupe",
            "Luz",
            "São Mateus",
            "Santa Cruz da Graciosa"
        ]
    },
    "231"=> {
        "name"=> "Santa Cruz das Flores",
        "fregs"=> [
            "Caveira",
            "Cedros",
            "Ponta Delgada",
            "Santa Cruz das Flores"
        ]
    },
    "232"=> {
        "name"=> "Santa Maria da Feira",
        "fregs"=> [
            "Argoncilhe",
            "Arrifana",
            "Caldas de São Jorge",
            "Canedo",
            "Escapães",
            "Espargo",
            "Feira",
            "Fiães",
            "Fornos",
            "Gião",
            "Guisande",
            "Lobão",
            "Louredo",
            "Lourosa",
            "Milheirós de Poiares",
            "Mosteiró",
            "Mozelos",
            "Nogueira da Regedoura",
            "Paços de Brandão",
            "Pigeiros",
            "Rio Meão",
            "Romariz",
            "Sanfins",
            "Sanguedo",
            "Santa Maria de Lamas",
            "São João de Ver",
            "São Paio de Oleiros",
            "Souto",
            "Travanca",
            "Vale",
            "Vila Maior"
        ]
    },
    "233"=> {
        "name"=> "Santa Marta de Penaguião",
        "fregs"=> [
            "Alvações do Corgo",
            "Cumieira",
            "Fontes",
            "Fornelos",
            "Lobrigos (São João Baptista)",
            "Lobrigos (São Miguel)",
            "Louredo",
            "Medrões",
            "Sanhoane",
            "Sever"
        ]
    },
    "234"=> {
        "name"=> "Santana",
        "fregs"=> [
            "Arco de São Jorge",
            "Faial",
            "Ilha",
            "Santana",
            "São Jorge",
            "São Roque do Faial"
        ]
    },
    "235"=> {
        "name"=> "Santarém",
        "fregs"=> [
            "Abitureiras",
            "Abrã",
            "Achete",
            "Alcanede",
            "Alcanhões",
            "Almoster",
            "Amiais de Baixo",
            "Arneiro das Milhariças",
            "Azoia de Baixo",
            "Azoia de Cima",
            "Casével",
            "Gançaria",
            "Moçarria",
            "Pernes",
            "Póvoa da Isenta",
            "Póvoa de Santarém",
            "Romeira",
            "Santa Iria da Ribeira de Santarém",
            "Santarém (Marvila)",
            "Santarém (São Nicolau)",
            "Santarém (São Salvador)",
            "São Vicente de Paul",
            "Tremês",
            "Vale de Figueira",
            "Vale de Santarém",
            "Vaqueiros",
            "Várzea"
        ]
    },
    "236"=> {
        "name"=> "Santiago do Cacém",
        "fregs"=> [
            "Abela",
            "Alvalade",
            "Cercal",
            "Ermidas-Sado",
            "Santa Cruz",
            "Santiago do Cacém",
            "Santo André",
            "São Bartolomeu da Serra",
            "São Domingos",
            "São Francisco da Serra",
            "Vale de Água"
        ]
    },
    "237"=> {
        "name"=> "Santo Tirso",
        "fregs"=> [
            "Agrela",
            "Água Longa",
            "Areias",
            "Burgães",
            "Campo (São Martinho)",
            "Carreira",
            "Couto (Santa Cristina)",
            "Couto (São Miguel)",
            "Guimarei",
            "Lama",
            "Lamelas",
            "Monte Córdova",
            "Negrelos (São Mamede)",
            "Negrelos (São Tomé)",
            "Palmeira",
            "Rebordões",
            "Refojos de Riba de Ave",
            "Reguenga",
            "Roriz",
            "Santo Tirso",
            "São Salvador do Campo",
            "Sequeiró",
            "Vila das Aves",
            "Vilarinho"
        ]
    },
    "238"=> {
        "name"=> "São Brás de Alportel",
        "fregs"=> [
            "São Brás de Alportel"
        ]
    },
    "239"=> {
        "name"=> "São João da Madeira",
        "fregs"=> [
            "São João da Madeira"
        ]
    },
    "240"=> {
        "name"=> "São João da Pesqueira",
        "fregs"=> [
            "Castanheiro do Sul",
            "Ervedosa do Douro",
            "Espinhosa",
            "Nagozelo do Douro",
            "Paredes da Beira",
            "Pereiros",
            "Riodades",
            "São João da Pesqueira",
            "Soutelo do Douro",
            "Trevões",
            "Vale de Figueira",
            "Valongo dos Azeites",
            "Várzea de Trevões",
            "Vilarouco"
        ]
    },
    "241"=> {
        "name"=> "São Pedro do Sul",
        "fregs"=> [
            "Baiões",
            "Bordonhos",
            "Candal",
            "Carvalhais",
            "Covas do Rio",
            "Figueiredo de Alva",
            "Manhouce",
            "Pindelo dos Milagres",
            "Pinho",
            "Santa Cruz da Trapa",
            "São Cristóvão de Lafões",
            "São Félix",
            "São Martinho das Moitas",
            "São Pedro do Sul",
            "Serrazes",
            "Sul",
            "Valadares",
            "Várzea",
            "Vila Maior"
        ]
    },
    "242"=> {
        "name"=> "São Roque do Pico",
        "fregs"=> [
            "Prainha",
            "Santa Luzia",
            "Santo Amaro",
            "Santo António",
            "São Roque do Pico"
        ]
    },
    "243"=> {
        "name"=> "São Vicente (Madeira)",
        "fregs"=> [
            "Boa Ventura",
            "Ponta Delgada",
            "São Vicente"
        ]
    },
    "244"=> {
        "name"=> "Sardoal",
        "fregs"=> [
            "Alcaravela",
            "Santiago de Montalegre",
            "Sardoal",
            "Valhascos"
        ]
    },
    "245"=> {
        "name"=> "Sátão",
        "fregs"=> [
            "Águas Boas",
            "Avelal",
            "Decermilo",
            "Ferreira de Aves",
            "Forles",
            "Mioma",
            "Rio de Moinhos",
            "Romãs",
            "São Miguel de Vila Boa",
            "Sátão",
            "Silvã de Cima",
            "Vila Longa"
        ]
    },
    "246"=> {
        "name"=> "Seia",
        "fregs"=> [
            "Alvoco da Serra",
            "Cabeça",
            "Carragozela",
            "Folhadosa",
            "Girabolhos",
            "Lajes",
            "Lapa dos Dinheiros",
            "Loriga",
            "Paranhos da Beira",
            "Pinhanços",
            "Sabugueiro",
            "Sameice",
            "Sandomil",
            "Santa Comba",
            "Santa Eulália",
            "Santa Marinha",
            "Santiago",
            "São Martinho",
            "São Romão",
            "Sazes da Beira",
            "Seia",
            "Teixeira",
            "Torrozelo",
            "Tourais",
            "Travancinha",
            "Valezim",
            "Várzea de Meruge",
            "Vide",
            "Vila Cova à Coelheira"
        ]
    },
    "247"=> {
        "name"=> "Seixal",
        "fregs"=> [
            "Aldeia de Paio Pires",
            "Amora",
            "Arrentela",
            "Corroios",
            "Fernão Ferro",
            "Seixal"
        ]
    },
    "248"=> {
        "name"=> "Sernancelhe",
        "fregs"=> [
            "Arnas",
            "Carregal",
            "Chosendo",
            "Cunha",
            "Escurquela",
            "Faia",
            "Ferreirim",
            "Fonte Arcada",
            "Freixinho",
            "Granjal",
            "Lamosa",
            "Macieira",
            "Penso",
            "Quintela",
            "Sarzeda",
            "Sernancelhe",
            "Vila da Ponte"
        ]
    },
    "249"=> {
        "name"=> "Serpa",
        "fregs"=> [
            "Aldeia Nova de São Bento",
            "Brinches",
            "Pias",
            "Serpa (Salvador)",
            "Serpa (Santa Maria)",
            "Vale de Vargo",
            "Vila Verde de Ficalho"
        ]
    },
    "250"=> {
        "name"=> "Sertã",
        "fregs"=> [
            "Cabeçudo",
            "Carvalhal",
            "Castelo",
            "Cernache do Bonjardim",
            "Cumeada",
            "Ermida",
            "Figueiredo",
            "Marmeleira",
            "Nesperal",
            "Palhais",
            "Pedrógão Pequeno",
            "Sertã",
            "Troviscal",
            "Várzea dos Cavaleiros"
        ]
    },
    "251"=> {
        "name"=> "Sesimbra",
        "fregs"=> [
            "Quinta do Conde",
            "Sesimbra (Castelo)",
            "Sesimbra (Santiago)"
        ]
    },
    "252"=> {
        "name"=> "Setúbal",
        "fregs"=> [
            "Gâmbia - Pontes - Alto da Guerra",
            "Setúbal (Sado)",
            "São Lourenço",
            "São Simão",
            "Setúbal (Nossa Senhora da Anunciada)",
            "Setúbal (Santa Maria da Graça)",
            "Setúbal (São Julião)",
            "Setúbal (São Sebastião)"
        ]
    },
    "253"=> {
        "name"=> "Sever do Vouga",
        "fregs"=> [
            "Cedrim",
            "Couto de Esteves",
            "Dornelas",
            "Paradela",
            "Pessegueiro do Vouga",
            "Rocas do Vouga",
            "Sever do Vouga",
            "Silva Escura",
            "Talhadas"
        ]
    },
    "254"=> {
        "name"=> "Silves",
        "fregs"=> [
            "Alcantarilha",
            "Algoz",
            "Armação de Pêra",
            "Pêra",
            "São Bartolomeu de Messines",
            "São Marcos da Serra",
            "Silves",
            "Tunes"
        ]
    },
    "255"=> {
        "name"=> "Sines",
        "fregs"=> [
            "Porto Covo",
            "Sines"
        ]
    },
    "256"=> {
        "name"=> "Sintra",
        "fregs"=> [
            "Agualva",
            "Algueirão - Mem Martins",
            "Almargem do Bispo",
            "Belas",
            "Cacém",
            "Casal de Cambra",
            "Colares",
            "Massamá",
            "Mira-Sintra",
            "Monte Abraão",
            "Montelavar",
            "Pêro Pinheiro",
            "Queluz (Sintra)",
            "Rio de Mouro",
            "São João das Lampas",
            "São Marcos",
            "Sintra (Santa Maria e São Miguel)",
            "Sintra (São Martinho)",
            "Sintra (São Pedro de Penaferrim)",
            "Terrugem"
        ]
    },
    "257"=> {
        "name"=> "Sobral de Monte Agraço",
        "fregs"=> [
            "Santo Quintino",
            "Sapataria",
            "Sobral de Monte Agraço"
        ]
    },
    "258"=> {
        "name"=> "Soure",
        "fregs"=> [
            "Alfarelos",
            "Brunhós",
            "Degracias",
            "Figueiró do Campo",
            "Gesteira",
            "Granja do Ulmeiro",
            "Pombalinho",
            "Samuel",
            "Soure",
            "Tapéus",
            "Vila Nova de Anços",
            "Vinha da Rainha"
        ]
    },
    "259"=> {
        "name"=> "Sousel",
        "fregs"=> [
            "Cano",
            "Casa Branca",
            "Santo Amaro",
            "Sousel"
        ]
    },
    "260"=> {
        "name"=> "Tábua",
        "fregs"=> [
            "Ázere",
            "Candosa",
            "Carapinha",
            "Covas",
            "Covelo",
            "Espariz",
            "Meda de Mouros",
            "Midões",
            "Mouronho",
            "Pinheiro de Coja",
            "Póvoa de Midões",
            "São João da Boa Vista",
            "Sinde",
            "Tábua",
            "Vila Nova de Oliveirinha"
        ]
    },
    "261"=> {
        "name"=> "Tabuaço",
        "fregs"=> [
            "Adorigo",
            "Arcos",
            "Barcos",
            "Chavães",
            "Desejosa",
            "Granja do Tedo",
            "Granjinha",
            "Longra",
            "Paradela",
            "Pereiro",
            "Pinheiros",
            "Santa Leocádia",
            "Sendim",
            "Tabuaço",
            "Távora",
            "Vale de Figueira",
            "Valença do Douro"
        ]
    },
    "262"=> {
        "name"=> "Tarouca",
        "fregs"=> [
            "Dálvares",
            "Gouviães",
            "Granja Nova",
            "Mondim da Beira",
            "Salzedas",
            "São João de Tarouca",
            "Tarouca",
            "Ucanha",
            "Várzea da Serra",
            "Vila Chã da Beira"
        ]
    },
    "263"=> {
        "name"=> "Tavira",
        "fregs"=> [
            "Cabanas de Tavira",
            "Cachopo",
            "Conceição",
            "Luz",
            "Santa Catarina da Fonte do Bispo",
            "Santa Luzia",
            "Santo Estêvão",
            "Tavira (Santa Maria)",
            "Tavira (Santiago)"
        ]
    },
    "264"=> {
        "name"=> "Terras de Bouro",
        "fregs"=> [
            "Balança",
            "Brufe",
            "Campo do Gerês",
            "Carvalheira",
            "Chamoim",
            "Chorense",
            "Cibões",
            "Covide",
            "Gondoriz",
            "Moimenta",
            "Monte",
            "Ribeira",
            "Rio Caldo",
            "Souto",
            "Valdosende",
            "Vilar",
            "Vilar da Veiga"
        ]
    },
    "265"=> {
        "name"=> "Tomar",
        "fregs"=> [
            "Além da Ribeira",
            "Alviobeira",
            "Asseiceira",
            "Beselga",
            "Carregueiros",
            "Casais",
            "Junceira",
            "Madalena",
            "Olalhas",
            "Paialvo",
            "Pedreira",
            "Sabacheira",
            "São Pedro de Tomar",
            "Serra",
            "Tomar (Santa Maria dos Olivais)",
            "Tomar (São João Baptista)"
        ]
    },
    "266"=> {
        "name"=> "Tondela",
        "fregs"=> [
            "Barreiro de Besteiros",
            "Campo de Besteiros",
            "Canas de Santa Maria",
            "Caparrosa",
            "Castelões",
            "Dardavaz",
            "Ferreirós do Dão",
            "Guardão",
            "Lajeosa do Dão",
            "Lobão da Beira",
            "Molelos",
            "Mosteirinho",
            "Mosteiro de Fráguas",
            "Mouraz",
            "Nandufe",
            "Parada de Gonta",
            "Sabugosa",
            "Santiago de Besteiros",
            "São João do Monte",
            "São Miguel do Outeiro",
            "Silvares",
            "Tonda",
            "Tondela",
            "Tourigo",
            "Vila Nova da Rainha",
            "Vilar de Besteiros"
        ]
    },
    "267"=> {
        "name"=> "Torre de Moncorvo",
        "fregs"=> [
            "Açoreira",
            "Adeganha",
            "Cabeça Boa",
            "Cardanha",
            "Carviçais",
            "Castedo",
            "Felgar",
            "Felgueiras",
            "Horta da Vilariça",
            "Larinho",
            "Lousa",
            "Maçores",
            "Mós",
            "Peredo dos Castelhanos",
            "Souto da Velha",
            "Torre de Moncorvo",
            "Urrós"
        ]
    },
    "268"=> {
        "name"=> "Torres Novas",
        "fregs"=> [
            "Alcorochel",
            "Assentis",
            "Brogueira",
            "Chancelaria",
            "Lapas",
            "Meia Via",
            "Olaia",
            "Paço",
            "Parceiros de Igreja",
            "Pedrógão",
            "Riachos",
            "Ribeira Branca",
            "Torres Novas (Salvador)",
            "Torres Novas (Santa Maria)",
            "Torres Novas (Santiago)",
            "Torres Novas (São Pedro)",
            "Zibreira"
        ]
    },
    "269"=> {
        "name"=> "Torres Vedras",
        "fregs"=> [
            "A dos Cunhados",
            "Campelos",
            "Carmões",
            "Carvoeira",
            "Dois Portos",
            "Freiria",
            "Maceira",
            "Matacães",
            "Maxial",
            "Monte Redondo",
            "Outeiro da Cabeça",
            "Ponte do Rol",
            "Ramalhal",
            "Runa",
            "São Pedro da Cadeira",
            "Silveira",
            "Torres Vedras (Santa Maria do Castelo e São Miguel)",
            "Torres Vedras (São Pedro e Santiago)",
            "Turcifal",
            "Ventosa"
        ]
    },
    "270"=> {
        "name"=> "Trancoso",
        "fregs"=> [
            "Aldeia Nova",
            "Carnicães",
            "Castanheira",
            "Cogula",
            "Cótimos",
            "Feital",
            "Fiães",
            "Freches",
            "Granja",
            "Guilheiro",
            "Moimentinha",
            "Moreira de Rei",
            "Palhais",
            "Póvoa do Concelho",
            "Reboleiro",
            "Rio de Mel",
            "Sebadelhe da Serra",
            "Souto Maior",
            "Tamanhos",
            "Terrenho",
            "Torre do Terrenho",
            "Torres",
            "Trancoso (Santa Maria)",
            "Trancoso (São Pedro)",
            "Valdujo",
            "Vale do Seixo",
            "Vila Franca das Naves",
            "Vila Garcia",
            "Vilares"
        ]
    },
    "271"=> {
        "name"=> "Trofa",
        "fregs"=> [
            "Alvarelhos",
            "Bougado (Santiago)",
            "Bougado (São Martinho)",
            "Coronado (São Mamede)",
            "Coronado (São Romão)",
            "Covelas",
            "Guidões",
            "Muro"
        ]
    },
    "272"=> {
        "name"=> "Vagos",
        "fregs"=> [
            "Calvão",
            "Covão do Lobo",
            "Fonte de Angeão",
            "Gafanha da Boa Hora",
            "Ouca",
            "Ponte de Vagos",
            "Santa Catarina",
            "Santo André de Vagos",
            "Santo António de Vagos",
            "Sosa",
            "Vagos"
        ]
    },
    "273"=> {
        "name"=> "Vale de Cambra",
        "fregs"=> [
            "Arões",
            "Cepelos",
            "Junqueira",
            "Macieira de Cambra",
            "Roge",
            "São Pedro de Castelões",
            "Vila Chã, Codal e Vila Cova de Perrinho"
        ]
    },
    "274"=> {
        "name"=> "Valença",
        "fregs"=> [
            "Arão",
            "Boivão",
            "Cerdal",
            "Cristelo Covo",
            "Fontoura",
            "Friestas",
            "Gandra",
            "Ganfei",
            "Gondomil",
            "Sanfins",
            "São Julião",
            "São Pedro da Torre",
            "Silva",
            "Taião",
            "Valença",
            "Verdoejo"
        ]
    },
    "275"=> {
        "name"=> "Valongo",
        "fregs"=> [
            "Alfena",
            "Campo",
            "Ermesinde",
            "Sobrado",
            "Valongo"
        ]
    },
    "276"=> {
        "name"=> "Valpaços",
        "fregs"=> [
            "Água Revés e Crasto",
            "Algeriz",
            "Alvarelhos",
            "Barreiros",
            "Bouçoães",
            "Canaveses",
            "Carrazedo de Montenegro",
            "Curros",
            "Ervões",
            "Fiães",
            "Fornos do Pinhal",
            "Friões",
            "Lebução",
            "Nozelos",
            "Padrela e Tazem",
            "Possacos",
            "Rio Torto",
            "Sanfins",
            "Santa Maria de Emeres",
            "Santa Valha",
            "Santiago da Ribeira de Alhariz",
            "São João da Corveira",
            "São Pedro de Veiga de Lila",
            "Serapicos",
            "Sonim",
            "Tinhela",
            "Vales",
            "Valpaços",
            "Vassal",
            "Veiga de Lila",
            "Vilarandelo"
        ]
    },
    "277"=> {
        "name"=> "Velas",
        "fregs"=> [
            "Manadas",
            "Norte Grande",
            "Rosais",
            "Santo Amaro",
            "Urzelina",
            "Velas"
        ]
    },
    "278"=> {
        "name"=> "Vendas Novas",
        "fregs"=> [
            "Landeira",
            "Vendas Novas"
        ]
    },
    "279"=> {
        "name"=> "Viana do Alentejo",
        "fregs"=> [
            "Aguiar",
            "Alcáçovas",
            "Viana do Alentejo"
        ]
    },
    "280"=> {
        "name"=> "Viana do Castelo",
        "fregs"=> [
            "Afife",
            "Alvarães",
            "Amonde",
            "Anha",
            "Areosa",
            "Barroselas",
            "Cardielos",
            "Carreço",
            "Carvoeiro",
            "Castelo do Neiva",
            "Chafé",
            "Darque",
            "Deão",
            "Deocriste",
            "Freixieiro do Soutelo",
            "Geraz do Lima (Santa Leocádia)",
            "Geraz do Lima (Santa Maria)",
            "Lanheses",
            "Mazarefes",
            "Meadela",
            "Meixedo",
            "Montaria",
            "Moreira de Geraz do Lima",
            "Mujães",
            "Neiva",
            "Nogueira",
            "Outeiro",
            "Perre",
            "Portela Susã",
            "Portuzelo",
            "Serreleis",
            "Subportela",
            "Torre",
            "Viana do Castelo (Monserrate)",
            "Viana do Castelo (Santa Maria Maior)",
            "Vila de Punhe",
            "Vila Franca",
            "Vila Fria",
            "Vila Mou",
            "Vilar de Murteda"
        ]
    },
    "281"=> {
        "name"=> "Vidigueira",
        "fregs"=> [
            "Pedrógão",
            "Selmes",
            "Vidigueira",
            "Vila de Frades"
        ]
    },
    "282"=> {
        "name"=> "Vieira do Minho",
        "fregs"=> [
            "Anissó",
            "Anjos",
            "Campos",
            "Caniçada",
            "Cantelães",
            "Cova",
            "Eira Vedra",
            "Guilhofrei",
            "Louredo",
            "Mosteiro",
            "Parada do Bouro",
            "Pinheiro",
            "Rossas",
            "Ruivães",
            "Salamonde",
            "Soengas",
            "Soutelo",
            "Tabuaças",
            "Ventosa",
            "Vieira do Minho",
            "Vilar Chão"
        ]
    },
    "283"=> {
        "name"=> "Vila de Rei",
        "fregs"=> [
            "Fundada",
            "São João do Peso",
            "Vila de Rei"
        ]
    },
    "284"=> {
        "name"=> "Vila do Bispo",
        "fregs"=> [
            "Barão de São Miguel",
            "Budens",
            "Raposeira",
            "Sagres",
            "Vila do Bispo"
        ]
    },
    "285"=> {
        "name"=> "Vila do Conde",
        "fregs"=> [
            "Arcos",
            "Árvore",
            "Aveleda",
            "Azurara",
            "Bagunte",
            "Canidelo",
            "Fajozes",
            "Ferreiró",
            "Fornelo",
            "Gião",
            "Guilhabreu",
            "S. Simão da Junqueira",
            "Labruge",
            "Macieira da Maia",
            "Malta",
            "Mindelo",
            "Modivas",
            "Mosteiró",
            "Outeiro Maior",
            "Parada",
            "Retorta",
            "Rio Mau",
            "Tougues",
            "Touguinha",
            "Touguinhó",
            "Vairão",
            "Vila Chã",
            "Vila do Conde",
            "Vilar",
            "Vilar de Pinheiro"
        ]
    },
    "286"=> {
        "name"=> "Vila do Porto",
        "fregs"=> [
            "Almagreira",
            "Santa Bárbara",
            "Santo Espírito",
            "São Pedro",
            "Vila do Porto"
        ]
    },
    "287"=> {
        "name"=> "Vila Flor",
        "fregs"=> [
            "Assares",
            "Benlhevai",
            "Candoso",
            "Carvalho de Egas",
            "Freixiel",
            "Lodões",
            "Mourão",
            "Nabo",
            "Róios",
            "Samões",
            "Sampaio",
            "Santa Comba de Vilariça",
            "Seixo de Manhoses",
            "Trindade",
            "Vale de Torno",
            "Vale Frechoso",
            "Vila Flor",
            "Vilarinho das Azenhas",
            "Vilas Boas"
        ]
    },
    "288"=> {
        "name"=> "Vila Franca de Xira",
        "fregs"=> [
            "Alhandra",
            "Alverca do Ribatejo",
            "Cachoeiras",
            "Calhandriz",
            "Castanheira do Ribatejo",
            "Forte da Casa",
            "Póvoa de Santa Iria",
            "São João dos Montes",
            "Sobralinho",
            "Vialonga",
            "Vila Franca de Xira"
        ]
    },
    "289"=> {
        "name"=> "Vila Franca do Campo",
        "fregs"=> [
            "Água de Alto",
            "Ponta Garça",
            "Ribeira das Tainhas",
            "Ribeira Seca",
            "Vila Franca do Campo (São Miguel)",
            "Vila Franca do Campo (São Pedro)"
        ]
    },
    "290"=> {
        "name"=> "Vila Nova da Barquinha",
        "fregs"=> [
            "Atalaia",
            "Moita do Norte",
            "Praia do Ribatejo",
            "Tancos",
            "Vila Nova da Barquinha"
        ]
    },
    "291"=> {
        "name"=> "Vila Nova de Cerveira",
        "fregs"=> [
            "Campos",
            "Candemil",
            "Cornes",
            "Covas",
            "Gondar",
            "Gondarém",
            "Loivo",
            "Lovelhe",
            "Mentrestido",
            "Nogueira",
            "Reboreda",
            "Sapardos",
            "Sopo",
            "Vila Meã",
            "Vila Nova de Cerveira"
        ]
    },
    "292"=> {
        "name"=> "Vila Nova de Famalicão",
        "fregs"=> [
            "Abade de Vermoim",
            "Antas",
            "Arnoso (Santa Eulália)",
            "Arnoso (Santa Maria)",
            "Avidos",
            "Bairro",
            "Bente",
            "Brufe",
            "Cabeçudos",
            "Calendário",
            "Carreira",
            "Castelões",
            "Cavalões",
            "Cruz",
            "Delães",
            "Esmeriz",
            "Fradelos",
            "Gavião",
            "Gondifelos",
            "Jesufrei",
            "Joane",
            "Lagoa",
            "Landim",
            "Lemenhe",
            "Louro",
            "Lousado",
            "Mogege",
            "Mouquim",
            "Nine",
            "Novais (Vila Nova de Famalicão)",
            "Oliveira (Santa Maria)",
            "Oliveira (São Mateus)",
            "Outiz",
            "Pedome",
            "Portela",
            "Pousada de Saramagos",
            "Requião",
            "Riba de Ave",
            "Ribeirão",
            "Ruivães",
            "Seide (São Miguel)",
            "Seide (São Paio)",
            "Sezures",
            "Telhado",
            "Vale (São Cosme)",
            "Vale (São Martinho)",
            "Vermoim",
            "Vila Nova de Famalicão",
            "Vilarinho das Cambas"
        ]
    },
    "293"=> {
        "name"=> "Vila Nova de Foz Côa",
        "fregs"=> [
            "Almendra",
            "Castelo Melhor",
            "Cedovim",
            "Chãs",
            "Custóias",
            "Freixo de Numão",
            "Horta",
            "Mós",
            "Murça",
            "Muxagata",
            "Numão",
            "Santa Comba",
            "Santo Amaro",
            "Sebadelhe",
            "Seixas",
            "Touça",
            "Vila Nova de Foz Côa"
        ]
    },
    "294"=> {
        "name"=> "Vila Nova de Gaia",
        "fregs"=> [
            "Arcozelo",
            "Avintes",
            "Canelas",
            "Canidelo",
            "Crestuma",
            "Grijó",
            "Gulpilhares",
            "Lever",
            "Madalena",
            "Mafamude",
            "Olival",
            "Oliveira do Douro",
            "Pedroso",
            "Perosinho",
            "Sandim",
            "Santa Marinha",
            "São Félix da Marinha",
            "São Pedro da Afurada",
            "Seixezelo",
            "Sermonde",
            "Serzedo",
            "Valadares",
            "Vilar de Andorinho",
            "Vilar do Paraíso"
        ]
    },
    "295"=> {
        "name"=> "Vila Nova de Paiva",
        "fregs"=> [
            "Alhais",
            "Fráguas",
            "Pendilhe",
            "Queiriga",
            "Touro",
            "Vila Cova à Coelheira",
            "Vila Nova de Paiva"
        ]
    },
    "296"=> {
        "name"=> "Vila Nova de Poiares",
        "fregs"=> [
            "Arrifana",
            "Lavegadas",
            "Santo André de Poiares",
            "São Miguel de Poiares"
        ]
    },
    "297"=> {
        "name"=> "Vila Pouca de Aguiar",
        "fregs"=> [
            "Afonsim",
            "Alfarela de Jales",
            "Bornes de Aguiar",
            "Bragado",
            "Capeludos",
            "Gouvães da Serra",
            "Lixa do Alvão",
            "Parada de Monteiros",
            "Pensalvos",
            "Sabroso de Aguiar",
            "Santa Marta da Montanha",
            "Soutelo de Aguiar",
            "Telões",
            "Tresminas",
            "Valoura",
            "Vila Pouca de Aguiar",
            "Vreia de Bornes",
            "Vreia de Jales"
        ]
    },
    "298"=> {
        "name"=> "Vila Real",
        "fregs"=> [
            "Abaças",
            "Adoufe",
            "Andrães",
            "Arroios",
            "Borbela",
            "Campeã",
            "Constantim",
            "Ermida",
            "Folhadela",
            "Guiães",
            "Justes",
            "Lamares",
            "Lamas de Olo",
            "Lordelo",
            "Mateus",
            "Mondrões",
            "Mouçós",
            "Nogueira",
            "Parada de Cunhos",
            "Pena",
            "Quintã",
            "São Tomé do Castelo",
            "Torgueda",
            "Vale de Nogueiras",
            "Vila Cova",
            "Vila Marim",
            "Vila Real (Nossa Senhora da Conceição)",
            "Vila Real (São Dinis)",
            "Vila Real (São Pedro)",
            "Vilarinho de Samardã"
        ]
    },
    "299"=> {
        "name"=> "Vila Real de Santo António",
        "fregs"=> [
            "Monte Gordo",
            "Vila Nova de Cacela",
            "Vila Real de Santo António"
        ]
    },
    "300"=> {
        "name"=> "Vila Velha de Ródão",
        "fregs"=> [
            "Fratel",
            "Perais",
            "Sarnadas de Ródão",
            "Vila Velha de Ródão"
        ]
    },
    "301"=> {
        "name"=> "Vila Verde",
        "fregs"=> [
            "Aboim da Nóbrega",
            "Arcozelo",
            "Atães",
            "Atiães",
            "Azões",
            "Barbudo",
            "Barros",
            "Cabanelas",
            "Carreiras (Santiago)",
            "Carreiras (São Miguel)",
            "Cervães",
            "Codeceda",
            "Coucieiro",
            "Covas",
            "Dossãos",
            "Duas Igrejas",
            "Escariz (São Mamede)",
            "Escariz (São Martinho)",
            "Esqueiros",
            "Freiriz",
            "Geme",
            "Goães",
            "Godinhaços",
            "Gomide",
            "Gondiães",
            "Gondomar",
            "Laje",
            "Lanhas",
            "Loureira",
            "Marrancos",
            "Mós",
            "Moure",
            "Nevogilde",
            "Oleiros",
            "Oriz (Santa Marinha)",
            "Oriz (São Miguel)",
            "Parada de Gatim",
            "Passó",
            "Pedregais",
            "Penascais",
            "Pico",
            "Pico de Regalados",
            "Ponte",
            "Portela das Cabras",
            "Prado (São Miguel)",
            "Rio Mau",
            "Sabariz",
            "Sande",
            "Soutelo",
            "Travassós",
            "Turiz",
            "Valbom (São Martinho)",
            "Valbom (São Pedro)",
            "Valdreu",
            "Valões",
            "Vila de Prado",
            "Vila Verde",
            "Vilarinho"
        ]
    },
    "302"=> {
        "name"=> "Vila Viçosa",
        "fregs"=> [
            "Bencatel",
            "Ciladas",
            "Pardais",
            "Vila Viçosa (Conceição)",
            "Vila Viçosa (São Bartolomeu)"
        ]
    },
    "303"=> {
        "name"=> "Vimioso",
        "fregs"=> [
            "Algoso",
            "Angueira",
            "Argozelo",
            "Avelanoso",
            "Caçarelhos",
            "Campo de Víboras",
            "Carção",
            "Matela",
            "Pinelo",
            "Santulhão",
            "Uva",
            "Vale de Frades",
            "Vilar Seco",
            "Vimioso"
        ]
    },
    "304"=> {
        "name"=> "Vinhais",
        "fregs"=> [
            "Agrochão",
            "Alvaredos",
            "Candedo",
            "Celas",
            "Curopos",
            "Edral",
            "Edrosa",
            "Ervedosa",
            "Fresulfe",
            "Mofreita",
            "Moimenta",
            "Montouto",
            "Nunes",
            "Ousilhão",
            "Paçó",
            "Penhas Juntas",
            "Pinheiro Novo",
            "Quirás",
            "Rebordelo",
            "Santa Cruz",
            "Santalha",
            "São Jomil",
            "Sobreiró de Baixo",
            "Soeira",
            "Travanca",
            "Tuizelo",
            "Vale das Fontes",
            "Vale de Janeiro",
            "Vila Boa de Ousilhão",
            "Vila Verde",
            "Vilar de Lomba",
            "Vilar de Ossos",
            "Vilar de Peregrinos",
            "Vilar Seco de Lomba",
            "Vinhais"
        ]
    },
    "305"=> {
        "name"=> "Viseu",
        "fregs"=> [
            "Abraveses",
            "Barreiros",
            "Boa Aldeia",
            "Bodiosa",
            "Calde",
            "Campo",
            "Cavernães",
            "Cepões",
            "Cota",
            "Couto de Baixo",
            "Couto de Cima",
            "Fail",
            "Farminhão",
            "Fragosela",
            "Lordosa",
            "Mundão",
            "Orgens",
            "Povolide",
            "Ranhados",
            "Repeses",
            "Ribafeita",
            "Rio de Loba",
            "Santos Evos",
            "São Cipriano",
            "São João de Lourosa",
            "São Pedro de France",
            "São Salvador",
            "Silgueiros",
            "Torredeita",
            "Vil de Souto",
            "Vila Chã de Sá",
            "Viseu (Coração de Jesus)",
            "Viseu (Santa Maria de Viseu)",
            "Viseu (São José)"
        ]
    },
    "306"=> {
        "name"=> "Vizela",
        "fregs"=> [
            "Infias",
            "Santa Eulália",
            "Tagilde",
            "Santo Adrião de Vizela",
            "São João de Caldas de Vizela",
            "São Miguel de Caldas de Vizela",
            "São Paio de Vizela"
        ]
    },
    "307"=> {
        "name"=> "Vouzela",
        "fregs"=> [
            "Alcofra",
            "Cambra",
            "Campia",
            "Carvalhal de Vermilhas",
            "Fataunços",
            "Figueiredo das Donas",
            "Fornelo do Monte",
            "Paços de Vilharigues",
            "Queirã",
            "São Miguel do Mato",
            "Ventosa",
            "Vouzela"
        ]
    }
}


def generate_user
    g_detector = GenderDetector.new

    #creates some coherence between name, gender and photo for each user
    name = Faker::Name.first_name
    gender = g_detector.get_gender(name)
    gen = true
    if gender == :female
        gen = false
        g_text = "women"
    else
        g_text = "men"
    end

    img = "http://loremflickr.com/480/480/#{g_text}"

    user = User.create(email: Faker::Internet.email,
                                            name: name,
                                            cc: Faker::Number.number(9),
                                            cell_phone: Faker::Number.number(9),
                                            phone: Faker::Number.number(9),
                                            birth_date: Faker::Date.between(Date.new(1990,1,1), 
                                                                                                            Date.new(200,12,31)),
                                            photo:img,
                                            nationality: Faker::Address.country,
                                            gender:  gen,
                                            # a password e identica para podermos entrar em qualquer conta
                                            password: "12345678",
                                            description:Faker::Lorem.paragraph,
                                            bio:Faker::Lorem.paragraph(4)
                                            )
    return user

end

def generate_user_address(user)

    city = @cities[@nums.sample.to_s]
    Address.create(user_id: user.id,
                                 zip_code: Faker::Address.zip_code,
                                 city: city["fregs"].to_a.sample.to_s,
                                 street: Faker::Address.street_address,
                                 door_number: Faker::Address.building_number,
                                 district:city["name"].to_s,
                                 address:Faker::Address.street_address,
                                 perish: city["fregs"].to_a.sample.to_s,
                                 lat:rand(41.50..41.57),
                                long:rand(8.38..8.44)*(-1) 
                                )

end


def generate_service_provider(user)

    to_srvp = [true, false].sample

    if to_srvp
        srvp = ServiceProvider.create(user_id: user.id)
        return srvp
    end
    return nil
end 

def add_service_type(srvp)

    for i in 0..4
        ServiceTypeServiceProvider.create(service_type_id:i,
                                         service_provider_id: srvp.id,
                                        value: Faker::Commerce.price)
    end

end

def add_time_table(srvp)

    for i in 0..6
        TimeTable.create(service_provider_id: srvp.id,
                         start_time:Faker::Time.between(i.days.ago, i.days.ago, :morning), 
                        end_time:Faker::Time.between(i.days.ago, i.days.ago, :afternoon) 
                        )
    end
end

def generate_service_type
    ServiceType.create(description: "Engomadoria")
    ServiceType.create(description: "Limpeza Geral")
    ServiceType.create(description: "Preparar Refeições")
    ServiceType.create(description: "Compras para o Lar")
end







generate_service_type

users = []
maids = []

#generte users, maids, service tupes and time tables
300.times do |i|
    user = generate_user
    generate_user_address(user)
    #might set a user as a maid, and if it does then give him a schedule and
    #service types
    srvp = generate_service_provider(user)

    if srvp == nil
        users << user
    else
        maids << srvp
        #para cada empregada coloca na base de dados que 
        #cada uma faz todos os servicos
        add_service_type(srvp)
        #add time tables entries for each service provider
        add_time_table(srvp)
    end
end



def generate_service(user, maid)
    city =  @cities[@nums.sample.to_s]

    #Using 3 states
    # 1 - service waint for maid confirmation
    # 2 - confirmated by maid
    # 3 - completed
    # 4 -  rejected or canceled
    serv_date = Faker::Date.forward(30)
    start_hour = Faker::Time.between(serv_date, serv_date, :morning)
    end_hour = Faker::Time.between(serv_date, serv_date, :afternoon)
    service = Service.create(user_id: user.id,
                             service_provider_id: maid.id,
                             service_type_id: rand(1..4),
                             state: rand(1..4),
                             service_date: serv_date,
                             matching_date: Faker::Time.between(30.days.ago, 10.days.ago, :day),
                             creation_date: Faker::Time.between(9.days.ago, Time.now, :day),
                             service_start: start_hour,
                             service_end: end_hour,
                             zip_code: Faker::Address.zip_code,
                             district: city["fregs"].to_a.sample.to_s, 
                             city: city["name"],
                             perish:city["fregs"].to_a.sample.to_s,
                             street: Faker::Address.street_address,
                             door_number: Faker::Address.building_number,
                             number_of_rooms: rand(1..12),
                             #e.g 1-casa, 2-escritorio, 3-armazem
                             #e.g: 1-mais d 200m2. 2-mais d 400m2, 3-mais d 600m2
                             building_type: rand(1..3), 
                             frequency: rand(1..4),
                             cleaning_stuff: [true, false].sample,
                             additional_information: Faker::Lorem.paragraph,
                             address:Faker::Address.street_address,
                             lat:rand(41.50..41.57),
                             long:rand(8.38..8.44)*(-1) 
                             )
    return service

end

#Ranking é a avaliacao que o utilizador da ao servico prestado pelo professional
def generate_ranking(user, service)

    Ranking.create(user_id: user.id, service_id: service.id, value: rand(1..5),
                            comment: Faker::Lorem.paragraph)
end

#Feedback é um comentario que o professional de limpeza fez sobre o servico, 
#por exemplo a criticar o utilizador por ser mal educado.
def generate_feedback(maid, service)
    Feedback.create(service_provider_id: maid.id, 
                    service_id: service.id, 
                    description: Faker::Lorem.paragraph)

end

#From the generated users generate services
200.times do |i|
    user = users.sample
    maid = maids.sample
    service = generate_service(user, maid)

    rank = [true, false].sample

    if rank
        generate_ranking(user, service)
        generate_feedback(maid, service)
    end


end

