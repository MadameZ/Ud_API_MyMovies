//
//  MovieResult.swift
//  Ud_API_MyMovies
//
//  Created by Caroline Zaini on 24/06/2020.
//  Copyright © 2020 Caroline Zaini. All rights reserved.
//

import Foundation

/// Dans nos struct on récupère les données que l'on veut

struct MovieResponse: Decodable {
    /// page 1 -> on reçoit les 20 premier
    var page: Int
    var total_pages: Int
    var total_results: Int
    var results: [Movie]
    
}


struct Movie: Decodable {
    
    var popularity: Double
    var vote_count: Int
    var video: Bool
    var poster_path: String
    var id: Int
    var adult: Bool
    var backdrop_path: String
    var original_language: String
    var original_title: String
    var genre_ids: [Int]
    var title: String
    var vote_average: Double
    var overview: String
    var release_date: String
      
}


/* {
    "page": 1,
    "total_results": 10000,
    "total_pages": 500,
    "results": [
        {
            "popularity": 163.22,
            "id": 475430,
            "video": false,
            "vote_count": 417,
            "vote_average": 5.9,
            "title": "Artemis Fowl",
            "release_date": "2020-06-12",
            "original_language": "en",
            "original_title": "Artemis Fowl",
            "genre_ids": [
                12,
                14,
                878,
                10751
            ],
            "backdrop_path": "/o0F8xAt8YuEm5mEZviX5pEFC12y.jpg",
            "adult": false,
            "overview": "Descendant d’une longue lignée de criminels, le jeune et richissime Artemis Fowl – 12 ans et déjà doté d’une intelligence hors du commun – s’apprête à livrer un éprouvant combat contre le Peuple des Fées, des créatures puissantes et mystérieuses qui vivent dans un monde souterrain et qui pourraient bien être à l’origine de la disparition de son père 2 ans plus tôt. Pour mener sa lutte à bien, il devra faire appel à toute sa force et à son ingéniosité diabolique, quitte à prendre en otage le capitaine Holly Short - une elfe réputée pour sa bravoure - et l’échanger contre une rançon en or. Pour le nain gaffeur et kleptomane Mulch Diggums – qui va tout tenter pour venir en aide à Holly – et la commandante Root, chef du F.A.R.F.A.DET (Forces Armées de Régulation et Fées Aériennes de DETection, le département de reconnaissance de la police des fées), la partie s’annonce plus que serrée…",
            "poster_path": "/r8BkWrxgMDVaVsXCqYDxe1pRIVd.jpg"
        },
        {
            "popularity": 144.182,
            "vote_count": 3784,
            "video": false,
            "poster_path": "/cJ0wqaQ9KPzs3fROXUuaWgRg9Pj.jpg",
            "id": 419704,
            "adult": false,
            "backdrop_path": "/5BwqwxMEjeFtdknRV792Svo0K1v.jpg",
            "original_language": "en",
            "original_title": "Ad Astra",
            "genre_ids": [
                18,
                878
            ],
            "title": "Ad Astra",
            "vote_average": 6.1,
            "overview": "L’astronaute Roy McBride s’aventure jusqu’aux confins du système solaire à la recherche de son père disparu et pour résoudre un mystère qui menace la survie de notre planète. Lors de son voyage, il sera confronté à des révélations mettant en cause la nature même de l’existence humaine, et notre place dans l’univers.",
            "release_date": "2019-09-17"
        },
        {
            "popularity": 143.138,
            "vote_count": 172,
            "video": false,
            "poster_path": "/wXBxd34dFEx6Wruf5Ch5jKLBxDi.jpg",
            "id": 707886,
            "adult": false,
            "backdrop_path": "/fZBQOScjDT8TAipEyCkLVeDTu5c.jpg",
            "original_language": "en",
            "original_title": "Feel the Beat",
            "genre_ids": [
                35,
                18,
                10402
            ],
            "title": "Feel the Beat",
            "vote_average": 8.2,
            "overview": "Une jeune danseuse, qui n'est pas parvenue à percer sur la scène de Broadway, est contrainte de retourner vivre dans sa petite ville natale. Elle est recrutée afin d'apprendre à danser à un groupe d'adolescents difficiles pour une compétition.",
            "release_date": "2020-06-19"
        },
        {
            "popularity": 210.784,
            "vote_count": 13,
            "video": false,
            "poster_path": "/qmZVOAN0dq7hPWsiGyrqKi1VVrL.jpg",
            "id": 554993,
            "adult": false,
            "backdrop_path": "/oCFbh4Mrd0fuGanCgIF6sG27WGD.jpg",
            "original_language": "sv",
            "original_title": "Britt-Marie var här",
            "genre_ids": [
                35,
                18
            ],
            "title": "Britt-Marie var här",
            "vote_average": 5.2,
            "overview": "",
            "release_date": "2019-01-25"
        },
        {
            "popularity": 94.998,
            "vote_count": 29,
            "video": false,
            "poster_path": "/2Gi9ZA4kRKKsWguUoTvIyj40dxF.jpg",
            "id": 514593,
            "adult": false,
            "backdrop_path": "/chAGSv4DB9s3fsgULpSZQLN7LgN.jpg",
            "original_language": "en",
            "original_title": "You Should Have Left",
            "genre_ids": [
                27,
                9648
            ],
            "title": "You Should Have Left",
            "vote_average": 4.9,
            "overview": "Retiré dans une maison isolée au Pays de Galles avec sa nouvelle femme et sa fille pour prendre du recul, un ancien banquier souffrant mentalement de la perte de son ex-femme, perd peu à peu la raison.",
            "release_date": "2020-06-19"
        },
        {
            "popularity": 89.157,
            "id": 496243,
            "video": false,
            "vote_count": 8069,
            "vote_average": 8.5,
            "title": "Parasite",
            "release_date": "2019-05-30",
            "original_language": "ko",
            "original_title": "기생충",
            "genre_ids": [
                35,
                53,
                18
            ],
            "backdrop_path": "/ApiBzeaa95TNYliSbQ8pJv4Fje7.jpg",
            "adult": false,
            "overview": "Toute la famille de Ki-taek est au chômage. Elle s’intéresse particulièrement au train de vie de la richissime famille Park. Mais un incident se produit et les 2 familles se retrouvent mêlées, sans le savoir, à une bien étrange histoire…",
            "poster_path": "/7hLSzZX2jROmEXz2aEoh6JKUFy2.jpg"
        },
        {
            "popularity": 89.614,
            "id": 570670,
            "video": false,
            "vote_count": 2199,
            "vote_average": 7.2,
            "title": "Invisible Man",
            "release_date": "2020-02-26",
            "original_language": "en",
            "original_title": "The Invisible Man",
            "genre_ids": [
                53,
                878,
                27
            ],
            "backdrop_path": "/uZMZyvarQuXLRqf3xdpdMqzdtjb.jpg",
            "adult": false,
            "overview": "Cecilia Kass est en couple avec un brillant et riche scientifique. Ne supportant plus son comportement violent et tyrannique, elle prend la fuite une nuit et se réfugie auprès de sa sœur, leur ami d'enfance et sa fille adolescente. Mais quand l'homme se suicide en laissant à Cecilia une part importante de son immense fortune, celle-ci commence à se demander s'il est réellement mort. Tandis qu'une série de coïncidences inquiétantes menace la vie des êtres qu'elle aime, Cecilia cherche désespérément à prouver qu'elle est traquée par un homme que nul ne peut voir. Peu à peu, elle a le sentiment que sa raison vacille…",
            "poster_path": "/5FFtYEXXnQ3jEN4eFywXxb17PFS.jpg"
        },
        {
            "popularity": 86.28,
            "vote_count": 214,
            "video": false,
            "poster_path": "/yx4cp1ljJMDSFeEex0Zjv45b55E.jpg",
            "id": 581859,
            "adult": false,
            "backdrop_path": "/Aq5Zhj9iaTF6BEKNk05dlUxeHKa.jpg",
            "original_language": "en",
            "original_title": "Da 5 Bloods",
            "genre_ids": [
                18,
                10752
            ],
            "title": "Da 5 Bloods",
            "vote_average": 6.9,
            "overview": "Quatre vétérans afro-américains qui retournent au Vietnam pour y retrouver la dépouille de leur chef et un hypothétique trésor enfoui...",
            "release_date": "2020-06-12"
        },
        {
            "popularity": 104.735,
            "vote_count": 4736,
            "video": false,
            "poster_path": "/qi6qwClvTfZJiI5GhsKbtkqg28W.jpg",
            "id": 454626,
            "adult": false,
            "backdrop_path": "/stmYfCUGd8Iy6kAMBr6AmWqx8Bq.jpg",
            "original_language": "en",
            "original_title": "Sonic the Hedgehog",
            "genre_ids": [
                28,
                35,
                878,
                10751
            ],
            "title": "Sonic, le film",
            "vote_average": 7.5,
            "overview": "L'histoire du hérisson bleu le plus rapide du monde qui arrive sur Terre, sa nouvelle maison. Sonic et son nouveau meilleur ami Tom font équipe pour sauver la planète du diabolique Dr. Robotnik, bien déterminé à régner sur le monde entier.",
            "release_date": "2020-02-12"
        },
        {
            "popularity": 101.563,
            "vote_count": 89,
            "video": false,
            "poster_path": "/nrW048JoWofimI5AKXDTBzvxqRr.jpg",
            "id": 509585,
            "adult": false,
            "backdrop_path": "/akAbe8Lddj4J4vaT68EUVMufXZt.jpg",
            "original_language": "en",
            "original_title": "7500",
            "genre_ids": [
                18,
                53
            ],
            "title": "7500",
            "vote_average": 5.9,
            "overview": "Alors qu'il pilote un Airbus A319 entre Berlin et Paris, le co-pilote Tobias Ellis se retrouve menacé par un groupe d'hommes armés. Parviendra-t-il à mener ses passagers sans encombre ?",
            "release_date": "2019-12-26"
        },
        {
            "popularity": 77.457,
            "vote_count": 9936,
            "video": false,
            "poster_path": "/vWodHmxg3SG6n3FmBejUuOnbyPp.jpg",
            "id": 122917,
            "adult": false,
            "backdrop_path": "/bVmSXNgH1gpHYTDyF9Q826YwJT5.jpg",
            "original_language": "en",
            "original_title": "The Hobbit: The Battle of the Five Armies",
            "genre_ids": [
                28,
                12,
                14
            ],
            "title": "Le Hobbit : La Bataille des cinq armées",
            "vote_average": 7.3,
            "overview": "Atteignant enfin la Montagne Solitaire, Thorin et les Nains, aidés par Bilbon le Hobbit, ont réussi à récupérer leur royaume et leur trésor. Mais ils ont également réveillé le dragon Smaug qui déchaîne désormais sa colère sur les habitants de Lac-ville. À présent, les Nains, les Elfes, les Humains mais aussi les Wrags et les Orques menés par le Nécromancien, convoitent les richesses de la Montagne Solitaire. La bataille des cinq armées est imminente et Bilbon est le seul à pouvoir unir ses amis contre les puissances obscures de Sauron.",
            "release_date": "2014-12-10"
        },
        {
            "popularity": 89.685,
            "vote_count": 4635,
            "video": false,
            "poster_path": "/wdrTYPWH4UJWR2XIwCz85M6GdS3.jpg",
            "id": 495764,
            "adult": false,
            "backdrop_path": "/kvbbK2rLGSJh9rf6gg1i1iVLYQS.jpg",
            "original_language": "en",
            "original_title": "Birds of Prey (and the Fantabulous Emancipation of One Harley Quinn)",
            "genre_ids": [
                28,
                35,
                80
            ],
            "title": "Birds of Prey et la fantabuleuse histoire de Harley Quinn",
            "vote_average": 7.2,
            "overview": "Vous connaissez l'histoire du flic, de l'oiseau chanteur, de la cinglée et de la princesse mafieuse ?\r BIRDS OF PREY (ET LA FANTABULEUSE HISTOIRE D'HARLEY QUINN) est une histoire déjantée racontée par Harley en personne – d'une manière dont elle seule a le secret. Lorsque Roman Sionis, l'ennemi le plus abominable – et le plus narcissique – de Gotham, et son fidèle acolyte Zsasz décident de s'en prendre à une certaine Cass, la ville est passée au peigne fin pour retrouver la trace de la jeune fille. Les parcours de Harley, de la Chasseuse, de Black Canary et de Renee Montoya se télescopent et ce quatuor improbable n'a d'autre choix que de faire équipe pour éliminer Roman…",
            "release_date": "2020-02-05"
        },
        {
            "popularity": 119.2,
            "vote_count": 122,
            "video": false,
            "poster_path": "/yJ1mWzlTPXteNulPZeFZLKNqyas.jpg",
            "id": 706503,
            "adult": false,
            "backdrop_path": "/ynMYRX3G4JJ2dioLudZNc7oFKd.jpg",
            "original_language": "fr",
            "original_title": "Balle perdue",
            "genre_ids": [
                28,
                80,
                53
            ],
            "title": "Balle perdue",
            "vote_average": 6.9,
            "overview": "Petit génie de la mécanique, Lino est réputé pour ses voitures-bélier. Jusqu'au jour où il se fait arrêter pour un braquage qui tourne mal. Repéré par le chef d'une unité de flics de choc, il se voit proposer un marché pour éviter la prison. 9 mois plus tard, Lino a largement fait ses preuves. Mais soudain accusé à tort de meurtre, il n'a d'autre choix que de retrouver l'unique preuve de son innocence : la balle du crime, coincée dans une voiture disparue.",
            "release_date": "2020-06-19"
        },
        {
            "popularity": 80.183,
            "id": 475557,
            "video": false,
            "vote_count": 13331,
            "vote_average": 8.2,
            "title": "Joker",
            "release_date": "2019-10-02",
            "original_language": "en",
            "original_title": "Joker",
            "genre_ids": [
                80,
                53,
                18
            ],
            "backdrop_path": "/f5F4cRhQdUbyVbB5lTNCwUzD6BP.jpg",
            "adult": false,
            "overview": "Dans les années 1980, à Gotham City, Arthur Fleck, un humoriste de stand-up raté, bascule dans la folie et devient le Joker.",
            "poster_path": "/eULKKOWsO6z3m8RBhIuGNp9xsWT.jpg"
        },
        {
            "popularity": 79.253,
            "vote_count": 18620,
            "video": false,
            "poster_path": "/hSfuKPtyEryeFzapZ8UgZd4aESu.jpg",
            "id": 299536,
            "adult": false,
            "backdrop_path": "/lmZFxXgJE3vgrciwuDib0N8CfQo.jpg",
            "original_language": "en",
            "original_title": "Avengers: Infinity War",
            "genre_ids": [
                28,
                12,
                878
            ],
            "title": "Avengers : Infinity War",
            "vote_average": 8.3,
            "overview": "Les Avengers et leurs alliés devront être prêts à tout sacrifier pour neutraliser le redoutable Thanos avant que son attaque éclair ne conduise à la destruction complète de l’univers.",
            "release_date": "2018-04-25"
        },
        {
            "popularity": 64.819,
            "vote_count": 17246,
            "video": false,
            "poster_path": "/fbxQ44VRdM2PVzHSNajUseUteem.jpg",
            "id": 671,
            "adult": false,
            "backdrop_path": "/hziiv14OpD73u9gAak4XDDfBKa2.jpg",
            "original_language": "en",
            "original_title": "Harry Potter and the Philosopher's Stone",
            "genre_ids": [
                12,
                14,
                10751
            ],
            "title": "Harry Potter à l'école des sorciers",
            "vote_average": 7.9,
            "overview": "Orphelin, Harry Potter a été recueilli en bas âge par sa tante Pétunia et son oncle Vernon, deux abominables créatures qui, depuis dix ans, prennent un malin plaisir à l’humilier, le houspiller et le malmemer. Contraint de se nourrir de restes et de dormir dans un placard infesté d’araignées, le malheureux est en butte à l’hostilité de son cousin Dudley, obèse imbécile qui ne manque pas une occasion de le rouer de coups. L’année de ses 11 ans, Harry ne s’attend pas à recevoir de cadeaux, pourtant cette année là, une lettre mystérieuse va lui parvenir qui va changer son existence...",
            "release_date": "2001-11-16"
        },
        {
            "popularity": 75.023,
            "id": 181812,
            "video": false,
            "vote_count": 4951,
            "vote_average": 6.5,
            "title": "Star Wars : L'Ascension de Skywalker",
            "release_date": "2019-12-18",
            "original_language": "en",
            "original_title": "Star Wars: The Rise of Skywalker",
            "genre_ids": [
                28,
                12,
                878
            ],
            "backdrop_path": "/jOzrELAzFxtMx2I4uDGHOotdfsS.jpg",
            "adult": false,
            "overview": "Lucasfilm et le réalisateur J.J. Abrams unissent de nouveau leurs forces pour embarquer le spectateur dans un voyage épique vers une galaxie lointaine, très lointaine. Dans ce dernier acte captivant de la prodigieuse saga Skywalker, de nouvelles légendes voient le jour. L’ultime combat pour la liberté est à venir. Après le retour mystérieux de Palpatine, la Résistance affronte à nouveau le Premier Ordre. De nouvelles légendes vont naître dans cette bataille épique pour la liberté. La conclusion de la saga Skywalker.",
            "poster_path": "/w1fqnG3W2xqCPTvjdPJTcfPMYH1.jpg"
        },
        {
            "popularity": 73.864,
            "vote_count": 6202,
            "video": false,
            "poster_path": "/1Z0gk73JuDSZyG04lSudR9zxyjr.jpg",
            "id": 420817,
            "adult": false,
            "backdrop_path": "/v4yVTbbl8dE1UP2dWu5CLyaXOku.jpg",
            "original_language": "en",
            "original_title": "Aladdin",
            "genre_ids": [
                12,
                35,
                14,
                10749,
                10751
            ],
            "title": "Aladdin",
            "vote_average": 7.1,
            "overview": "Quand un charmant garçon des rues du nom d’Aladdin cherche à conquérir le cœur de la belle, énigmatique et fougueuse princesse Jasmine, il fait appel au tout puissant Génie, le seul qui puisse lui permettre de réaliser trois vœux, dont celui de devenir le prince Ali pour mieux accéder au palais…",
            "release_date": "2019-05-22"
        },
        {
            "popularity": 104.135,
            "vote_count": 186,
            "video": false,
            "poster_path": "/nGwyqkNCes8Qv8WCGX8V6MCdTxW.jpg",
            "id": 130267,
            "adult": false,
            "backdrop_path": "/dcXgShktPpOLhmd8iVWhxPn6OgM.jpg",
            "original_language": "en",
            "original_title": "Seal Team Six: The Raid on Osama Bin Laden",
            "genre_ids": [
                28,
                80,
                18,
                53
            ],
            "title": "Code Name : Geronimo",
            "vote_average": 5.9,
            "overview": "Le Navy Seal Team 6 est « l’élite de l’élite » de l’armée américaine. Cette unité chargée exclusivement de l’antiterrorisme a reçu une mission ultra secrète. Les ordres qui émanent directement du Pentagone sont clairs : capturer et abattre s’il le faut une cible nommée « Geronimo ». Destination : la base militaire de Bagram en Afghanistan puis le nord du Pakistan où plus de 8 mois de surveillance ont révélé l’endroit où se cacherait Oussama Ben Laden…",
            "release_date": "2012-11-04"
        },
        {
            "popularity": 73.406,
            "id": 530915,
            "video": false,
            "vote_count": 5480,
            "vote_average": 7.9,
            "title": "1917",
            "release_date": "2019-12-25",
            "original_language": "en",
            "original_title": "1917",
            "genre_ids": [
                10752,
                18,
                28,
                36
            ],
            "backdrop_path": "/cqa3sa4c4jevgnEJwq3CMF8UfTG.jpg",
            "adult": false,
            "overview": "Pris dans la tourmente de la Première Guerre Mondiale, Schofield et Blake, deux jeunes soldats britanniques, se voient assigner une mission à proprement parler impossible. Porteurs d’un message qui pourrait empêcher une attaque dévastatrice et la mort de centaines de soldats, dont le frère de Blake, ils se lancent dans une véritable course contre la montre, derrière les lignes ennemies.",
            "poster_path": "/zppHKKEkHg9ZGzOdzZwW8lZYYqy.jpg"
        }
    ]
}**/
