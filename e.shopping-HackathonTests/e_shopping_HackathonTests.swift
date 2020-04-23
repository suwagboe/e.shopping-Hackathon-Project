//
//  e_shopping_HackathonTests.swift
//  e.shopping-HackathonTests
//
//  Created by Pursuit on 4/20/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import XCTest
@testable import e_shopping_Hackathon

class e_shopping_HackathonTests: XCTestCase {
    
    func testNewsArticleModel() {
        let jsonData = """
{
    "status": "OK",
    "copyright": "Copyright (c) 2020 The New York Times Company. All Rights Reserved.",
    "response": {
        "docs": [
            {
                "abstract": "Nestlé wants to draw more spring water from a northern Florida site owned by a local family — but environmentalists are pushing back.",
                "web_url": "https://www.nytimes.com/2020/03/08/business/nestle-florida-water.html",
                "snippet": "Nestlé wants to draw more spring water from a northern Florida site owned by a local family — but environmentalists are pushing back.",
                "lead_paragraph": "HIGH SPRINGS, Fla. — One by one, the mermaids dived into the water.",
                "print_section": "B",
                "print_page": "1",
                "source": "The New York Times",
                "multimedia": [
                    {
                        "rank": 0,
                        "subtype": "xlarge",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/merlin_169124400_971706cc-6dea-49c2-a8e2-a5778016c27c-articleLarge.jpg",
                        "height": 400,
                        "width": 600,
                        "legacy": {
                            "xlarge": "images/2020/03/08/business/08floridawater-1/merlin_169124400_971706cc-6dea-49c2-a8e2-a5778016c27c-articleLarge.jpg",
                            "xlargewidth": 600,
                            "xlargeheight": 400
                        },
                        "subType": "xlarge",
                        "crop_name": "articleLarge"
                    },
                    {
                        "rank": 0,
                        "subtype": "popup",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/merlin_169124400_971706cc-6dea-49c2-a8e2-a5778016c27c-popup.jpg",
                        "height": 433,
                        "width": 650,
                        "legacy": {},
                        "subType": "popup",
                        "crop_name": "popup"
                    },
                    {
                        "rank": 0,
                        "subtype": "blog480",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/merlin_169124400_971706cc-6dea-49c2-a8e2-a5778016c27c-blog480.jpg",
                        "height": 320,
                        "width": 480,
                        "legacy": {},
                        "subType": "blog480",
                        "crop_name": "blog480"
                    },
                    {
                        "rank": 0,
                        "subtype": "blog533",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/merlin_169124400_971706cc-6dea-49c2-a8e2-a5778016c27c-blog533.jpg",
                        "height": 355,
                        "width": 533,
                        "legacy": {},
                        "subType": "blog533",
                        "crop_name": "blog533"
                    },
                    {
                        "rank": 0,
                        "subtype": "blog427",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/merlin_169124400_971706cc-6dea-49c2-a8e2-a5778016c27c-blog427.jpg",
                        "height": 285,
                        "width": 427,
                        "legacy": {},
                        "subType": "blog427",
                        "crop_name": "blog427"
                    },
                    {
                        "rank": 0,
                        "subtype": "tmagSF",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/merlin_169124400_971706cc-6dea-49c2-a8e2-a5778016c27c-tmagSF.jpg",
                        "height": 241,
                        "width": 362,
                        "legacy": {},
                        "subType": "tmagSF",
                        "crop_name": "tmagSF"
                    },
                    {
                        "rank": 0,
                        "subtype": "tmagArticle",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/merlin_169124400_971706cc-6dea-49c2-a8e2-a5778016c27c-tmagArticle.jpg",
                        "height": 395,
                        "width": 592,
                        "legacy": {},
                        "subType": "tmagArticle",
                        "crop_name": "tmagArticle"
                    },
                    {
                        "rank": 0,
                        "subtype": "slide",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/merlin_169124400_971706cc-6dea-49c2-a8e2-a5778016c27c-slide.jpg",
                        "height": 400,
                        "width": 600,
                        "legacy": {},
                        "subType": "slide",
                        "crop_name": "slide"
                    },
                    {
                        "rank": 0,
                        "subtype": "jumbo",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/merlin_169124400_971706cc-6dea-49c2-a8e2-a5778016c27c-jumbo.jpg",
                        "height": 683,
                        "width": 1024,
                        "legacy": {},
                        "subType": "jumbo",
                        "crop_name": "jumbo"
                    },
                    {
                        "rank": 0,
                        "subtype": "superJumbo",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/merlin_169124400_971706cc-6dea-49c2-a8e2-a5778016c27c-superJumbo.jpg",
                        "height": 1365,
                        "width": 2048,
                        "legacy": {},
                        "subType": "superJumbo",
                        "crop_name": "superJumbo"
                    },
                    {
                        "rank": 0,
                        "subtype": "blog225",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/merlin_169124400_971706cc-6dea-49c2-a8e2-a5778016c27c-blog225.jpg",
                        "height": 150,
                        "width": 225,
                        "legacy": {},
                        "subType": "blog225",
                        "crop_name": "blog225"
                    },
                    {
                        "rank": 0,
                        "subtype": "master1050",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/merlin_169124400_971706cc-6dea-49c2-a8e2-a5778016c27c-master1050.jpg",
                        "height": 700,
                        "width": 1050,
                        "legacy": {},
                        "subType": "master1050",
                        "crop_name": "master1050"
                    },
                    {
                        "rank": 0,
                        "subtype": "master675",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/merlin_169124400_971706cc-6dea-49c2-a8e2-a5778016c27c-master675.jpg",
                        "height": 450,
                        "width": 675,
                        "legacy": {},
                        "subType": "master675",
                        "crop_name": "master675"
                    },
                    {
                        "rank": 0,
                        "subtype": "master495",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/merlin_169124400_971706cc-6dea-49c2-a8e2-a5778016c27c-master495.jpg",
                        "height": 330,
                        "width": 495,
                        "legacy": {},
                        "subType": "master495",
                        "crop_name": "master495"
                    },
                    {
                        "rank": 0,
                        "subtype": "master180",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/merlin_169124400_971706cc-6dea-49c2-a8e2-a5778016c27c-master180.jpg",
                        "height": 120,
                        "width": 180,
                        "legacy": {},
                        "subType": "master180",
                        "crop_name": "master180"
                    },
                    {
                        "rank": 0,
                        "subtype": "master315",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/merlin_169124400_971706cc-6dea-49c2-a8e2-a5778016c27c-master315.jpg",
                        "height": 210,
                        "width": 315,
                        "legacy": {},
                        "subType": "master315",
                        "crop_name": "master315"
                    },
                    {
                        "rank": 0,
                        "subtype": "master768",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/merlin_169124400_971706cc-6dea-49c2-a8e2-a5778016c27c-master768.jpg",
                        "height": 512,
                        "width": 768,
                        "legacy": {},
                        "subType": "master768",
                        "crop_name": "master768"
                    },
                    {
                        "rank": 0,
                        "subtype": "thumbnail",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-thumbStandard.jpg",
                        "height": 75,
                        "width": 75,
                        "legacy": {
                            "thumbnail": "images/2020/03/08/business/08floridawater-1/08floridawater-1-thumbStandard.jpg",
                            "thumbnailwidth": 75,
                            "thumbnailheight": 75
                        },
                        "subType": "thumbnail",
                        "crop_name": "thumbStandard"
                    },
                    {
                        "rank": 0,
                        "subtype": "blogSmallThumb",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-blogSmallThumb.jpg",
                        "height": 50,
                        "width": 50,
                        "legacy": {},
                        "subType": "blogSmallThumb",
                        "crop_name": "blogSmallThumb"
                    },
                    {
                        "rank": 0,
                        "subtype": "thumbLarge",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-thumbLarge.jpg",
                        "height": 150,
                        "width": 150,
                        "legacy": {},
                        "subType": "thumbLarge",
                        "crop_name": "thumbLarge"
                    },
                    {
                        "rank": 0,
                        "subtype": "smallSquare168",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-smallSquare168.jpg",
                        "height": 168,
                        "width": 168,
                        "legacy": {},
                        "subType": "smallSquare168",
                        "crop_name": "smallSquare168"
                    },
                    {
                        "rank": 0,
                        "subtype": "smallSquare252",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-smallSquare252.jpg",
                        "height": 252,
                        "width": 252,
                        "legacy": {},
                        "subType": "smallSquare252",
                        "crop_name": "smallSquare252"
                    },
                    {
                        "rank": 0,
                        "subtype": "square320",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-square320.jpg",
                        "height": 320,
                        "width": 320,
                        "legacy": {},
                        "subType": "square320",
                        "crop_name": "square320"
                    },
                    {
                        "rank": 0,
                        "subtype": "moth",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-moth.jpg",
                        "height": 151,
                        "width": 151,
                        "legacy": {},
                        "subType": "moth",
                        "crop_name": "moth"
                    },
                    {
                        "rank": 0,
                        "subtype": "filmstrip",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-filmstrip.jpg",
                        "height": 190,
                        "width": 190,
                        "legacy": {},
                        "subType": "filmstrip",
                        "crop_name": "filmstrip"
                    },
                    {
                        "rank": 0,
                        "subtype": "square640",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-square640.jpg",
                        "height": 640,
                        "width": 640,
                        "legacy": {},
                        "subType": "square640",
                        "crop_name": "square640"
                    },
                    {
                        "rank": 0,
                        "subtype": "mediumSquare149",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-mediumSquare149.jpg",
                        "height": 149,
                        "width": 149,
                        "legacy": {},
                        "subType": "mediumSquare149",
                        "crop_name": "mediumSquare149"
                    },
                    {
                        "rank": 0,
                        "subtype": "mediumSquareAt3X",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-mediumSquareAt3X.jpg",
                        "height": 1800,
                        "width": 1800,
                        "legacy": {},
                        "subType": "mediumSquareAt3X",
                        "crop_name": "mediumSquareAt3X"
                    },
                    {
                        "rank": 0,
                        "subtype": "sfSpan",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/merlin_169124400_971706cc-6dea-49c2-a8e2-a5778016c27c-sfSpan.jpg",
                        "height": 263,
                        "width": 395,
                        "legacy": {},
                        "subType": "sfSpan",
                        "crop_name": "sfSpan"
                    },
                    {
                        "rank": 0,
                        "subtype": "largeHorizontal375",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/merlin_169124400_971706cc-6dea-49c2-a8e2-a5778016c27c-largeHorizontal375.jpg",
                        "height": 250,
                        "width": 375,
                        "legacy": {},
                        "subType": "largeHorizontal375",
                        "crop_name": "largeHorizontal375"
                    },
                    {
                        "rank": 0,
                        "subtype": "largeHorizontalJumbo",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/merlin_169124400_971706cc-6dea-49c2-a8e2-a5778016c27c-largeHorizontalJumbo.jpg",
                        "height": 683,
                        "width": 1024,
                        "legacy": {},
                        "subType": "largeHorizontalJumbo",
                        "crop_name": "largeHorizontalJumbo"
                    },
                    {
                        "rank": 0,
                        "subtype": "horizontalMediumAt2X",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/merlin_169124400_971706cc-6dea-49c2-a8e2-a5778016c27c-horizontalMediumAt2X.jpg",
                        "height": 4480,
                        "width": 6720,
                        "legacy": {},
                        "subType": "horizontalMediumAt2X",
                        "crop_name": "horizontalMediumAt2X"
                    },
                    {
                        "rank": 0,
                        "subtype": "hpLarge",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-hpLarge.jpg",
                        "height": 287,
                        "width": 511,
                        "legacy": {},
                        "subType": "hpLarge",
                        "crop_name": "hpLarge"
                    },
                    {
                        "rank": 0,
                        "subtype": "largeWidescreen573",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-largeWidescreen573.jpg",
                        "height": 322,
                        "width": 573,
                        "legacy": {},
                        "subType": "largeWidescreen573",
                        "crop_name": "largeWidescreen573"
                    },
                    {
                        "rank": 0,
                        "subtype": "largeWidescreen1050",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-largeWidescreen1050.jpg",
                        "height": 591,
                        "width": 1050,
                        "legacy": {},
                        "subType": "largeWidescreen1050",
                        "crop_name": "largeWidescreen1050"
                    },
                    {
                        "rank": 0,
                        "subtype": "wide",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-thumbWide.jpg",
                        "height": 126,
                        "width": 190,
                        "legacy": {
                            "widewidth": 190,
                            "wideheight": 126,
                            "wide": "images/2020/03/08/business/08floridawater-1/08floridawater-1-thumbWide.jpg"
                        },
                        "subType": "wide",
                        "crop_name": "thumbWide"
                    },
                    {
                        "rank": 0,
                        "subtype": "videoThumb",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-videoThumb.jpg",
                        "height": 50,
                        "width": 75,
                        "legacy": {},
                        "subType": "videoThumb",
                        "crop_name": "videoThumb"
                    },
                    {
                        "rank": 0,
                        "subtype": "videoLarge",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-videoLarge.jpg",
                        "height": 507,
                        "width": 768,
                        "legacy": {},
                        "subType": "videoLarge",
                        "crop_name": "videoLarge"
                    },
                    {
                        "rank": 0,
                        "subtype": "mediumThreeByTwo210",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-mediumThreeByTwo210.jpg",
                        "height": 140,
                        "width": 210,
                        "legacy": {},
                        "subType": "mediumThreeByTwo210",
                        "crop_name": "mediumThreeByTwo210"
                    },
                    {
                        "rank": 0,
                        "subtype": "mediumThreeByTwo225",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-mediumThreeByTwo225.jpg",
                        "height": 150,
                        "width": 225,
                        "legacy": {},
                        "subType": "mediumThreeByTwo225",
                        "crop_name": "mediumThreeByTwo225"
                    },
                    {
                        "rank": 0,
                        "subtype": "mediumThreeByTwo440",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-mediumThreeByTwo440.jpg",
                        "height": 293,
                        "width": 440,
                        "legacy": {},
                        "subType": "mediumThreeByTwo440",
                        "crop_name": "mediumThreeByTwo440"
                    },
                    {
                        "rank": 0,
                        "subtype": "mediumThreeByTwo252",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-mediumThreeByTwo252.jpg",
                        "height": 168,
                        "width": 252,
                        "legacy": {},
                        "subType": "mediumThreeByTwo252",
                        "crop_name": "mediumThreeByTwo252"
                    },
                    {
                        "rank": 0,
                        "subtype": "mediumThreeByTwo378",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-mediumThreeByTwo378.jpg",
                        "height": 252,
                        "width": 378,
                        "legacy": {},
                        "subType": "mediumThreeByTwo378",
                        "crop_name": "mediumThreeByTwo378"
                    },
                    {
                        "rank": 0,
                        "subtype": "threeByTwoLargeAt2X",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-threeByTwoLargeAt2X.jpg",
                        "height": 3496,
                        "width": 5244,
                        "legacy": {},
                        "subType": "threeByTwoLargeAt2X",
                        "crop_name": "threeByTwoLargeAt2X"
                    },
                    {
                        "rank": 0,
                        "subtype": "threeByTwoMediumAt2X",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-threeByTwoMediumAt2X.jpg",
                        "height": 1000,
                        "width": 1500,
                        "legacy": {},
                        "subType": "threeByTwoMediumAt2X",
                        "crop_name": "threeByTwoMediumAt2X"
                    },
                    {
                        "rank": 0,
                        "subtype": "threeByTwoSmallAt2X",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-threeByTwoSmallAt2X.jpg",
                        "height": 400,
                        "width": 600,
                        "legacy": {},
                        "subType": "threeByTwoSmallAt2X",
                        "crop_name": "threeByTwoSmallAt2X"
                    },
                    {
                        "rank": 0,
                        "subtype": "articleInline",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-articleInline.jpg",
                        "height": 128,
                        "width": 190,
                        "legacy": {},
                        "subType": "articleInline",
                        "crop_name": "articleInline"
                    },
                    {
                        "rank": 0,
                        "subtype": "hpSmall",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-hpSmall.jpg",
                        "height": 109,
                        "width": 163,
                        "legacy": {},
                        "subType": "hpSmall",
                        "crop_name": "hpSmall"
                    },
                    {
                        "rank": 0,
                        "subtype": "blogSmallInline",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-blogSmallInline.jpg",
                        "height": 101,
                        "width": 151,
                        "legacy": {},
                        "subType": "blogSmallInline",
                        "crop_name": "blogSmallInline"
                    },
                    {
                        "rank": 0,
                        "subtype": "mediumFlexible177",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-mediumFlexible177.jpg",
                        "height": 119,
                        "width": 177,
                        "legacy": {},
                        "subType": "mediumFlexible177",
                        "crop_name": "mediumFlexible177"
                    },
                    {
                        "rank": 0,
                        "subtype": "videoSmall",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-videoSmall.jpg",
                        "height": 281,
                        "width": 500,
                        "legacy": {},
                        "subType": "videoSmall",
                        "crop_name": "videoSmall"
                    },
                    {
                        "rank": 0,
                        "subtype": "videoHpMedium",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-videoHpMedium.jpg",
                        "height": 211,
                        "width": 375,
                        "legacy": {},
                        "subType": "videoHpMedium",
                        "crop_name": "videoHpMedium"
                    },
                    {
                        "rank": 0,
                        "subtype": "videoSixteenByNine600",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-videoSixteenByNine600.jpg",
                        "height": 338,
                        "width": 600,
                        "legacy": {},
                        "subType": "videoSixteenByNine600",
                        "crop_name": "videoSixteenByNine600"
                    },
                    {
                        "rank": 0,
                        "subtype": "videoSixteenByNine540",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-videoSixteenByNine540.jpg",
                        "height": 304,
                        "width": 540,
                        "legacy": {},
                        "subType": "videoSixteenByNine540",
                        "crop_name": "videoSixteenByNine540"
                    },
                    {
                        "rank": 0,
                        "subtype": "videoSixteenByNine495",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-videoSixteenByNine495.jpg",
                        "height": 278,
                        "width": 495,
                        "legacy": {},
                        "subType": "videoSixteenByNine495",
                        "crop_name": "videoSixteenByNine495"
                    },
                    {
                        "rank": 0,
                        "subtype": "videoSixteenByNine390",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-videoSixteenByNine390.jpg",
                        "height": 219,
                        "width": 390,
                        "legacy": {},
                        "subType": "videoSixteenByNine390",
                        "crop_name": "videoSixteenByNine390"
                    },
                    {
                        "rank": 0,
                        "subtype": "videoSixteenByNine1050",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-videoSixteenByNine1050.jpg",
                        "height": 591,
                        "width": 1050,
                        "legacy": {},
                        "subType": "videoSixteenByNine1050",
                        "crop_name": "videoSixteenByNine1050"
                    },
                    {
                        "rank": 0,
                        "subtype": "videoSixteenByNine480",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-videoSixteenByNine480.jpg",
                        "height": 270,
                        "width": 480,
                        "legacy": {},
                        "subType": "videoSixteenByNine480",
                        "crop_name": "videoSixteenByNine480"
                    },
                    {
                        "rank": 0,
                        "subtype": "videoSixteenByNine310",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-videoSixteenByNine310.jpg",
                        "height": 174,
                        "width": 310,
                        "legacy": {},
                        "subType": "videoSixteenByNine310",
                        "crop_name": "videoSixteenByNine310"
                    },
                    {
                        "rank": 0,
                        "subtype": "videoSixteenByNine225",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-videoSixteenByNine225.jpg",
                        "height": 126,
                        "width": 225,
                        "legacy": {},
                        "subType": "videoSixteenByNine225",
                        "crop_name": "videoSixteenByNine225"
                    },
                    {
                        "rank": 0,
                        "subtype": "videoSixteenByNine96",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-videoSixteenByNine96.jpg",
                        "height": 54,
                        "width": 96,
                        "legacy": {},
                        "subType": "videoSixteenByNine96",
                        "crop_name": "videoSixteenByNine96"
                    },
                    {
                        "rank": 0,
                        "subtype": "videoSixteenByNine3000",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-videoSixteenByNine3000.jpg",
                        "height": 1688,
                        "width": 3000,
                        "legacy": {},
                        "subType": "videoSixteenByNine3000",
                        "crop_name": "videoSixteenByNine3000"
                    },
                    {
                        "rank": 0,
                        "subtype": "videoSixteenByNine768",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-videoSixteenByNine768.jpg",
                        "height": 432,
                        "width": 768,
                        "legacy": {},
                        "subType": "videoSixteenByNine768",
                        "crop_name": "videoSixteenByNine768"
                    },
                    {
                        "rank": 0,
                        "subtype": "videoSixteenByNine150",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-videoSixteenByNine150.jpg",
                        "height": 84,
                        "width": 150,
                        "legacy": {},
                        "subType": "videoSixteenByNine150",
                        "crop_name": "videoSixteenByNine150"
                    },
                    {
                        "rank": 0,
                        "subtype": "videoSixteenByNineJumbo1600",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-videoSixteenByNineJumbo1600.jpg",
                        "height": 900,
                        "width": 1600,
                        "legacy": {},
                        "subType": "videoSixteenByNineJumbo1600",
                        "crop_name": "videoSixteenByNineJumbo1600"
                    },
                    {
                        "rank": 0,
                        "subtype": "miniMoth",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-miniMoth.jpg",
                        "height": 70,
                        "width": 151,
                        "legacy": {},
                        "subType": "miniMoth",
                        "crop_name": "miniMoth"
                    },
                    {
                        "rank": 0,
                        "subtype": "windowsTile336H",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-windowsTile336H.jpg",
                        "height": 336,
                        "width": 694,
                        "legacy": {},
                        "subType": "windowsTile336H",
                        "crop_name": "windowsTile336H"
                    },
                    {
                        "rank": 0,
                        "subtype": "videoFifteenBySeven1305",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-videoFifteenBySeven1305.jpg",
                        "height": 609,
                        "width": 1305,
                        "legacy": {},
                        "subType": "videoFifteenBySeven1305",
                        "crop_name": "videoFifteenBySeven1305"
                    },
                    {
                        "rank": 0,
                        "subtype": "videoFifteenBySeven2610",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-videoFifteenBySeven2610.jpg",
                        "height": 1218,
                        "width": 2610,
                        "legacy": {},
                        "subType": "videoFifteenBySeven2610",
                        "crop_name": "videoFifteenBySeven2610"
                    },
                    {
                        "rank": 0,
                        "subtype": "facebookJumbo",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-facebookJumbo.jpg",
                        "height": 550,
                        "width": 1050,
                        "legacy": {},
                        "subType": "facebookJumbo",
                        "crop_name": "facebookJumbo"
                    },
                    {
                        "rank": 0,
                        "subtype": "watch308",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-watch308.jpg",
                        "height": 348,
                        "width": 312,
                        "legacy": {},
                        "subType": "watch308",
                        "crop_name": "watch308"
                    },
                    {
                        "rank": 0,
                        "subtype": "watch268",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-watch268.jpg",
                        "height": 303,
                        "width": 272,
                        "legacy": {},
                        "subType": "watch268",
                        "crop_name": "watch268"
                    },
                    {
                        "rank": 0,
                        "subtype": "verticalTwoByThree735",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/08floridawater-1-verticalTwoByThree735.jpg",
                        "height": 1102,
                        "width": 735,
                        "legacy": {},
                        "subType": "verticalTwoByThree735",
                        "crop_name": "verticalTwoByThree735"
                    },
                    {
                        "rank": 0,
                        "subtype": "mobileMasterAt3x",
                        "caption": null,
                        "credit": null,
                        "type": "image",
                        "url": "images/2020/03/08/business/08floridawater-1/merlin_169124400_971706cc-6dea-49c2-a8e2-a5778016c27c-mobileMasterAt3x.jpg",
                        "height": 1200,
                        "width": 1800,
                        "legacy": {},
                        "subType": "mobileMasterAt3x",
                        "crop_name": "mobileMasterAt3x"
                    }
                ],
                "headline": {
                    "main": "Where Mermaids Play, a Nasty Water Fight",
                    "kicker": null,
                    "content_kicker": null,
                    "print_headline": "In Florida, Troubled Waters As Nestlé Pushes for More",
                    "name": null,
                    "seo": null,
                    "sub": null
                },
                "keywords": [
                    {
                        "name": "subject",
                        "value": "Water",
                        "rank": 1,
                        "major": "N"
                    },
                    {
                        "name": "glocations",
                        "value": "Santa Fe River (Fla)",
                        "rank": 2,
                        "major": "N"
                    },
                    {
                        "name": "glocations",
                        "value": "Florida",
                        "rank": 3,
                        "major": "N"
                    },
                    {
                        "name": "subject",
                        "value": "AQUIFERS",
                        "rank": 4,
                        "major": "N"
                    },
                    {
                        "name": "organizations",
                        "value": "Nestle SA",
                        "rank": 5,
                        "major": "N"
                    },
                    {
                        "name": "subject",
                        "value": "Regulation and Deregulation of Industry",
                        "rank": 6,
                        "major": "N"
                    },
                    {
                        "name": "glocations",
                        "value": "Gainesville (Fla)",
                        "rank": 7,
                        "major": "N"
                    },
                    {
                        "name": "organizations",
                        "value": "Ginnie Springs Outdoors (Fla)",
                        "rank": 8,
                        "major": "N"
                    },
                    {
                        "name": "organizations",
                        "value": "Seven Springs Water Co",
                        "rank": 9,
                        "major": "N"
                    },
                    {
                        "name": "subject",
                        "value": "Environment",
                        "rank": 10,
                        "major": "N"
                    }
                ],
                "pub_date": "2020-03-08T19:24:17+0000",
                "document_type": "article",
                "news_desk": "Business",
                "section_name": "Business Day",
                "byline": {
                    "original": "By Julie Creswell",
                    "person": [
                        {
                            "firstname": "Julie",
                            "middlename": null,
                            "lastname": "Creswell",
                            "qualifier": null,
                            "title": null,
                            "role": "reported",
                            "organization": "",
                            "rank": 1
                        }
                    ],
                    "organization": null
                },
                "type_of_material": "News",
                "_id": "nyt://article/d5c641da-f586-57f6-a2c2-964bbaebd4b2",
                "word_count": 1954,
                "uri": "nyt://article/d5c641da-f586-57f6-a2c2-964bbaebd4b2"
            }]
            
        }
    }
""".data(using: .utf8)!
        
    enum ImageFormat: String {
        case superJumbo = "superJumbo"
        case thumbLarge = "thumbLarge"
        case standardThumbnail = "Standard Thumbnail"
        case normal = "Normal"
    }
    struct TopStories: Codable & Equatable {
        let response: Docs
    }
    struct Docs: Codable & Equatable {
        let docs: [Article]
    }
    struct Article: Codable & Equatable {
        let abstract: String
        let webURL: String
        let publicationDate: String
        let multimedia: [Multimedia]?
        private enum CodingKeys: String, CodingKey {
            case abstract
            case webURL = "web_url"
            case publicationDate = "pub_date"
            case multimedia
        }
    }
    struct Multimedia: Codable & Equatable {
        let url: String
        let height: Double
        let width: Double
    }
    let expedctedArticleTitle = "Nestlé wants to draw more spring water from a northern Florida site owned by a local family — but environmentalists are pushing back."
    
    do {
        let results = try JSONDecoder().decode(TopStories.self, from: jsonData)
        let decodedResult = results.response.docs.first?.abstract
        XCTAssertEqual(expedctedArticleTitle, decodedResult)
    } catch {
    XCTFail("Decoding error: \(error)")
    }
}
    
}
