class Flight
  require 'net/http'
  require 'json'

  def self.get_all
    example = [
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T08:00:00.000",
                "estimatedTime"=> "2019-03-09T07:51:00.000",
                "actualTime"=> "2019-03-09T07:51:00.000",
                "estimatedRunway"=> "2019-03-09T08:03:00.000",
                "actualRunway"=> "2019-03-09T08:03:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KZN",
                "icaoCode"=> "UWKD",
                "terminal"=> "1A",
                "scheduledTime"=> "2019-03-09T09:35:00.000",
                "estimatedTime"=> "2019-03-09T09:09:00.000",
                "actualTime"=> "2019-03-09T09:09:00.000",
                "estimatedRunway"=> "2019-03-09T09:01:00.000",
                "actualRunway"=> "2019-03-09T09:01:00.000"
            },
            "airline"=> {
                "name"=> "Aegean Airlines",
                "iataCode"=> "A3",
                "icaoCode"=> "AEE"
            },
            "flight"=> {
                "number"=> "3512",
                "iataNumber"=> "A33512",
                "icaoNumber"=> "AEE3512"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "61",
                    "iataNumber"=> "S761",
                    "icaoNumber"=> "SBI61"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T08:00:00.000",
                "estimatedTime"=> "2019-03-09T07:51:00.000",
                "actualTime"=> "2019-03-09T07:51:00.000",
                "estimatedRunway"=> "2019-03-09T08:03:00.000",
                "actualRunway"=> "2019-03-09T08:03:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KZN",
                "icaoCode"=> "UWKD",
                "terminal"=> "1A",
                "scheduledTime"=> "2019-03-09T09:35:00.000",
                "estimatedTime"=> "2019-03-09T09:09:00.000",
                "actualTime"=> "2019-03-09T09:09:00.000",
                "estimatedRunway"=> "2019-03-09T09:01:00.000",
                "actualRunway"=> "2019-03-09T09:01:00.000"
            },
            "airline"=> {
                "name"=> "British Airways",
                "iataCode"=> "BA",
                "icaoCode"=> "BAW"
            },
            "flight"=> {
                "number"=> "8791",
                "iataNumber"=> "BA8791",
                "icaoNumber"=> "BAW8791"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "61",
                    "iataNumber"=> "S761",
                    "icaoNumber"=> "SBI61"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T08:00:00.000",
                "estimatedTime"=> "2019-03-09T07:51:00.000",
                "actualTime"=> "2019-03-09T07:51:00.000",
                "estimatedRunway"=> "2019-03-09T08:03:00.000",
                "actualRunway"=> "2019-03-09T08:03:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KZN",
                "icaoCode"=> "UWKD",
                "terminal"=> "1A",
                "scheduledTime"=> "2019-03-09T09:35:00.000",
                "estimatedTime"=> "2019-03-09T09:09:00.000",
                "actualTime"=> "2019-03-09T09:09:00.000",
                "estimatedRunway"=> "2019-03-09T09:01:00.000",
                "actualRunway"=> "2019-03-09T09:01:00.000"
            },
            "airline"=> {
                "name"=> "Aigle Azur",
                "iataCode"=> "ZI",
                "icaoCode"=> "AAF"
            },
            "flight"=> {
                "number"=> "1066",
                "iataNumber"=> "ZI1066",
                "icaoNumber"=> "AAF1066"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "61",
                    "iataNumber"=> "S761",
                    "icaoNumber"=> "SBI61"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T08:00:00.000",
                "estimatedTime"=> "2019-03-09T07:51:00.000",
                "actualTime"=> "2019-03-09T07:51:00.000",
                "estimatedRunway"=> "2019-03-09T08:03:00.000",
                "actualRunway"=> "2019-03-09T08:03:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KZN",
                "icaoCode"=> "UWKD",
                "terminal"=> "1A",
                "scheduledTime"=> "2019-03-09T09:35:00.000",
                "estimatedTime"=> "2019-03-09T09:09:00.000",
                "actualTime"=> "2019-03-09T09:09:00.000",
                "estimatedRunway"=> "2019-03-09T09:01:00.000",
                "actualRunway"=> "2019-03-09T09:01:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "61",
                "iataNumber"=> "S761",
                "icaoNumber"=> "SBI61"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "38",
                "scheduledTime"=> "2019-03-09T08:10:00.000",
                "estimatedTime"=> "2019-03-09T08:06:00.000",
                "actualTime"=> "2019-03-09T08:06:00.000",
                "estimatedRunway"=> "2019-03-09T08:17:00.000",
                "actualRunway"=> "2019-03-09T08:17:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KRR",
                "icaoCode"=> "URKK",
                "scheduledTime"=> "2019-03-09T10:35:00.000",
                "estimatedTime"=> "2019-03-09T10:10:00.000",
                "actualTime"=> "2019-03-09T10:10:00.000",
                "estimatedRunway"=> "2019-03-09T09:57:00.000"
            },
            "airline"=> {
                "name"=> "British Airways",
                "iataCode"=> "BA",
                "icaoCode"=> "BAW"
            },
            "flight"=> {
                "number"=> "8771",
                "iataNumber"=> "BA8771",
                "icaoNumber"=> "BAW8771"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1147",
                    "iataNumber"=> "S71147",
                    "icaoNumber"=> "SBI1147"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "38",
                "scheduledTime"=> "2019-03-09T08:10:00.000",
                "estimatedTime"=> "2019-03-09T08:06:00.000",
                "actualTime"=> "2019-03-09T08:06:00.000",
                "estimatedRunway"=> "2019-03-09T08:17:00.000",
                "actualRunway"=> "2019-03-09T08:17:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KRR",
                "icaoCode"=> "URKK",
                "scheduledTime"=> "2019-03-09T10:35:00.000",
                "estimatedTime"=> "2019-03-09T10:10:00.000",
                "actualTime"=> "2019-03-09T10:10:00.000",
                "estimatedRunway"=> "2019-03-09T09:57:00.000"
            },
            "airline"=> {
                "name"=> "Aigle Azur",
                "iataCode"=> "ZI",
                "icaoCode"=> "AAF"
            },
            "flight"=> {
                "number"=> "1069",
                "iataNumber"=> "ZI1069",
                "icaoNumber"=> "AAF1069"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1147",
                    "iataNumber"=> "S71147",
                    "icaoNumber"=> "SBI1147"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "38",
                "scheduledTime"=> "2019-03-09T08:10:00.000",
                "estimatedTime"=> "2019-03-09T08:06:00.000",
                "actualTime"=> "2019-03-09T08:06:00.000",
                "estimatedRunway"=> "2019-03-09T08:17:00.000",
                "actualRunway"=> "2019-03-09T08:17:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KRR",
                "icaoCode"=> "URKK",
                "scheduledTime"=> "2019-03-09T10:35:00.000",
                "estimatedTime"=> "2019-03-09T10:10:00.000",
                "actualTime"=> "2019-03-09T10:10:00.000",
                "estimatedRunway"=> "2019-03-09T09:57:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "1147",
                "iataNumber"=> "S71147",
                "icaoNumber"=> "SBI1147"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "51",
                "scheduledTime"=> "2019-03-09T08:20:00.000",
                "estimatedTime"=> "2019-03-09T08:14:00.000",
                "actualTime"=> "2019-03-09T08:14:00.000",
                "estimatedRunway"=> "2019-03-09T08:28:00.000",
                "actualRunway"=> "2019-03-09T08:28:00.000"
            },
            "arrival"=> {
                "iataCode"=> "PEZ",
                "icaoCode"=> "UWPP",
                "scheduledTime"=> "2019-03-09T09:50:00.000",
                "estimatedTime"=> "2019-03-09T09:24:00.000",
                "actualTime"=> "2019-03-09T09:24:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "273",
                "iataNumber"=> "S7273",
                "icaoNumber"=> "SBI273"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "20",
                "scheduledTime"=> "2019-03-09T08:20:00.000",
                "estimatedTime"=> "2019-03-09T08:20:00.000",
                "actualTime"=> "2019-03-09T08:20:00.000",
                "estimatedRunway"=> "2019-03-09T08:31:00.000",
                "actualRunway"=> "2019-03-09T08:31:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MUC",
                "icaoCode"=> "EDDM",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T09:35:00.000",
                "estimatedTime"=> "2019-03-09T09:31:00.000",
                "actualTime"=> "2019-03-09T09:31:00.000",
                "estimatedRunway"=> "2019-03-09T09:18:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "795",
                "iataNumber"=> "S7795",
                "icaoNumber"=> "SBI795"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "55",
                "scheduledTime"=> "2019-03-09T08:25:00.000",
                "estimatedTime"=> "2019-03-09T08:20:00.000",
                "actualTime"=> "2019-03-09T08:20:00.000",
                "estimatedRunway"=> "2019-03-09T08:34:00.000",
                "actualRunway"=> "2019-03-09T08:34:00.000"
            },
            "arrival"=> {
                "iataCode"=> "VOZ",
                "icaoCode"=> "UUOO",
                "scheduledTime"=> "2019-03-09T09:40:00.000",
                "estimatedTime"=> "2019-03-09T09:29:00.000",
                "actualTime"=> "2019-03-09T09:29:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5792",
                "iataNumber"=> "QR5792",
                "icaoNumber"=> "QTR5792"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "231",
                    "iataNumber"=> "S7231",
                    "icaoNumber"=> "SBI231"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "55",
                "scheduledTime"=> "2019-03-09T08:25:00.000",
                "estimatedTime"=> "2019-03-09T08:20:00.000",
                "actualTime"=> "2019-03-09T08:20:00.000",
                "estimatedRunway"=> "2019-03-09T08:34:00.000",
                "actualRunway"=> "2019-03-09T08:34:00.000"
            },
            "arrival"=> {
                "iataCode"=> "VOZ",
                "icaoCode"=> "UUOO",
                "scheduledTime"=> "2019-03-09T09:40:00.000",
                "estimatedTime"=> "2019-03-09T09:29:00.000",
                "actualTime"=> "2019-03-09T09:29:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "231",
                "iataNumber"=> "S7231",
                "icaoNumber"=> "SBI231"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "41",
                "delay": 2,
                "scheduledTime"=> "2019-03-09T08:20:00.000",
                "estimatedTime"=> "2019-03-09T08:22:00.000",
                "actualTime"=> "2019-03-09T08:22:00.000",
                "estimatedRunway"=> "2019-03-09T08:33:00.000",
                "actualRunway"=> "2019-03-09T08:33:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MRV",
                "icaoCode"=> "URMM",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T10:40:00.000",
                "estimatedTime"=> "2019-03-09T10:25:00.000",
                "actualTime"=> "2019-03-09T10:25:00.000",
                "estimatedRunway"=> "2019-03-09T10:19:00.000",
                "actualRunway"=> "2019-03-09T10:19:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "1219",
                "iataNumber"=> "S71219",
                "icaoNumber"=> "SBI1219"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "34",
                "scheduledTime"=> "2019-03-09T08:30:00.000",
                "estimatedTime"=> "2019-03-09T08:30:00.000",
                "actualTime"=> "2019-03-09T08:30:00.000",
                "estimatedRunway"=> "2019-03-09T08:47:00.000",
                "actualRunway"=> "2019-03-09T08:47:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AAQ",
                "icaoCode"=> "URKA",
                "scheduledTime"=> "2019-03-09T10:50:00.000",
                "estimatedTime"=> "2019-03-09T10:39:00.000",
                "actualTime"=> "2019-03-09T10:39:00.000",
                "estimatedRunway"=> "2019-03-09T10:39:00.000",
                "actualRunway"=> "2019-03-09T10:39:00.000"
            },
            "airline"=> {
                "name"=> "Aigle Azur",
                "iataCode"=> "ZI",
                "icaoCode"=> "AAF"
            },
            "flight"=> {
                "number"=> "1074",
                "iataNumber"=> "ZI1074",
                "icaoNumber"=> "AAF1074"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1125",
                    "iataNumber"=> "GH1125",
                    "icaoNumber"=> "GLP1125"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "34",
                "scheduledTime"=> "2019-03-09T08:30:00.000",
                "estimatedTime"=> "2019-03-09T08:30:00.000",
                "actualTime"=> "2019-03-09T08:30:00.000",
                "estimatedRunway"=> "2019-03-09T08:47:00.000",
                "actualRunway"=> "2019-03-09T08:47:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AAQ",
                "icaoCode"=> "URKA",
                "scheduledTime"=> "2019-03-09T10:50:00.000",
                "estimatedTime"=> "2019-03-09T10:39:00.000",
                "actualTime"=> "2019-03-09T10:39:00.000",
                "estimatedRunway"=> "2019-03-09T10:39:00.000",
                "actualRunway"=> "2019-03-09T10:39:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "1125",
                "iataNumber"=> "S71125",
                "icaoNumber"=> "SBI1125"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1125",
                    "iataNumber"=> "GH1125",
                    "icaoNumber"=> "GLP1125"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "34",
                "scheduledTime"=> "2019-03-09T08:30:00.000",
                "estimatedTime"=> "2019-03-09T08:30:00.000",
                "actualTime"=> "2019-03-09T08:30:00.000",
                "estimatedRunway"=> "2019-03-09T08:47:00.000",
                "actualRunway"=> "2019-03-09T08:47:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AAQ",
                "icaoCode"=> "URKA",
                "scheduledTime"=> "2019-03-09T10:50:00.000",
                "estimatedTime"=> "2019-03-09T10:39:00.000",
                "actualTime"=> "2019-03-09T10:39:00.000",
                "estimatedRunway"=> "2019-03-09T10:39:00.000",
                "actualRunway"=> "2019-03-09T10:39:00.000"
            },
            "airline"=> {
                "name"=> "Globus",
                "iataCode"=> "GH",
                "icaoCode"=> "GLP"
            },
            "flight"=> {
                "number"=> "1125",
                "iataNumber"=> "GH1125",
                "icaoNumber"=> "GLP1125"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "45",
                "scheduledTime"=> "2019-03-09T08:40:00.000",
                "estimatedTime"=> "2019-03-09T08:30:00.000",
                "actualTime"=> "2019-03-09T08:30:00.000",
                "estimatedRunway"=> "2019-03-09T08:43:00.000",
                "actualRunway"=> "2019-03-09T08:43:00.000"
            },
            "arrival"=> {
                "iataCode"=> "UFA",
                "icaoCode"=> "UWUU",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T12:45:00.000",
                "estimatedTime"=> "2019-03-09T12:26:00.000",
                "actualTime"=> "2019-03-09T12:26:00.000",
                "estimatedRunway"=> "2019-03-09T12:20:00.000",
                "actualRunway"=> "2019-03-09T12:20:00.000"
            },
            "airline"=> {
                "name"=> "Aegean Airlines",
                "iataCode"=> "A3",
                "icaoCode"=> "AEE"
            },
            "flight"=> {
                "number"=> "3553",
                "iataNumber"=> "A33553",
                "icaoNumber"=> "AEE3553"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "93",
                    "iataNumber"=> "S793",
                    "icaoNumber"=> "SBI93"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "45",
                "scheduledTime"=> "2019-03-09T08:40:00.000",
                "estimatedTime"=> "2019-03-09T08:30:00.000",
                "actualTime"=> "2019-03-09T08:30:00.000",
                "estimatedRunway"=> "2019-03-09T08:43:00.000",
                "actualRunway"=> "2019-03-09T08:43:00.000"
            },
            "arrival"=> {
                "iataCode"=> "UFA",
                "icaoCode"=> "UWUU",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T12:45:00.000",
                "estimatedTime"=> "2019-03-09T12:26:00.000",
                "actualTime"=> "2019-03-09T12:26:00.000",
                "estimatedRunway"=> "2019-03-09T12:20:00.000",
                "actualRunway"=> "2019-03-09T12:20:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "93",
                "iataNumber"=> "S793",
                "icaoNumber"=> "SBI93"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "47",
                "scheduledTime"=> "2019-03-09T08:35:00.000",
                "estimatedTime"=> "2019-03-09T08:31:00.000",
                "actualTime"=> "2019-03-09T08:31:00.000",
                "estimatedRunway"=> "2019-03-09T08:47:00.000",
                "actualRunway"=> "2019-03-09T08:47:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T10:55:00.000",
                "estimatedTime"=> "2019-03-09T10:50:00.000",
                "actualTime"=> "2019-03-09T10:50:00.000",
                "estimatedRunway"=> "2019-03-09T10:49:00.000",
                "actualRunway"=> "2019-03-09T10:49:00.000"
            },
            "airline"=> {
                "name"=> "Ural Airlines",
                "iataCode"=> "U6",
                "icaoCode"=> "SVR"
            },
            "flight"=> {
                "number"=> "407",
                "iataNumber"=> "U6407",
                "icaoNumber"=> "SVR407"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "17",
                "scheduledTime"=> "2019-03-09T08:50:00.000",
                "estimatedTime"=> "2019-03-09T08:49:00.000",
                "actualTime"=> "2019-03-09T08:49:00.000",
                "estimatedRunway"=> "2019-03-09T08:54:00.000",
                "actualRunway"=> "2019-03-09T08:54:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MSQ",
                "icaoCode"=> "UMMS",
                "scheduledTime"=> "2019-03-09T10:10:00.000",
                "estimatedTime"=> "2019-03-09T10:05:00.000",
                "actualTime"=> "2019-03-09T10:05:00.000",
                "estimatedRunway"=> "2019-03-09T10:02:00.000",
                "actualRunway"=> "2019-03-09T10:02:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "4433",
                "iataNumber"=> "S74433",
                "icaoNumber"=> "SBI4433"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Belavia",
                    "iataCode"=> "B2",
                    "icaoCode"=> "BRU"
                },
                "flight"=> {
                    "number"=> "984",
                    "iataNumber"=> "B2984",
                    "icaoNumber"=> "BRU984"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "17",
                "scheduledTime"=> "2019-03-09T08:50:00.000",
                "estimatedTime"=> "2019-03-09T08:49:00.000",
                "actualTime"=> "2019-03-09T08:49:00.000",
                "estimatedRunway"=> "2019-03-09T08:54:00.000",
                "actualRunway"=> "2019-03-09T08:54:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MSQ",
                "icaoCode"=> "UMMS",
                "scheduledTime"=> "2019-03-09T10:10:00.000",
                "estimatedTime"=> "2019-03-09T10:05:00.000",
                "actualTime"=> "2019-03-09T10:05:00.000",
                "estimatedRunway"=> "2019-03-09T10:02:00.000",
                "actualRunway"=> "2019-03-09T10:02:00.000"
            },
            "airline"=> {
                "name"=> "Belavia",
                "iataCode"=> "B2",
                "icaoCode"=> "BRU"
            },
            "flight"=> {
                "number"=> "984",
                "iataNumber"=> "B2984",
                "icaoNumber"=> "BRU984"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "18",
                "scheduledTime"=> "2019-03-09T09:00:00.000",
                "estimatedTime"=> "2019-03-09T08:49:00.000",
                "actualTime"=> "2019-03-09T08:49:00.000",
                "estimatedRunway"=> "2019-03-09T09:01:00.000",
                "actualRunway"=> "2019-03-09T09:01:00.000"
            },
            "arrival"=> {
                "iataCode"=> "WAW",
                "icaoCode"=> "EPWA",
                "baggage"=> "1",
                "scheduledTime"=> "2019-03-09T09:20:00.000",
                "estimatedTime"=> "2019-03-09T09:04:00.000",
                "actualTime"=> "2019-03-09T09:04:00.000",
                "estimatedRunway"=> "2019-03-09T08:59:00.000",
                "actualRunway"=> "2019-03-09T08:59:00.000"
            },
            "airline"=> {
                "name"=> "LOT - Polish Airlines",
                "iataCode"=> "LO",
                "icaoCode"=> "LOT"
            },
            "flight"=> {
                "number"=> "680",
                "iataNumber"=> "LO680",
                "icaoNumber"=> "LOT680"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "32",
                "delay": 1,
                "scheduledTime"=> "2019-03-09T08:50:00.000",
                "estimatedTime"=> "2019-03-09T08:51:00.000",
                "actualTime"=> "2019-03-09T08:51:00.000",
                "estimatedRunway"=> "2019-03-09T09:03:00.000",
                "actualRunway"=> "2019-03-09T09:03:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T10:30:00.000",
                "estimatedTime"=> "2019-03-09T10:25:00.000",
                "actualTime"=> "2019-03-09T10:25:00.000",
                "estimatedRunway"=> "2019-03-09T10:14:00.000",
                "actualRunway"=> "2019-03-09T10:14:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7959",
                "iataNumber"=> "EK7959",
                "icaoNumber"=> "UAE7959"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "15",
                    "iataNumber"=> "S715",
                    "icaoNumber"=> "SBI15"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "32",
                "delay": 1,
                "scheduledTime"=> "2019-03-09T08:50:00.000",
                "estimatedTime"=> "2019-03-09T08:51:00.000",
                "actualTime"=> "2019-03-09T08:51:00.000",
                "estimatedRunway"=> "2019-03-09T09:03:00.000",
                "actualRunway"=> "2019-03-09T09:03:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T10:30:00.000",
                "estimatedTime"=> "2019-03-09T10:25:00.000",
                "actualTime"=> "2019-03-09T10:25:00.000",
                "estimatedRunway"=> "2019-03-09T10:14:00.000",
                "actualRunway"=> "2019-03-09T10:14:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "15",
                "iataNumber"=> "S715",
                "icaoNumber"=> "SBI15"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "48",
                "scheduledTime"=> "2019-03-09T08:55:00.000",
                "estimatedTime"=> "2019-03-09T08:51:00.000",
                "actualTime"=> "2019-03-09T08:51:00.000",
                "estimatedRunway"=> "2019-03-09T09:08:00.000",
                "actualRunway"=> "2019-03-09T09:08:00.000"
            },
            "arrival"=> {
                "iataCode"=> "RTW",
                "icaoCode"=> "UWSS",
                "scheduledTime"=> "2019-03-09T11:35:00.000",
                "estimatedTime"=> "2019-03-09T11:16:00.000",
                "actualTime"=> "2019-03-09T11:16:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "203",
                "iataNumber"=> "S7203",
                "icaoNumber"=> "SBI203"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "43",
                "scheduledTime"=> "2019-03-09T08:55:00.000",
                "estimatedRunway"=> "2019-03-09T08:49:00.000",
                "actualRunway"=> "2019-03-09T08:49:00.000"
            },
            "arrival"=> {
                "iataCode"=> "IJK",
                "icaoCode"=> "USII",
                "scheduledTime"=> "2019-03-09T11:30:00.000"
            },
            "airline"=> {
                "name"=> "Izhavia",
                "iataCode"=> "I8",
                "icaoCode"=> "IZA"
            },
            "flight"=> {
                "number"=> "302",
                "iataNumber"=> "I8302",
                "icaoNumber"=> "IZA302"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "44",
                "scheduledTime"=> "2019-03-09T09:00:00.000",
                "estimatedTime"=> "2019-03-09T08:58:00.000",
                "actualTime"=> "2019-03-09T08:58:00.000",
                "estimatedRunway"=> "2019-03-09T09:11:00.000",
                "actualRunway"=> "2019-03-09T09:11:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SIP",
                "icaoCode"=> "UKFF",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T11:45:00.000",
                "estimatedTime"=> "2019-03-09T11:22:00.000",
                "actualTime"=> "2019-03-09T11:22:00.000",
                "estimatedRunway"=> "2019-03-09T10:16:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "163",
                "iataNumber"=> "S7163",
                "icaoNumber"=> "SBI163"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "163",
                    "iataNumber"=> "GH163",
                    "icaoNumber"=> "GLP163"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "44",
                "scheduledTime"=> "2019-03-09T09:00:00.000",
                "estimatedTime"=> "2019-03-09T08:58:00.000",
                "actualTime"=> "2019-03-09T08:58:00.000",
                "estimatedRunway"=> "2019-03-09T09:11:00.000",
                "actualRunway"=> "2019-03-09T09:11:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SIP",
                "icaoCode"=> "UKFF",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T11:45:00.000",
                "estimatedTime"=> "2019-03-09T11:22:00.000",
                "actualTime"=> "2019-03-09T11:22:00.000",
                "estimatedRunway"=> "2019-03-09T10:16:00.000"
            },
            "airline"=> {
                "name"=> "Globus",
                "iataCode"=> "GH",
                "icaoCode"=> "GLP"
            },
            "flight"=> {
                "number"=> "163",
                "iataNumber"=> "GH163",
                "icaoNumber"=> "GLP163"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "56",
                "scheduledTime"=> "2019-03-09T09:15:00.000",
                "estimatedTime"=> "2019-03-09T09:04:00.000",
                "actualTime"=> "2019-03-09T09:04:00.000",
                "estimatedRunway"=> "2019-03-09T09:15:00.000",
                "actualRunway"=> "2019-03-09T09:15:00.000"
            },
            "arrival"=> {
                "iataCode"=> "PEE",
                "icaoCode"=> "USPP",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T13:20:00.000",
                "estimatedTime"=> "2019-03-09T12:53:00.000",
                "actualTime"=> "2019-03-09T12:53:00.000",
                "estimatedRunway"=> "2019-03-09T12:47:00.000",
                "actualRunway"=> "2019-03-09T12:47:00.000"
            },
            "airline"=> {
                "name"=> "Aegean Airlines",
                "iataCode"=> "A3",
                "icaoCode"=> "AEE"
            },
            "flight"=> {
                "number"=> "3539",
                "iataNumber"=> "A33539",
                "icaoNumber"=> "AEE3539"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "301",
                    "iataNumber"=> "S7301",
                    "icaoNumber"=> "SBI301"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "56",
                "scheduledTime"=> "2019-03-09T09:15:00.000",
                "estimatedTime"=> "2019-03-09T09:04:00.000",
                "actualTime"=> "2019-03-09T09:04:00.000",
                "estimatedRunway"=> "2019-03-09T09:15:00.000",
                "actualRunway"=> "2019-03-09T09:15:00.000"
            },
            "arrival"=> {
                "iataCode"=> "PEE",
                "icaoCode"=> "USPP",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T13:20:00.000",
                "estimatedTime"=> "2019-03-09T12:53:00.000",
                "actualTime"=> "2019-03-09T12:53:00.000",
                "estimatedRunway"=> "2019-03-09T12:47:00.000",
                "actualRunway"=> "2019-03-09T12:47:00.000"
            },
            "airline"=> {
                "name"=> "Royal Air Maroc",
                "iataCode"=> "AT",
                "icaoCode"=> "RAM"
            },
            "flight"=> {
                "number"=> "9013",
                "iataNumber"=> "AT9013",
                "icaoNumber"=> "RAM9013"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "301",
                    "iataNumber"=> "S7301",
                    "icaoNumber"=> "SBI301"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "56",
                "scheduledTime"=> "2019-03-09T09:15:00.000",
                "estimatedTime"=> "2019-03-09T09:04:00.000",
                "actualTime"=> "2019-03-09T09:04:00.000",
                "estimatedRunway"=> "2019-03-09T09:15:00.000",
                "actualRunway"=> "2019-03-09T09:15:00.000"
            },
            "arrival"=> {
                "iataCode"=> "PEE",
                "icaoCode"=> "USPP",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T13:20:00.000",
                "estimatedTime"=> "2019-03-09T12:53:00.000",
                "actualTime"=> "2019-03-09T12:53:00.000",
                "estimatedRunway"=> "2019-03-09T12:47:00.000",
                "actualRunway"=> "2019-03-09T12:47:00.000"
            },
            "airline"=> {
                "name"=> "British Airways",
                "iataCode"=> "BA",
                "icaoCode"=> "BAW"
            },
            "flight"=> {
                "number"=> "8813",
                "iataNumber"=> "BA8813",
                "icaoNumber"=> "BAW8813"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "301",
                    "iataNumber"=> "S7301",
                    "icaoNumber"=> "SBI301"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "56",
                "scheduledTime"=> "2019-03-09T09:15:00.000",
                "estimatedTime"=> "2019-03-09T09:04:00.000",
                "actualTime"=> "2019-03-09T09:04:00.000",
                "estimatedRunway"=> "2019-03-09T09:15:00.000",
                "actualRunway"=> "2019-03-09T09:15:00.000"
            },
            "arrival"=> {
                "iataCode"=> "PEE",
                "icaoCode"=> "USPP",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T13:20:00.000",
                "estimatedTime"=> "2019-03-09T12:53:00.000",
                "actualTime"=> "2019-03-09T12:53:00.000",
                "estimatedRunway"=> "2019-03-09T12:47:00.000",
                "actualRunway"=> "2019-03-09T12:47:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7889",
                "iataNumber"=> "EK7889",
                "icaoNumber"=> "UAE7889"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "301",
                    "iataNumber"=> "S7301",
                    "icaoNumber"=> "SBI301"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "56",
                "scheduledTime"=> "2019-03-09T09:15:00.000",
                "estimatedTime"=> "2019-03-09T09:04:00.000",
                "actualTime"=> "2019-03-09T09:04:00.000",
                "estimatedRunway"=> "2019-03-09T09:15:00.000",
                "actualRunway"=> "2019-03-09T09:15:00.000"
            },
            "arrival"=> {
                "iataCode"=> "PEE",
                "icaoCode"=> "USPP",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T13:20:00.000",
                "estimatedTime"=> "2019-03-09T12:53:00.000",
                "actualTime"=> "2019-03-09T12:53:00.000",
                "estimatedRunway"=> "2019-03-09T12:47:00.000",
                "actualRunway"=> "2019-03-09T12:47:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "4337",
                "iataNumber"=> "EY4337",
                "icaoNumber"=> "ETD4337"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "301",
                    "iataNumber"=> "S7301",
                    "icaoNumber"=> "SBI301"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "56",
                "scheduledTime"=> "2019-03-09T09:15:00.000",
                "estimatedTime"=> "2019-03-09T09:04:00.000",
                "actualTime"=> "2019-03-09T09:04:00.000",
                "estimatedRunway"=> "2019-03-09T09:15:00.000",
                "actualRunway"=> "2019-03-09T09:15:00.000"
            },
            "arrival"=> {
                "iataCode"=> "PEE",
                "icaoCode"=> "USPP",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T13:20:00.000",
                "estimatedTime"=> "2019-03-09T12:53:00.000",
                "actualTime"=> "2019-03-09T12:53:00.000",
                "estimatedRunway"=> "2019-03-09T12:47:00.000",
                "actualRunway"=> "2019-03-09T12:47:00.000"
            },
            "airline"=> {
                "name"=> "El Al",
                "iataCode"=> "LY",
                "icaoCode"=> "ELY"
            },
            "flight"=> {
                "number"=> "8983",
                "iataNumber"=> "LY8983",
                "icaoNumber"=> "ELY8983"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "301",
                    "iataNumber"=> "S7301",
                    "icaoNumber"=> "SBI301"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "56",
                "scheduledTime"=> "2019-03-09T09:15:00.000",
                "estimatedTime"=> "2019-03-09T09:04:00.000",
                "actualTime"=> "2019-03-09T09:04:00.000",
                "estimatedRunway"=> "2019-03-09T09:15:00.000",
                "actualRunway"=> "2019-03-09T09:15:00.000"
            },
            "arrival"=> {
                "iataCode"=> "PEE",
                "icaoCode"=> "USPP",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T13:20:00.000",
                "estimatedTime"=> "2019-03-09T12:53:00.000",
                "actualTime"=> "2019-03-09T12:53:00.000",
                "estimatedRunway"=> "2019-03-09T12:47:00.000",
                "actualRunway"=> "2019-03-09T12:47:00.000"
            },
            "airline"=> {
                "name"=> "Singapore Airlines",
                "iataCode"=> "SQ",
                "icaoCode"=> "SIA"
            },
            "flight"=> {
                "number"=> "1961",
                "iataNumber"=> "SQ1961",
                "icaoNumber"=> "SIA1961"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "301",
                    "iataNumber"=> "S7301",
                    "icaoNumber"=> "SBI301"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "56",
                "scheduledTime"=> "2019-03-09T09:15:00.000",
                "estimatedTime"=> "2019-03-09T09:04:00.000",
                "actualTime"=> "2019-03-09T09:04:00.000",
                "estimatedRunway"=> "2019-03-09T09:15:00.000",
                "actualRunway"=> "2019-03-09T09:15:00.000"
            },
            "arrival"=> {
                "iataCode"=> "PEE",
                "icaoCode"=> "USPP",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T13:20:00.000",
                "estimatedTime"=> "2019-03-09T12:53:00.000",
                "actualTime"=> "2019-03-09T12:53:00.000",
                "estimatedRunway"=> "2019-03-09T12:47:00.000",
                "actualRunway"=> "2019-03-09T12:47:00.000"
            },
            "airline"=> {
                "name"=> "TAP Portugal",
                "iataCode"=> "TP",
                "icaoCode"=> "TAP"
            },
            "flight"=> {
                "number"=> "8172",
                "iataNumber"=> "TP8172",
                "icaoNumber"=> "TAP8172"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "301",
                    "iataNumber"=> "S7301",
                    "icaoNumber"=> "SBI301"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "56",
                "scheduledTime"=> "2019-03-09T09:15:00.000",
                "estimatedTime"=> "2019-03-09T09:04:00.000",
                "actualTime"=> "2019-03-09T09:04:00.000",
                "estimatedRunway"=> "2019-03-09T09:15:00.000",
                "actualRunway"=> "2019-03-09T09:15:00.000"
            },
            "arrival"=> {
                "iataCode"=> "PEE",
                "icaoCode"=> "USPP",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T13:20:00.000",
                "estimatedTime"=> "2019-03-09T12:53:00.000",
                "actualTime"=> "2019-03-09T12:53:00.000",
                "estimatedRunway"=> "2019-03-09T12:47:00.000",
                "actualRunway"=> "2019-03-09T12:47:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "301",
                "iataNumber"=> "S7301",
                "icaoNumber"=> "SBI301"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "10",
                "delay": 5,
                "scheduledTime"=> "2019-03-09T09:00:00.000",
                "estimatedTime"=> "2019-03-09T09:05:00.000",
                "actualTime"=> "2019-03-09T09:05:00.000",
                "estimatedRunway"=> "2019-03-09T09:22:00.000",
                "actualRunway"=> "2019-03-09T09:22:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MUC",
                "icaoCode"=> "EDDM",
                "terminal"=> "2",
                "gate"=> "M22",
                "delay": 3,
                "scheduledTime"=> "2019-03-09T10:25:00.000",
                "estimatedTime"=> "2019-03-09T10:28:00.000",
                "actualTime"=> "2019-03-09T10:28:00.000",
                "estimatedRunway"=> "2019-03-09T10:21:00.000",
                "actualRunway"=> "2019-03-09T10:21:00.000"
            },
            "airline"=> {
                "name"=> "Lufthansa",
                "iataCode"=> "LH",
                "icaoCode"=> "DLH"
            },
            "flight"=> {
                "number"=> "2531",
                "iataNumber"=> "LH2531",
                "icaoNumber"=> "DLH2531"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "49",
                "scheduledTime"=> "2019-03-09T09:05:00.000",
                "estimatedRunway"=> "2019-03-09T09:06:00.000",
                "actualRunway"=> "2019-03-09T09:06:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KVK",
                "icaoCode"=> "ULMK",
                "scheduledTime"=> "2019-03-09T11:20:00.000",
                "estimatedRunway"=> "2019-03-09T11:02:00.000"
            },
            "airline"=> {
                "name"=> "Severstal Aircompany",
                "iataCode"=> "D2",
                "icaoCode"=> "SSF"
            },
            "flight"=> {
                "number"=> "162",
                "iataNumber"=> "D2162",
                "icaoNumber"=> "SSF162"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "50",
                "scheduledTime"=> "2019-03-09T09:05:00.000",
                "estimatedRunway"=> "2019-03-09T09:05:00.000",
                "actualRunway"=> "2019-03-09T09:05:00.000"
            },
            "arrival"=> {
                "iataCode"=> "CEE",
                "icaoCode"=> "ULBC",
                "scheduledTime"=> "2019-03-09T10:00:00.000"
            },
            "airline"=> {
                "name"=> "Severstal Aircompany",
                "iataCode"=> "D2",
                "icaoCode"=> "SSF"
            },
            "flight"=> {
                "number"=> "42",
                "iataNumber"=> "D242",
                "icaoNumber"=> "SSF42"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "14",
                "delay": 3,
                "scheduledTime"=> "2019-03-09T09:05:00.000",
                "estimatedTime"=> "2019-03-09T09:08:00.000",
                "actualTime"=> "2019-03-09T09:08:00.000",
                "estimatedRunway"=> "2019-03-09T09:25:00.000",
                "actualRunway"=> "2019-03-09T09:25:00.000"
            },
            "arrival"=> {
                "iataCode"=> "ZRH",
                "icaoCode"=> "LSZH",
                "terminal"=> "2",
                "baggage"=> "23",
                "delay": 6,
                "scheduledTime"=> "2019-03-09T10:50:00.000",
                "estimatedTime"=> "2019-03-09T10:56:00.000",
                "actualTime"=> "2019-03-09T10:56:00.000",
                "estimatedRunway"=> "2019-03-09T10:53:00.000",
                "actualRunway"=> "2019-03-09T10:53:00.000"
            },
            "airline"=> {
                "name"=> "United Airlines",
                "iataCode"=> "UA",
                "icaoCode"=> "UAL"
            },
            "flight"=> {
                "number"=> "9741",
                "iataNumber"=> "UA9741",
                "icaoNumber"=> "UAL9741"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "SWISS",
                    "iataCode"=> "LX",
                    "icaoCode"=> "SWR"
                },
                "flight"=> {
                    "number"=> "1325",
                    "iataNumber"=> "LX1325",
                    "icaoNumber"=> "SWR1325"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "14",
                "delay": 3,
                "scheduledTime"=> "2019-03-09T09:05:00.000",
                "estimatedTime"=> "2019-03-09T09:08:00.000",
                "actualTime"=> "2019-03-09T09:08:00.000",
                "estimatedRunway"=> "2019-03-09T09:25:00.000",
                "actualRunway"=> "2019-03-09T09:25:00.000"
            },
            "arrival"=> {
                "iataCode"=> "ZRH",
                "icaoCode"=> "LSZH",
                "terminal"=> "2",
                "baggage"=> "23",
                "delay": 6,
                "scheduledTime"=> "2019-03-09T10:50:00.000",
                "estimatedTime"=> "2019-03-09T10:56:00.000",
                "actualTime"=> "2019-03-09T10:56:00.000",
                "estimatedRunway"=> "2019-03-09T10:53:00.000",
                "actualRunway"=> "2019-03-09T10:53:00.000"
            },
            "airline"=> {
                "name"=> "SWISS",
                "iataCode"=> "LX",
                "icaoCode"=> "SWR"
            },
            "flight"=> {
                "number"=> "1325",
                "iataNumber"=> "LX1325",
                "icaoNumber"=> "SWR1325"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "46",
                "scheduledTime"=> "2019-03-09T09:10:00.000",
                "estimatedTime"=> "2019-03-09T09:08:00.000",
                "actualTime"=> "2019-03-09T09:08:00.000",
                "estimatedRunway"=> "2019-03-09T09:21:00.000",
                "actualRunway"=> "2019-03-09T09:21:00.000"
            },
            "arrival"=> {
                "iataCode"=> "VOG",
                "icaoCode"=> "URWW",
                "terminal"=> "C2",
                "scheduledTime"=> "2019-03-09T12:00:00.000",
                "estimatedTime"=> "2019-03-09T11:50:00.000",
                "actualTime"=> "2019-03-09T11:50:00.000",
                "estimatedRunway"=> "2019-03-09T11:40:00.000",
                "actualRunway"=> "2019-03-09T11:40:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7923",
                "iataNumber"=> "EK7923",
                "icaoNumber"=> "UAE7923"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1163",
                    "iataNumber"=> "S71163",
                    "icaoNumber"=> "SBI1163"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "46",
                "scheduledTime"=> "2019-03-09T09:10:00.000",
                "estimatedTime"=> "2019-03-09T09:08:00.000",
                "actualTime"=> "2019-03-09T09:08:00.000",
                "estimatedRunway"=> "2019-03-09T09:21:00.000",
                "actualRunway"=> "2019-03-09T09:21:00.000"
            },
            "arrival"=> {
                "iataCode"=> "VOG",
                "icaoCode"=> "URWW",
                "terminal"=> "C2",
                "scheduledTime"=> "2019-03-09T12:00:00.000",
                "estimatedTime"=> "2019-03-09T11:50:00.000",
                "actualTime"=> "2019-03-09T11:50:00.000",
                "estimatedRunway"=> "2019-03-09T11:40:00.000",
                "actualRunway"=> "2019-03-09T11:40:00.000"
            },
            "airline"=> {
                "name"=> "Singapore Airlines",
                "iataCode"=> "SQ",
                "icaoCode"=> "SIA"
            },
            "flight"=> {
                "number"=> "1976",
                "iataNumber"=> "SQ1976",
                "icaoNumber"=> "SIA1976"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1163",
                    "iataNumber"=> "S71163",
                    "icaoNumber"=> "SBI1163"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "46",
                "scheduledTime"=> "2019-03-09T09:10:00.000",
                "estimatedTime"=> "2019-03-09T09:08:00.000",
                "actualTime"=> "2019-03-09T09:08:00.000",
                "estimatedRunway"=> "2019-03-09T09:21:00.000",
                "actualRunway"=> "2019-03-09T09:21:00.000"
            },
            "arrival"=> {
                "iataCode"=> "VOG",
                "icaoCode"=> "URWW",
                "terminal"=> "C2",
                "scheduledTime"=> "2019-03-09T12:00:00.000",
                "estimatedTime"=> "2019-03-09T11:50:00.000",
                "actualTime"=> "2019-03-09T11:50:00.000",
                "estimatedRunway"=> "2019-03-09T11:40:00.000",
                "actualRunway"=> "2019-03-09T11:40:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "1163",
                "iataNumber"=> "S71163",
                "icaoNumber"=> "SBI1163"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "7",
                "scheduledTime"=> "2019-03-09T09:25:00.000",
                "estimatedTime"=> "2019-03-09T09:12:00.000",
                "actualTime"=> "2019-03-09T09:12:00.000",
                "estimatedRunway"=> "2019-03-09T09:29:00.000",
                "actualRunway"=> "2019-03-09T09:29:00.000"
            },
            "arrival"=> {
                "iataCode"=> "DOH",
                "icaoCode"=> "OTHH",
                "baggage"=> "9",
                "scheduledTime"=> "2019-03-09T14:45:00.000",
                "estimatedTime"=> "2019-03-09T14:12:00.000",
                "estimatedRunway"=> "2019-03-09T14:04:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "224",
                "iataNumber"=> "QR224",
                "icaoNumber"=> "QTR224"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "54",
                "scheduledTime"=> "2019-03-09T09:15:00.000",
                "estimatedTime"=> "2019-03-09T09:15:00.000",
                "actualTime"=> "2019-03-09T09:15:00.000",
                "estimatedRunway"=> "2019-03-09T09:24:00.000",
                "actualRunway"=> "2019-03-09T09:24:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "delay": 5,
                "scheduledTime"=> "2019-03-09T11:25:00.000",
                "estimatedTime"=> "2019-03-09T11:30:00.000",
                "actualTime"=> "2019-03-09T11:30:00.000",
                "estimatedRunway"=> "2019-03-09T11:30:00.000",
                "actualRunway"=> "2019-03-09T11:30:00.000"
            },
            "airline"=> {
                "name"=> "Ural Airlines",
                "iataCode"=> "U6",
                "icaoCode"=> "SVR"
            },
            "flight"=> {
                "number"=> "377",
                "iataNumber"=> "U6377",
                "icaoNumber"=> "SVR377"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "12",
                "delay": 12,
                "scheduledTime"=> "2019-03-09T09:05:00.000",
                "estimatedTime"=> "2019-03-09T09:17:00.000",
                "actualTime"=> "2019-03-09T09:17:00.000",
                "estimatedRunway"=> "2019-03-09T09:31:00.000",
                "actualRunway"=> "2019-03-09T09:31:00.000"
            },
            "arrival"=> {
                "iataCode"=> "FRA",
                "icaoCode"=> "EDDF",
                "terminal"=> "1",
                "delay": 5,
                "scheduledTime"=> "2019-03-09T10:50:00.000",
                "estimatedTime"=> "2019-03-09T10:55:00.000",
                "actualTime"=> "2019-03-09T10:55:00.000",
                "estimatedRunway"=> "2019-03-09T10:40:00.000",
                "actualRunway"=> "2019-03-09T10:40:00.000"
            },
            "airline"=> {
                "name"=> "Lufthansa",
                "iataCode"=> "LH",
                "icaoCode"=> "DLH"
            },
            "flight"=> {
                "number"=> "1453",
                "iataNumber"=> "LH1453",
                "icaoNumber"=> "DLH1453"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "11",
                "scheduledTime"=> "2019-03-09T09:25:00.000",
                "estimatedTime"=> "2019-03-09T09:23:00.000",
                "actualTime"=> "2019-03-09T09:23:00.000",
                "estimatedRunway"=> "2019-03-09T09:36:00.000",
                "actualRunway"=> "2019-03-09T09:36:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LIS",
                "icaoCode"=> "LPPT",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T12:20:00.000",
                "estimatedTime"=> "2019-03-09T12:16:00.000",
                "estimatedRunway"=> "2019-03-09T12:12:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "4301",
                "iataNumber"=> "S74301",
                "icaoNumber"=> "SBI4301"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "TAP Portugal",
                    "iataCode"=> "TP",
                    "icaoCode"=> "TAP"
                },
                "flight"=> {
                    "number"=> "1201",
                    "iataNumber"=> "TP1201",
                    "icaoNumber"=> "TAP1201"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "11",
                "scheduledTime"=> "2019-03-09T09:25:00.000",
                "estimatedTime"=> "2019-03-09T09:23:00.000",
                "actualTime"=> "2019-03-09T09:23:00.000",
                "estimatedRunway"=> "2019-03-09T09:36:00.000",
                "actualRunway"=> "2019-03-09T09:36:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LIS",
                "icaoCode"=> "LPPT",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T12:20:00.000",
                "estimatedTime"=> "2019-03-09T12:16:00.000",
                "estimatedRunway"=> "2019-03-09T12:12:00.000"
            },
            "airline"=> {
                "name"=> "TAP Portugal",
                "iataCode"=> "TP",
                "icaoCode"=> "TAP"
            },
            "flight"=> {
                "number"=> "1201",
                "iataNumber"=> "TP1201",
                "icaoNumber"=> "TAP1201"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "52",
                "scheduledTime"=> "2019-03-09T09:40:00.000",
                "estimatedTime"=> "2019-03-09T09:36:00.000",
                "actualTime"=> "2019-03-09T09:36:00.000",
                "estimatedRunway"=> "2019-03-09T09:47:00.000",
                "actualRunway"=> "2019-03-09T09:47:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T12:05:00.000",
                "estimatedTime"=> "2019-03-09T11:49:00.000",
                "actualTime"=> "2019-03-09T11:49:00.000",
                "estimatedRunway"=> "2019-03-09T11:49:00.000",
                "actualRunway"=> "2019-03-09T11:49:00.000"
            },
            "airline"=> {
                "name"=> "Royal Air Maroc",
                "iataCode"=> "AT",
                "icaoCode"=> "RAM"
            },
            "flight"=> {
                "number"=> "9025",
                "iataNumber"=> "AT9025",
                "icaoNumber"=> "RAM9025"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1045",
                    "iataNumber"=> "S71045",
                    "icaoNumber"=> "SBI1045"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "52",
                "scheduledTime"=> "2019-03-09T09:40:00.000",
                "estimatedTime"=> "2019-03-09T09:36:00.000",
                "actualTime"=> "2019-03-09T09:36:00.000",
                "estimatedRunway"=> "2019-03-09T09:47:00.000",
                "actualRunway"=> "2019-03-09T09:47:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T12:05:00.000",
                "estimatedTime"=> "2019-03-09T11:49:00.000",
                "actualTime"=> "2019-03-09T11:49:00.000",
                "estimatedRunway"=> "2019-03-09T11:49:00.000",
                "actualRunway"=> "2019-03-09T11:49:00.000"
            },
            "airline"=> {
                "name"=> "British Airways",
                "iataCode"=> "BA",
                "icaoCode"=> "BAW"
            },
            "flight"=> {
                "number"=> "8815",
                "iataNumber"=> "BA8815",
                "icaoNumber"=> "BAW8815"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1045",
                    "iataNumber"=> "S71045",
                    "icaoNumber"=> "SBI1045"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "52",
                "scheduledTime"=> "2019-03-09T09:40:00.000",
                "estimatedTime"=> "2019-03-09T09:36:00.000",
                "actualTime"=> "2019-03-09T09:36:00.000",
                "estimatedRunway"=> "2019-03-09T09:47:00.000",
                "actualRunway"=> "2019-03-09T09:47:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T12:05:00.000",
                "estimatedTime"=> "2019-03-09T11:49:00.000",
                "actualTime"=> "2019-03-09T11:49:00.000",
                "estimatedRunway"=> "2019-03-09T11:49:00.000",
                "actualRunway"=> "2019-03-09T11:49:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7811",
                "iataNumber"=> "EK7811",
                "icaoNumber"=> "UAE7811"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1045",
                    "iataNumber"=> "S71045",
                    "icaoNumber"=> "SBI1045"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "52",
                "scheduledTime"=> "2019-03-09T09:40:00.000",
                "estimatedTime"=> "2019-03-09T09:36:00.000",
                "actualTime"=> "2019-03-09T09:36:00.000",
                "estimatedRunway"=> "2019-03-09T09:47:00.000",
                "actualRunway"=> "2019-03-09T09:47:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T12:05:00.000",
                "estimatedTime"=> "2019-03-09T11:49:00.000",
                "actualTime"=> "2019-03-09T11:49:00.000",
                "estimatedRunway"=> "2019-03-09T11:49:00.000",
                "actualRunway"=> "2019-03-09T11:49:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "4307",
                "iataNumber"=> "EY4307",
                "icaoNumber"=> "ETD4307"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1045",
                    "iataNumber"=> "S71045",
                    "icaoNumber"=> "SBI1045"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "52",
                "scheduledTime"=> "2019-03-09T09:40:00.000",
                "estimatedTime"=> "2019-03-09T09:36:00.000",
                "actualTime"=> "2019-03-09T09:36:00.000",
                "estimatedRunway"=> "2019-03-09T09:47:00.000",
                "actualRunway"=> "2019-03-09T09:47:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T12:05:00.000",
                "estimatedTime"=> "2019-03-09T11:49:00.000",
                "actualTime"=> "2019-03-09T11:49:00.000",
                "estimatedRunway"=> "2019-03-09T11:49:00.000",
                "actualRunway"=> "2019-03-09T11:49:00.000"
            },
            "airline"=> {
                "name"=> "El Al",
                "iataCode"=> "LY",
                "icaoCode"=> "ELY"
            },
            "flight"=> {
                "number"=> "8947",
                "iataNumber"=> "LY8947",
                "icaoNumber"=> "ELY8947"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1045",
                    "iataNumber"=> "S71045",
                    "icaoNumber"=> "SBI1045"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "52",
                "scheduledTime"=> "2019-03-09T09:40:00.000",
                "estimatedTime"=> "2019-03-09T09:36:00.000",
                "actualTime"=> "2019-03-09T09:36:00.000",
                "estimatedRunway"=> "2019-03-09T09:47:00.000",
                "actualRunway"=> "2019-03-09T09:47:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T12:05:00.000",
                "estimatedTime"=> "2019-03-09T11:49:00.000",
                "actualTime"=> "2019-03-09T11:49:00.000",
                "estimatedRunway"=> "2019-03-09T11:49:00.000",
                "actualRunway"=> "2019-03-09T11:49:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5652",
                "iataNumber"=> "QR5652",
                "icaoNumber"=> "QTR5652"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1045",
                    "iataNumber"=> "S71045",
                    "icaoNumber"=> "SBI1045"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "52",
                "scheduledTime"=> "2019-03-09T09:40:00.000",
                "estimatedTime"=> "2019-03-09T09:36:00.000",
                "actualTime"=> "2019-03-09T09:36:00.000",
                "estimatedRunway"=> "2019-03-09T09:47:00.000",
                "actualRunway"=> "2019-03-09T09:47:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T12:05:00.000",
                "estimatedTime"=> "2019-03-09T11:49:00.000",
                "actualTime"=> "2019-03-09T11:49:00.000",
                "estimatedRunway"=> "2019-03-09T11:49:00.000",
                "actualRunway"=> "2019-03-09T11:49:00.000"
            },
            "airline"=> {
                "name"=> "TAP Portugal",
                "iataCode"=> "TP",
                "icaoCode"=> "TAP"
            },
            "flight"=> {
                "number"=> "8170",
                "iataNumber"=> "TP8170",
                "icaoNumber"=> "TAP8170"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1045",
                    "iataNumber"=> "S71045",
                    "icaoNumber"=> "SBI1045"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "52",
                "scheduledTime"=> "2019-03-09T09:40:00.000",
                "estimatedTime"=> "2019-03-09T09:36:00.000",
                "actualTime"=> "2019-03-09T09:36:00.000",
                "estimatedRunway"=> "2019-03-09T09:47:00.000",
                "actualRunway"=> "2019-03-09T09:47:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T12:05:00.000",
                "estimatedTime"=> "2019-03-09T11:49:00.000",
                "actualTime"=> "2019-03-09T11:49:00.000",
                "estimatedRunway"=> "2019-03-09T11:49:00.000",
                "actualRunway"=> "2019-03-09T11:49:00.000"
            },
            "airline"=> {
                "name"=> "Aigle Azur",
                "iataCode"=> "ZI",
                "icaoCode"=> "AAF"
            },
            "flight"=> {
                "number"=> "1078",
                "iataNumber"=> "ZI1078",
                "icaoNumber"=> "AAF1078"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1045",
                    "iataNumber"=> "S71045",
                    "icaoNumber"=> "SBI1045"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "52",
                "scheduledTime"=> "2019-03-09T09:40:00.000",
                "estimatedTime"=> "2019-03-09T09:36:00.000",
                "actualTime"=> "2019-03-09T09:36:00.000",
                "estimatedRunway"=> "2019-03-09T09:47:00.000",
                "actualRunway"=> "2019-03-09T09:47:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T12:05:00.000",
                "estimatedTime"=> "2019-03-09T11:49:00.000",
                "actualTime"=> "2019-03-09T11:49:00.000",
                "estimatedRunway"=> "2019-03-09T11:49:00.000",
                "actualRunway"=> "2019-03-09T11:49:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "1045",
                "iataNumber"=> "S71045",
                "icaoNumber"=> "SBI1045"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "31",
                "scheduledTime"=> "2019-03-09T10:00:00.000",
                "estimatedTime"=> "2019-03-09T09:50:00.000",
                "actualTime"=> "2019-03-09T09:50:00.000",
                "estimatedRunway"=> "2019-03-09T10:02:00.000",
                "actualRunway"=> "2019-03-09T10:02:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KJA",
                "icaoCode"=> "UNKL",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T18:45:00.000",
                "estimatedTime"=> "2019-03-09T18:14:00.000",
                "estimatedRunway"=> "2019-03-09T18:08:00.000"
            },
            "airline"=> {
                "name"=> "Royal Air Maroc",
                "iataCode"=> "AT",
                "icaoCode"=> "RAM"
            },
            "flight"=> {
                "number"=> "9005",
                "iataNumber"=> "AT9005",
                "icaoNumber"=> "RAM9005"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "73",
                    "iataNumber"=> "S773",
                    "icaoNumber"=> "SBI73"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "31",
                "scheduledTime"=> "2019-03-09T10:00:00.000",
                "estimatedTime"=> "2019-03-09T09:50:00.000",
                "actualTime"=> "2019-03-09T09:50:00.000",
                "estimatedRunway"=> "2019-03-09T10:02:00.000",
                "actualRunway"=> "2019-03-09T10:02:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KJA",
                "icaoCode"=> "UNKL",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T18:45:00.000",
                "estimatedTime"=> "2019-03-09T18:14:00.000",
                "estimatedRunway"=> "2019-03-09T18:08:00.000"
            },
            "airline"=> {
                "name"=> "Belavia",
                "iataCode"=> "B2",
                "icaoCode"=> "BRU"
            },
            "flight"=> {
                "number"=> "73",
                "iataNumber"=> "B273",
                "icaoNumber"=> "BRU73"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "73",
                    "iataNumber"=> "S773",
                    "icaoNumber"=> "SBI73"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "31",
                "scheduledTime"=> "2019-03-09T10:00:00.000",
                "estimatedTime"=> "2019-03-09T09:50:00.000",
                "actualTime"=> "2019-03-09T09:50:00.000",
                "estimatedRunway"=> "2019-03-09T10:02:00.000",
                "actualRunway"=> "2019-03-09T10:02:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KJA",
                "icaoCode"=> "UNKL",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T18:45:00.000",
                "estimatedTime"=> "2019-03-09T18:14:00.000",
                "estimatedRunway"=> "2019-03-09T18:08:00.000"
            },
            "airline"=> {
                "name"=> "British Airways",
                "iataCode"=> "BA",
                "icaoCode"=> "BAW"
            },
            "flight"=> {
                "number"=> "8801",
                "iataNumber"=> "BA8801",
                "icaoNumber"=> "BAW8801"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "73",
                    "iataNumber"=> "S773",
                    "icaoNumber"=> "SBI73"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "31",
                "scheduledTime"=> "2019-03-09T10:00:00.000",
                "estimatedTime"=> "2019-03-09T09:50:00.000",
                "actualTime"=> "2019-03-09T09:50:00.000",
                "estimatedRunway"=> "2019-03-09T10:02:00.000",
                "actualRunway"=> "2019-03-09T10:02:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KJA",
                "icaoCode"=> "UNKL",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T18:45:00.000",
                "estimatedTime"=> "2019-03-09T18:14:00.000",
                "estimatedRunway"=> "2019-03-09T18:08:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7835",
                "iataNumber"=> "EK7835",
                "icaoNumber"=> "UAE7835"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "73",
                    "iataNumber"=> "S773",
                    "icaoNumber"=> "SBI73"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "31",
                "scheduledTime"=> "2019-03-09T10:00:00.000",
                "estimatedTime"=> "2019-03-09T09:50:00.000",
                "actualTime"=> "2019-03-09T09:50:00.000",
                "estimatedRunway"=> "2019-03-09T10:02:00.000",
                "actualRunway"=> "2019-03-09T10:02:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KJA",
                "icaoCode"=> "UNKL",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T18:45:00.000",
                "estimatedTime"=> "2019-03-09T18:14:00.000",
                "estimatedRunway"=> "2019-03-09T18:08:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "4320",
                "iataNumber"=> "EY4320",
                "icaoNumber"=> "ETD4320"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "73",
                    "iataNumber"=> "S773",
                    "icaoNumber"=> "SBI73"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "31",
                "scheduledTime"=> "2019-03-09T10:00:00.000",
                "estimatedTime"=> "2019-03-09T09:50:00.000",
                "actualTime"=> "2019-03-09T09:50:00.000",
                "estimatedRunway"=> "2019-03-09T10:02:00.000",
                "actualRunway"=> "2019-03-09T10:02:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KJA",
                "icaoCode"=> "UNKL",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T18:45:00.000",
                "estimatedTime"=> "2019-03-09T18:14:00.000",
                "estimatedRunway"=> "2019-03-09T18:08:00.000"
            },
            "airline"=> {
                "name"=> "El Al",
                "iataCode"=> "LY",
                "icaoCode"=> "ELY"
            },
            "flight"=> {
                "number"=> "8929",
                "iataNumber"=> "LY8929",
                "icaoNumber"=> "ELY8929"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "73",
                    "iataNumber"=> "S773",
                    "icaoNumber"=> "SBI73"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "31",
                "scheduledTime"=> "2019-03-09T10:00:00.000",
                "estimatedTime"=> "2019-03-09T09:50:00.000",
                "actualTime"=> "2019-03-09T09:50:00.000",
                "estimatedRunway"=> "2019-03-09T10:02:00.000",
                "actualRunway"=> "2019-03-09T10:02:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KJA",
                "icaoCode"=> "UNKL",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T18:45:00.000",
                "estimatedTime"=> "2019-03-09T18:14:00.000",
                "estimatedRunway"=> "2019-03-09T18:08:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5655",
                "iataNumber"=> "QR5655",
                "icaoNumber"=> "QTR5655"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "73",
                    "iataNumber"=> "S773",
                    "icaoNumber"=> "SBI73"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "31",
                "scheduledTime"=> "2019-03-09T10:00:00.000",
                "estimatedTime"=> "2019-03-09T09:50:00.000",
                "actualTime"=> "2019-03-09T09:50:00.000",
                "estimatedRunway"=> "2019-03-09T10:02:00.000",
                "actualRunway"=> "2019-03-09T10:02:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KJA",
                "icaoCode"=> "UNKL",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T18:45:00.000",
                "estimatedTime"=> "2019-03-09T18:14:00.000",
                "estimatedRunway"=> "2019-03-09T18:08:00.000"
            },
            "airline"=> {
                "name"=> "Singapore Airlines",
                "iataCode"=> "SQ",
                "icaoCode"=> "SIA"
            },
            "flight"=> {
                "number"=> "1933",
                "iataNumber"=> "SQ1933",
                "icaoNumber"=> "SIA1933"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "73",
                    "iataNumber"=> "S773",
                    "icaoNumber"=> "SBI73"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "31",
                "scheduledTime"=> "2019-03-09T10:00:00.000",
                "estimatedTime"=> "2019-03-09T09:50:00.000",
                "actualTime"=> "2019-03-09T09:50:00.000",
                "estimatedRunway"=> "2019-03-09T10:02:00.000",
                "actualRunway"=> "2019-03-09T10:02:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KJA",
                "icaoCode"=> "UNKL",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T18:45:00.000",
                "estimatedTime"=> "2019-03-09T18:14:00.000",
                "estimatedRunway"=> "2019-03-09T18:08:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "73",
                "iataNumber"=> "S773",
                "icaoNumber"=> "SBI73"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "17",
                "delay": 11,
                "scheduledTime"=> "2019-03-09T09:40:00.000",
                "estimatedTime"=> "2019-03-09T09:51:00.000",
                "actualTime"=> "2019-03-09T09:51:00.000",
                "estimatedRunway"=> "2019-03-09T09:59:00.000",
                "actualRunway"=> "2019-03-09T09:59:00.000"
            },
            "arrival"=> {
                "iataCode"=> "VRN",
                "icaoCode"=> "LIPX",
                "delay": 18,
                "scheduledTime"=> "2019-03-09T11:15:00.000",
                "estimatedTime"=> "2019-03-09T11:33:00.000",
                "actualTime"=> "2019-03-09T11:33:00.000",
                "estimatedRunway"=> "2019-03-09T11:23:00.000",
                "actualRunway"=> "2019-03-09T11:23:00.000"
            },
            "airline"=> {
                "name"=> "Air Italy",
                "iataCode"=> "IG",
                "icaoCode"=> "ISS"
            },
            "flight"=> {
                "number"=> "9695",
                "iataNumber"=> "IG9695",
                "icaoNumber"=> "ISS9695"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "695",
                    "iataNumber"=> "S7695",
                    "icaoNumber"=> "SBI695"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "17",
                "delay": 11,
                "scheduledTime"=> "2019-03-09T09:40:00.000",
                "estimatedTime"=> "2019-03-09T09:51:00.000",
                "actualTime"=> "2019-03-09T09:51:00.000",
                "estimatedRunway"=> "2019-03-09T09:59:00.000",
                "actualRunway"=> "2019-03-09T09:59:00.000"
            },
            "arrival"=> {
                "iataCode"=> "VRN",
                "icaoCode"=> "LIPX",
                "delay": 18,
                "scheduledTime"=> "2019-03-09T11:15:00.000",
                "estimatedTime"=> "2019-03-09T11:33:00.000",
                "actualTime"=> "2019-03-09T11:33:00.000",
                "estimatedRunway"=> "2019-03-09T11:23:00.000",
                "actualRunway"=> "2019-03-09T11:23:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "695",
                "iataNumber"=> "S7695",
                "icaoNumber"=> "SBI695"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "53",
                "delay": 1,
                "scheduledTime"=> "2019-03-09T09:50:00.000",
                "estimatedTime"=> "2019-03-09T09:51:00.000",
                "actualTime"=> "2019-03-09T09:51:00.000",
                "estimatedRunway"=> "2019-03-09T09:55:00.000",
                "actualRunway"=> "2019-03-09T09:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "delay": 110,
                "scheduledTime"=> "2019-03-09T11:30:00.000",
                "estimatedTime"=> "2019-03-09T13:20:00.000",
                "estimatedRunway"=> "2019-03-09T11:00:00.000"
            },
            "airline"=> {
                "name"=> "Royal Air Maroc",
                "iataCode"=> "AT",
                "icaoCode"=> "RAM"
            },
            "flight"=> {
                "number"=> "9029",
                "iataNumber"=> "AT9029",
                "icaoNumber"=> "RAM9029"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "45",
                    "iataNumber"=> "S745",
                    "icaoNumber"=> "SBI45"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "53",
                "delay": 1,
                "scheduledTime"=> "2019-03-09T09:50:00.000",
                "estimatedTime"=> "2019-03-09T09:51:00.000",
                "actualTime"=> "2019-03-09T09:51:00.000",
                "estimatedRunway"=> "2019-03-09T09:55:00.000",
                "actualRunway"=> "2019-03-09T09:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "delay": 110,
                "scheduledTime"=> "2019-03-09T11:30:00.000",
                "estimatedTime"=> "2019-03-09T13:20:00.000",
                "estimatedRunway"=> "2019-03-09T11:00:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7873",
                "iataNumber"=> "EK7873",
                "icaoNumber"=> "UAE7873"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "45",
                    "iataNumber"=> "S745",
                    "icaoNumber"=> "SBI45"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "53",
                "delay": 1,
                "scheduledTime"=> "2019-03-09T09:50:00.000",
                "estimatedTime"=> "2019-03-09T09:51:00.000",
                "actualTime"=> "2019-03-09T09:51:00.000",
                "estimatedRunway"=> "2019-03-09T09:55:00.000",
                "actualRunway"=> "2019-03-09T09:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "delay": 110,
                "scheduledTime"=> "2019-03-09T11:30:00.000",
                "estimatedTime"=> "2019-03-09T13:20:00.000",
                "estimatedRunway"=> "2019-03-09T11:00:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "4308",
                "iataNumber"=> "EY4308",
                "icaoNumber"=> "ETD4308"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "45",
                    "iataNumber"=> "S745",
                    "icaoNumber"=> "SBI45"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "53",
                "delay": 1,
                "scheduledTime"=> "2019-03-09T09:50:00.000",
                "estimatedTime"=> "2019-03-09T09:51:00.000",
                "actualTime"=> "2019-03-09T09:51:00.000",
                "estimatedRunway"=> "2019-03-09T09:55:00.000",
                "actualRunway"=> "2019-03-09T09:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "delay": 110,
                "scheduledTime"=> "2019-03-09T11:30:00.000",
                "estimatedTime"=> "2019-03-09T13:20:00.000",
                "estimatedRunway"=> "2019-03-09T11:00:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5659",
                "iataNumber"=> "QR5659",
                "icaoNumber"=> "QTR5659"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "45",
                    "iataNumber"=> "S745",
                    "icaoNumber"=> "SBI45"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "53",
                "delay": 1,
                "scheduledTime"=> "2019-03-09T09:50:00.000",
                "estimatedTime"=> "2019-03-09T09:51:00.000",
                "actualTime"=> "2019-03-09T09:51:00.000",
                "estimatedRunway"=> "2019-03-09T09:55:00.000",
                "actualRunway"=> "2019-03-09T09:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "delay": 110,
                "scheduledTime"=> "2019-03-09T11:30:00.000",
                "estimatedTime"=> "2019-03-09T13:20:00.000",
                "estimatedRunway"=> "2019-03-09T11:00:00.000"
            },
            "airline"=> {
                "name"=> "Singapore Airlines",
                "iataCode"=> "SQ",
                "icaoCode"=> "SIA"
            },
            "flight"=> {
                "number"=> "1913",
                "iataNumber"=> "SQ1913",
                "icaoNumber"=> "SIA1913"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "45",
                    "iataNumber"=> "S745",
                    "icaoNumber"=> "SBI45"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "53",
                "delay": 1,
                "scheduledTime"=> "2019-03-09T09:50:00.000",
                "estimatedTime"=> "2019-03-09T09:51:00.000",
                "actualTime"=> "2019-03-09T09:51:00.000",
                "estimatedRunway"=> "2019-03-09T09:55:00.000",
                "actualRunway"=> "2019-03-09T09:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "delay": 110,
                "scheduledTime"=> "2019-03-09T11:30:00.000",
                "estimatedTime"=> "2019-03-09T13:20:00.000",
                "estimatedRunway"=> "2019-03-09T11:00:00.000"
            },
            "airline"=> {
                "name"=> "TAP Portugal",
                "iataCode"=> "TP",
                "icaoCode"=> "TAP"
            },
            "flight"=> {
                "number"=> "8130",
                "iataNumber"=> "TP8130",
                "icaoNumber"=> "TAP8130"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "45",
                    "iataNumber"=> "S745",
                    "icaoNumber"=> "SBI45"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "53",
                "delay": 1,
                "scheduledTime"=> "2019-03-09T09:50:00.000",
                "estimatedTime"=> "2019-03-09T09:51:00.000",
                "actualTime"=> "2019-03-09T09:51:00.000",
                "estimatedRunway"=> "2019-03-09T09:55:00.000",
                "actualRunway"=> "2019-03-09T09:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "delay": 110,
                "scheduledTime"=> "2019-03-09T11:30:00.000",
                "estimatedTime"=> "2019-03-09T13:20:00.000",
                "estimatedRunway"=> "2019-03-09T11:00:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "45",
                "iataNumber"=> "S745",
                "icaoNumber"=> "SBI45"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "42",
                "scheduledTime"=> "2019-03-09T10:00:00.000",
                "estimatedTime"=> "2019-03-09T10:00:00.000",
                "actualTime"=> "2019-03-09T10:00:00.000",
                "estimatedRunway"=> "2019-03-09T10:09:00.000",
                "actualRunway"=> "2019-03-09T10:09:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SVX",
                "icaoCode"=> "USSS",
                "scheduledTime"=> "2019-03-09T14:20:00.000",
                "estimatedTime"=> "2019-03-09T14:00:00.000",
                "estimatedRunway"=> "2019-03-09T13:57:00.000",
                "actualRunway"=> "2019-03-09T13:57:00.000"
            },
            "airline"=> {
                "name"=> "Belavia",
                "iataCode"=> "B2",
                "icaoCode"=> "BRU"
            },
            "flight"=> {
                "number"=> "461",
                "iataNumber"=> "B2461",
                "icaoNumber"=> "BRU461"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Ural Airlines",
                    "iataCode"=> "U6",
                    "icaoCode"=> "SVR"
                },
                "flight"=> {
                    "number"=> "261",
                    "iataNumber"=> "U6261",
                    "icaoNumber"=> "SVR261"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "42",
                "scheduledTime"=> "2019-03-09T10:00:00.000",
                "estimatedTime"=> "2019-03-09T10:00:00.000",
                "actualTime"=> "2019-03-09T10:00:00.000",
                "estimatedRunway"=> "2019-03-09T10:09:00.000",
                "actualRunway"=> "2019-03-09T10:09:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SVX",
                "icaoCode"=> "USSS",
                "scheduledTime"=> "2019-03-09T14:20:00.000",
                "estimatedTime"=> "2019-03-09T14:00:00.000",
                "estimatedRunway"=> "2019-03-09T13:57:00.000",
                "actualRunway"=> "2019-03-09T13:57:00.000"
            },
            "airline"=> {
                "name"=> "Ural Airlines",
                "iataCode"=> "U6",
                "icaoCode"=> "SVR"
            },
            "flight"=> {
                "number"=> "261",
                "iataNumber"=> "U6261",
                "icaoNumber"=> "SVR261"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "55",
                "scheduledTime"=> "2019-03-09T10:15:00.000",
                "estimatedTime"=> "2019-03-09T10:05:00.000",
                "actualTime"=> "2019-03-09T10:05:00.000",
                "estimatedRunway"=> "2019-03-09T10:19:00.000",
                "actualRunway"=> "2019-03-09T10:19:00.000"
            },
            "arrival"=> {
                "iataCode"=> "CEK",
                "icaoCode"=> "USCC",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T14:50:00.000",
                "estimatedTime"=> "2019-03-09T14:17:00.000",
                "actualTime"=> "2019-03-09T14:17:00.000",
                "estimatedRunway"=> "2019-03-09T14:10:00.000",
                "actualRunway"=> "2019-03-09T14:10:00.000"
            },
            "airline"=> {
                "name"=> "Aegean Airlines",
                "iataCode"=> "A3",
                "icaoCode"=> "AEE"
            },
            "flight"=> {
                "number"=> "3568",
                "iataNumber"=> "A33568",
                "icaoNumber"=> "AEE3568"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "9",
                    "iataNumber"=> "S79",
                    "icaoNumber"=> "SBI9"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "55",
                "scheduledTime"=> "2019-03-09T10:15:00.000",
                "estimatedTime"=> "2019-03-09T10:05:00.000",
                "actualTime"=> "2019-03-09T10:05:00.000",
                "estimatedRunway"=> "2019-03-09T10:19:00.000",
                "actualRunway"=> "2019-03-09T10:19:00.000"
            },
            "arrival"=> {
                "iataCode"=> "CEK",
                "icaoCode"=> "USCC",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T14:50:00.000",
                "estimatedTime"=> "2019-03-09T14:17:00.000",
                "actualTime"=> "2019-03-09T14:17:00.000",
                "estimatedRunway"=> "2019-03-09T14:10:00.000",
                "actualRunway"=> "2019-03-09T14:10:00.000"
            },
            "airline"=> {
                "name"=> "British Airways",
                "iataCode"=> "BA",
                "icaoCode"=> "BAW"
            },
            "flight"=> {
                "number"=> "8799",
                "iataNumber"=> "BA8799",
                "icaoNumber"=> "BAW8799"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "9",
                    "iataNumber"=> "S79",
                    "icaoNumber"=> "SBI9"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "55",
                "scheduledTime"=> "2019-03-09T10:15:00.000",
                "estimatedTime"=> "2019-03-09T10:05:00.000",
                "actualTime"=> "2019-03-09T10:05:00.000",
                "estimatedRunway"=> "2019-03-09T10:19:00.000",
                "actualRunway"=> "2019-03-09T10:19:00.000"
            },
            "arrival"=> {
                "iataCode"=> "CEK",
                "icaoCode"=> "USCC",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T14:50:00.000",
                "estimatedTime"=> "2019-03-09T14:17:00.000",
                "actualTime"=> "2019-03-09T14:17:00.000",
                "estimatedRunway"=> "2019-03-09T14:10:00.000",
                "actualRunway"=> "2019-03-09T14:10:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7819",
                "iataNumber"=> "EK7819",
                "icaoNumber"=> "UAE7819"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "9",
                    "iataNumber"=> "S79",
                    "icaoNumber"=> "SBI9"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "55",
                "scheduledTime"=> "2019-03-09T10:15:00.000",
                "estimatedTime"=> "2019-03-09T10:05:00.000",
                "actualTime"=> "2019-03-09T10:05:00.000",
                "estimatedRunway"=> "2019-03-09T10:19:00.000",
                "actualRunway"=> "2019-03-09T10:19:00.000"
            },
            "arrival"=> {
                "iataCode"=> "CEK",
                "icaoCode"=> "USCC",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T14:50:00.000",
                "estimatedTime"=> "2019-03-09T14:17:00.000",
                "actualTime"=> "2019-03-09T14:17:00.000",
                "estimatedRunway"=> "2019-03-09T14:10:00.000",
                "actualRunway"=> "2019-03-09T14:10:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "4342",
                "iataNumber"=> "EY4342",
                "icaoNumber"=> "ETD4342"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "9",
                    "iataNumber"=> "S79",
                    "icaoNumber"=> "SBI9"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "55",
                "scheduledTime"=> "2019-03-09T10:15:00.000",
                "estimatedTime"=> "2019-03-09T10:05:00.000",
                "actualTime"=> "2019-03-09T10:05:00.000",
                "estimatedRunway"=> "2019-03-09T10:19:00.000",
                "actualRunway"=> "2019-03-09T10:19:00.000"
            },
            "arrival"=> {
                "iataCode"=> "CEK",
                "icaoCode"=> "USCC",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T14:50:00.000",
                "estimatedTime"=> "2019-03-09T14:17:00.000",
                "actualTime"=> "2019-03-09T14:17:00.000",
                "estimatedRunway"=> "2019-03-09T14:10:00.000",
                "actualRunway"=> "2019-03-09T14:10:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5654",
                "iataNumber"=> "QR5654",
                "icaoNumber"=> "QTR5654"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "9",
                    "iataNumber"=> "S79",
                    "icaoNumber"=> "SBI9"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "55",
                "scheduledTime"=> "2019-03-09T10:15:00.000",
                "estimatedTime"=> "2019-03-09T10:05:00.000",
                "actualTime"=> "2019-03-09T10:05:00.000",
                "estimatedRunway"=> "2019-03-09T10:19:00.000",
                "actualRunway"=> "2019-03-09T10:19:00.000"
            },
            "arrival"=> {
                "iataCode"=> "CEK",
                "icaoCode"=> "USCC",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T14:50:00.000",
                "estimatedTime"=> "2019-03-09T14:17:00.000",
                "actualTime"=> "2019-03-09T14:17:00.000",
                "estimatedRunway"=> "2019-03-09T14:10:00.000",
                "actualRunway"=> "2019-03-09T14:10:00.000"
            },
            "airline"=> {
                "name"=> "Aigle Azur",
                "iataCode"=> "ZI",
                "icaoCode"=> "AAF"
            },
            "flight"=> {
                "number"=> "1080",
                "iataNumber"=> "ZI1080",
                "icaoNumber"=> "AAF1080"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "9",
                    "iataNumber"=> "S79",
                    "icaoNumber"=> "SBI9"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "55",
                "scheduledTime"=> "2019-03-09T10:15:00.000",
                "estimatedTime"=> "2019-03-09T10:05:00.000",
                "actualTime"=> "2019-03-09T10:05:00.000",
                "estimatedRunway"=> "2019-03-09T10:19:00.000",
                "actualRunway"=> "2019-03-09T10:19:00.000"
            },
            "arrival"=> {
                "iataCode"=> "CEK",
                "icaoCode"=> "USCC",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T14:50:00.000",
                "estimatedTime"=> "2019-03-09T14:17:00.000",
                "actualTime"=> "2019-03-09T14:17:00.000",
                "estimatedRunway"=> "2019-03-09T14:10:00.000",
                "actualRunway"=> "2019-03-09T14:10:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "9",
                "iataNumber"=> "S79",
                "icaoNumber"=> "SBI9"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "16",
                "delay": 4,
                "scheduledTime"=> "2019-03-09T10:05:00.000",
                "estimatedTime"=> "2019-03-09T10:09:00.000",
                "actualTime"=> "2019-03-09T10:09:00.000",
                "estimatedRunway"=> "2019-03-09T10:16:00.000",
                "actualRunway"=> "2019-03-09T10:16:00.000"
            },
            "arrival"=> {
                "iataCode"=> "BCN",
                "icaoCode"=> "LEBL",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T12:50:00.000",
                "estimatedTime"=> "2019-03-09T12:43:00.000",
                "estimatedRunway"=> "2019-03-09T12:35:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "891",
                "iataNumber"=> "S7891",
                "icaoNumber"=> "SBI891"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "38",
                "delay": 10,
                "scheduledTime"=> "2019-03-09T10:00:00.000",
                "estimatedTime"=> "2019-03-09T10:10:00.000",
                "actualTime"=> "2019-03-09T10:10:00.000",
                "estimatedRunway"=> "2019-03-09T10:23:00.000",
                "actualRunway"=> "2019-03-09T10:23:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SIP",
                "icaoCode"=> "UKFF",
                "terminal"=> "1",
                "delay": 10,
                "scheduledTime"=> "2019-03-09T12:30:00.000",
                "estimatedTime"=> "2019-03-09T12:40:00.000",
                "estimatedRunway"=> "2019-03-09T12:32:00.000",
                "actualRunway"=> "2019-03-09T12:32:00.000"
            },
            "airline"=> {
                "name"=> "Ural Airlines",
                "iataCode"=> "U6",
                "icaoCode"=> "SVR"
            },
            "flight"=> {
                "number"=> "2831",
                "iataNumber"=> "U62831",
                "icaoNumber"=> "SVR2831"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "41",
                "scheduledTime"=> "2019-03-09T10:10:00.000",
                "estimatedTime"=> "2019-03-09T10:10:00.000",
                "actualTime"=> "2019-03-09T10:10:00.000",
                "estimatedRunway"=> "2019-03-09T10:28:00.000",
                "actualRunway"=> "2019-03-09T10:28:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "delay": 165,
                "scheduledTime"=> "2019-03-09T11:55:00.000",
                "estimatedTime"=> "2019-03-09T14:40:00.000"
            },
            "airline"=> {
                "name"=> "Ural Airlines",
                "iataCode"=> "U6",
                "icaoCode"=> "SVR"
            },
            "flight"=> {
                "number"=> "79",
                "iataNumber"=> "U679",
                "icaoNumber"=> "SVR79"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "4",
                "delay": 6,
                "scheduledTime"=> "2019-03-09T10:05:00.000",
                "estimatedTime"=> "2019-03-09T10:11:00.000",
                "actualTime"=> "2019-03-09T10:11:00.000",
                "estimatedRunway"=> "2019-03-09T10:29:00.000",
                "actualRunway"=> "2019-03-09T10:29:00.000"
            },
            "arrival"=> {
                "iataCode"=> "BCN",
                "icaoCode"=> "LEBL",
                "terminal"=> "2",
                "baggage"=> "42",
                "delay": 13,
                "scheduledTime"=> "2019-03-09T12:40:00.000",
                "estimatedTime"=> "2019-03-09T12:53:00.000",
                "estimatedRunway"=> "2019-03-09T12:47:00.000"
            },
            "airline"=> {
                "name"=> "Ural Airlines",
                "iataCode"=> "U6",
                "icaoCode"=> "SVR"
            },
            "flight"=> {
                "number"=> "845",
                "iataNumber"=> "U6845",
                "icaoNumber"=> "SVR845"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "47",
                "scheduledTime"=> "2019-03-09T10:15:00.000",
                "estimatedTime"=> "2019-03-09T10:15:00.000",
                "actualTime"=> "2019-03-09T10:15:00.000",
                "estimatedRunway"=> "2019-03-09T10:24:00.000",
                "actualRunway"=> "2019-03-09T10:24:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KGD",
                "icaoCode"=> "UMKK",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-09T11:25:00.000",
                "estimatedTime"=> "2019-03-09T11:25:00.000",
                "estimatedRunway"=> "2019-03-09T11:07:00.000",
                "actualRunway"=> "2019-03-09T11:07:00.000"
            },
            "airline"=> {
                "name"=> "Ural Airlines",
                "iataCode"=> "U6",
                "icaoCode"=> "SVR"
            },
            "flight"=> {
                "number"=> "371",
                "iataNumber"=> "U6371",
                "icaoNumber"=> "SVR371"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "18",
                "delay": 13,
                "scheduledTime"=> "2019-03-09T10:15:00.000",
                "estimatedTime"=> "2019-03-09T10:28:00.000",
                "actualTime"=> "2019-03-09T10:28:00.000",
                "estimatedRunway"=> "2019-03-09T10:37:00.000",
                "actualRunway"=> "2019-03-09T10:37:00.000"
            },
            "arrival"=> {
                "iataCode"=> "ALC",
                "icaoCode"=> "LEAL",
                "delay": 2,
                "scheduledTime"=> "2019-03-09T13:35:00.000",
                "estimatedTime"=> "2019-03-09T13:37:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "875",
                "iataNumber"=> "S7875",
                "icaoNumber"=> "SBI875"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "21",
                "scheduledTime"=> "2019-03-09T10:30:00.000",
                "estimatedTime"=> "2019-03-09T10:30:00.000",
                "actualTime"=> "2019-03-09T10:30:00.000",
                "estimatedRunway"=> "2019-03-09T10:45:00.000",
                "actualRunway"=> "2019-03-09T10:45:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LCA",
                "icaoCode"=> "LCLK",
                "scheduledTime"=> "2019-03-09T13:20:00.000",
                "estimatedTime"=> "2019-03-09T13:20:00.000",
                "estimatedRunway"=> "2019-03-09T13:01:00.000"
            },
            "airline"=> {
                "name"=> "Ural Airlines",
                "iataCode"=> "U6",
                "icaoCode"=> "SVR"
            },
            "flight"=> {
                "number"=> "7029",
                "iataNumber"=> "U67029",
                "icaoNumber"=> "SVR7029"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "22",
                "delay": 6,
                "scheduledTime"=> "2019-03-09T10:25:00.000",
                "estimatedTime"=> "2019-03-09T10:31:00.000",
                "actualTime"=> "2019-03-09T10:31:00.000",
                "estimatedRunway"=> "2019-03-09T10:38:00.000",
                "actualRunway"=> "2019-03-09T10:38:00.000"
            },
            "arrival"=> {
                "iataCode"=> "RMI",
                "icaoCode"=> "LIPR",
                "delay": 6,
                "scheduledTime"=> "2019-03-09T11:55:00.000",
                "estimatedTime"=> "2019-03-09T12:01:00.000",
                "estimatedRunway"=> "2019-03-09T11:55:00.000",
                "actualRunway"=> "2019-03-09T11:55:00.000"
            },
            "airline"=> {
                "name"=> "Ural Airlines",
                "iataCode"=> "U6",
                "icaoCode"=> "SVR"
            },
            "flight"=> {
                "number"=> "741",
                "iataNumber"=> "U6741",
                "icaoNumber"=> "SVR741"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "50",
                "delay": 2,
                "scheduledTime"=> "2019-03-09T10:30:00.000",
                "estimatedTime"=> "2019-03-09T10:32:00.000",
                "actualTime"=> "2019-03-09T10:32:00.000",
                "estimatedRunway"=> "2019-03-09T10:41:00.000",
                "actualRunway"=> "2019-03-09T10:41:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OGZ",
                "icaoCode"=> "URMO",
                "scheduledTime"=> "2019-03-09T13:00:00.000",
                "estimatedTime"=> "2019-03-09T12:45:00.000",
                "actualTime"=> "2019-03-09T12:45:00.000",
                "estimatedRunway"=> "2019-03-09T12:39:00.000",
                "actualRunway"=> "2019-03-09T12:39:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7955",
                "iataNumber"=> "EK7955",
                "icaoNumber"=> "UAE7955"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "881",
                    "iataNumber"=> "GH881",
                    "icaoNumber"=> "GLP881"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "50",
                "delay": 2,
                "scheduledTime"=> "2019-03-09T10:30:00.000",
                "estimatedTime"=> "2019-03-09T10:32:00.000",
                "actualTime"=> "2019-03-09T10:32:00.000",
                "estimatedRunway"=> "2019-03-09T10:41:00.000",
                "actualRunway"=> "2019-03-09T10:41:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OGZ",
                "icaoCode"=> "URMO",
                "scheduledTime"=> "2019-03-09T13:00:00.000",
                "estimatedTime"=> "2019-03-09T12:45:00.000",
                "actualTime"=> "2019-03-09T12:45:00.000",
                "estimatedRunway"=> "2019-03-09T12:39:00.000",
                "actualRunway"=> "2019-03-09T12:39:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5690",
                "iataNumber"=> "QR5690",
                "icaoNumber"=> "QTR5690"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "881",
                    "iataNumber"=> "GH881",
                    "icaoNumber"=> "GLP881"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "50",
                "delay": 2,
                "scheduledTime"=> "2019-03-09T10:30:00.000",
                "estimatedTime"=> "2019-03-09T10:32:00.000",
                "actualTime"=> "2019-03-09T10:32:00.000",
                "estimatedRunway"=> "2019-03-09T10:41:00.000",
                "actualRunway"=> "2019-03-09T10:41:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OGZ",
                "icaoCode"=> "URMO",
                "scheduledTime"=> "2019-03-09T13:00:00.000",
                "estimatedTime"=> "2019-03-09T12:45:00.000",
                "actualTime"=> "2019-03-09T12:45:00.000",
                "estimatedRunway"=> "2019-03-09T12:39:00.000",
                "actualRunway"=> "2019-03-09T12:39:00.000"
            },
            "airline"=> {
                "name"=> "Singapore Airlines",
                "iataCode"=> "SQ",
                "icaoCode"=> "SIA"
            },
            "flight"=> {
                "number"=> "1981",
                "iataNumber"=> "SQ1981",
                "icaoNumber"=> "SIA1981"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "881",
                    "iataNumber"=> "GH881",
                    "icaoNumber"=> "GLP881"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "50",
                "delay": 2,
                "scheduledTime"=> "2019-03-09T10:30:00.000",
                "estimatedTime"=> "2019-03-09T10:32:00.000",
                "actualTime"=> "2019-03-09T10:32:00.000",
                "estimatedRunway"=> "2019-03-09T10:41:00.000",
                "actualRunway"=> "2019-03-09T10:41:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OGZ",
                "icaoCode"=> "URMO",
                "scheduledTime"=> "2019-03-09T13:00:00.000",
                "estimatedTime"=> "2019-03-09T12:45:00.000",
                "actualTime"=> "2019-03-09T12:45:00.000",
                "estimatedRunway"=> "2019-03-09T12:39:00.000",
                "actualRunway"=> "2019-03-09T12:39:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "881",
                "iataNumber"=> "S7881",
                "icaoNumber"=> "SBI881"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "881",
                    "iataNumber"=> "GH881",
                    "icaoNumber"=> "GLP881"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "50",
                "delay": 2,
                "scheduledTime"=> "2019-03-09T10:30:00.000",
                "estimatedTime"=> "2019-03-09T10:32:00.000",
                "actualTime"=> "2019-03-09T10:32:00.000",
                "estimatedRunway"=> "2019-03-09T10:41:00.000",
                "actualRunway"=> "2019-03-09T10:41:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OGZ",
                "icaoCode"=> "URMO",
                "scheduledTime"=> "2019-03-09T13:00:00.000",
                "estimatedTime"=> "2019-03-09T12:45:00.000",
                "actualTime"=> "2019-03-09T12:45:00.000",
                "estimatedRunway"=> "2019-03-09T12:39:00.000",
                "actualRunway"=> "2019-03-09T12:39:00.000"
            },
            "airline"=> {
                "name"=> "Globus",
                "iataCode"=> "GH",
                "icaoCode"=> "GLP"
            },
            "flight"=> {
                "number"=> "881",
                "iataNumber"=> "GH881",
                "icaoNumber"=> "GLP881"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "49",
                "scheduledTime"=> "2019-03-09T10:35:00.000",
                "estimatedRunway"=> "2019-03-09T10:34:00.000",
                "actualRunway"=> "2019-03-09T10:34:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MMK",
                "icaoCode"=> "ULMM",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T13:10:00.000",
                "estimatedRunway"=> "2019-03-09T12:46:00.000",
                "actualRunway"=> "2019-03-09T12:46:00.000"
            },
            "airline"=> {
                "name"=> "Nordavia Regional Airlines",
                "iataCode"=> "5N",
                "icaoCode"=> "AUL"
            },
            "flight"=> {
                "number"=> "517",
                "iataNumber"=> "5N517",
                "icaoNumber"=> "AUL517"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "17",
                "scheduledTime"=> "2019-03-09T10:50:00.000",
                "estimatedTime"=> "2019-03-09T10:41:00.000",
                "actualTime"=> "2019-03-09T10:41:00.000",
                "estimatedRunway"=> "2019-03-09T10:46:00.000",
                "actualRunway"=> "2019-03-09T10:46:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MSQ",
                "icaoCode"=> "UMMS",
                "scheduledTime"=> "2019-03-09T12:10:00.000",
                "estimatedTime"=> "2019-03-09T12:00:00.000",
                "actualTime"=> "2019-03-09T12:00:00.000",
                "estimatedRunway"=> "2019-03-09T11:55:00.000",
                "actualRunway"=> "2019-03-09T11:55:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "4435",
                "iataNumber"=> "S74435",
                "icaoNumber"=> "SBI4435"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Belavia",
                    "iataCode"=> "B2",
                    "icaoCode"=> "BRU"
                },
                "flight"=> {
                    "number"=> "958",
                    "iataNumber"=> "B2958",
                    "icaoNumber"=> "BRU958"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "17",
                "scheduledTime"=> "2019-03-09T10:50:00.000",
                "estimatedTime"=> "2019-03-09T10:41:00.000",
                "actualTime"=> "2019-03-09T10:41:00.000",
                "estimatedRunway"=> "2019-03-09T10:46:00.000",
                "actualRunway"=> "2019-03-09T10:46:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MSQ",
                "icaoCode"=> "UMMS",
                "scheduledTime"=> "2019-03-09T12:10:00.000",
                "estimatedTime"=> "2019-03-09T12:00:00.000",
                "actualTime"=> "2019-03-09T12:00:00.000",
                "estimatedRunway"=> "2019-03-09T11:55:00.000",
                "actualRunway"=> "2019-03-09T11:55:00.000"
            },
            "airline"=> {
                "name"=> "Belavia",
                "iataCode"=> "B2",
                "icaoCode"=> "BRU"
            },
            "flight"=> {
                "number"=> "958",
                "iataNumber"=> "B2958",
                "icaoNumber"=> "BRU958"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "20",
                "delay": 2,
                "scheduledTime"=> "2019-03-09T10:45:00.000",
                "estimatedTime"=> "2019-03-09T10:47:00.000",
                "actualTime"=> "2019-03-09T10:47:00.000",
                "estimatedRunway"=> "2019-03-09T10:56:00.000",
                "actualRunway"=> "2019-03-09T10:56:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MUC",
                "icaoCode"=> "EDDM",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T12:00:00.000",
                "estimatedTime"=> "2019-03-09T12:00:00.000",
                "estimatedRunway"=> "2019-03-09T11:53:00.000",
                "actualRunway"=> "2019-03-09T11:53:00.000"
            },
            "airline"=> {
                "name"=> "Ural Airlines",
                "iataCode"=> "U6",
                "icaoCode"=> "SVR"
            },
            "flight"=> {
                "number"=> "799",
                "iataNumber"=> "U6799",
                "icaoNumber"=> "SVR799"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "12",
                "scheduledTime"=> "2019-03-09T10:50:00.000",
                "estimatedRunway"=> "2019-03-09T10:57:00.000",
                "actualRunway"=> "2019-03-09T10:57:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KIV",
                "icaoCode"=> "LUKK",
                "scheduledTime"=> "2019-03-09T11:50:00.000",
                "estimatedTime"=> "2019-03-09T11:44:00.000",
                "estimatedRunway"=> "2019-03-09T11:44:00.000",
                "actualRunway"=> "2019-03-09T11:44:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "4535",
                "iataNumber"=> "S74535",
                "icaoNumber"=> "SBI4535"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Air Moldova",
                    "iataCode"=> "9U",
                    "icaoCode"=> "MLD"
                },
                "flight"=> {
                    "number"=> "174",
                    "iataNumber"=> "9U174",
                    "icaoNumber"=> "MLD174"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "12",
                "scheduledTime"=> "2019-03-09T10:50:00.000",
                "estimatedRunway"=> "2019-03-09T10:57:00.000",
                "actualRunway"=> "2019-03-09T10:57:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KIV",
                "icaoCode"=> "LUKK",
                "scheduledTime"=> "2019-03-09T11:50:00.000",
                "estimatedTime"=> "2019-03-09T11:44:00.000",
                "estimatedRunway"=> "2019-03-09T11:44:00.000",
                "actualRunway"=> "2019-03-09T11:44:00.000"
            },
            "airline"=> {
                "name"=> "Air Moldova",
                "iataCode"=> "9U",
                "icaoCode"=> "MLD"
            },
            "flight"=> {
                "number"=> "174",
                "iataNumber"=> "9U174",
                "icaoNumber"=> "MLD174"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "16",
                "scheduledTime"=> "2019-03-09T10:55:00.000",
                "estimatedTime"=> "2019-03-09T10:53:00.000",
                "actualTime"=> "2019-03-09T10:53:00.000",
                "estimatedRunway"=> "2019-03-09T11:10:00.000",
                "actualRunway"=> "2019-03-09T11:10:00.000"
            },
            "arrival"=> {
                "iataCode"=> "TRN",
                "icaoCode"=> "LIMF",
                "delay": 4,
                "scheduledTime"=> "2019-03-09T12:50:00.000",
                "estimatedTime"=> "2019-03-09T12:54:00.000",
                "estimatedRunway"=> "2019-03-09T12:46:00.000"
            },
            "airline"=> {
                "name"=> "Air Italy",
                "iataCode"=> "IG",
                "icaoCode"=> "ISS"
            },
            "flight"=> {
                "number"=> "9685",
                "iataNumber"=> "IG9685",
                "icaoNumber"=> "ISS9685"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "685",
                    "iataNumber"=> "S7685",
                    "icaoNumber"=> "SBI685"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "16",
                "scheduledTime"=> "2019-03-09T10:55:00.000",
                "estimatedTime"=> "2019-03-09T10:53:00.000",
                "actualTime"=> "2019-03-09T10:53:00.000",
                "estimatedRunway"=> "2019-03-09T11:10:00.000",
                "actualRunway"=> "2019-03-09T11:10:00.000"
            },
            "arrival"=> {
                "iataCode"=> "TRN",
                "icaoCode"=> "LIMF",
                "delay": 4,
                "scheduledTime"=> "2019-03-09T12:50:00.000",
                "estimatedTime"=> "2019-03-09T12:54:00.000",
                "estimatedRunway"=> "2019-03-09T12:46:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "685",
                "iataNumber"=> "S7685",
                "icaoNumber"=> "SBI685"
            }
        },
        {
            "type"=> "departure",
            "status"=> "cancelled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T10:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "FRU",
                "icaoCode"=> "UAFM",
                "scheduledTime"=> "2019-03-09T17:55:00.000"
            },
            "airline"=> {
                "name"=> "Avia Traffic Company",
                "iataCode"=> "YK",
                "icaoCode"=> "AVJ"
            },
            "flight"=> {
                "number"=> "884",
                "iataNumber"=> "YK884",
                "icaoNumber"=> "AVJ884"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "18",
                "delay": 4,
                "scheduledTime"=> "2019-03-09T10:55:00.000",
                "estimatedTime"=> "2019-03-09T10:59:00.000",
                "actualTime"=> "2019-03-09T10:59:00.000",
                "estimatedRunway"=> "2019-03-09T11:11:00.000",
                "actualRunway"=> "2019-03-09T11:11:00.000"
            },
            "arrival"=> {
                "iataCode"=> "NAP",
                "icaoCode"=> "LIRN",
                "scheduledTime"=> "2019-03-09T12:50:00.000",
                "estimatedTime"=> "2019-03-09T12:44:00.000",
                "estimatedRunway"=> "2019-03-09T12:38:00.000"
            },
            "airline"=> {
                "name"=> "Air Italy",
                "iataCode"=> "IG",
                "icaoCode"=> "ISS"
            },
            "flight"=> {
                "number"=> "9605",
                "iataNumber"=> "IG9605",
                "icaoNumber"=> "ISS9605"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "605",
                    "iataNumber"=> "S7605",
                    "icaoNumber"=> "SBI605"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "18",
                "delay": 4,
                "scheduledTime"=> "2019-03-09T10:55:00.000",
                "estimatedTime"=> "2019-03-09T10:59:00.000",
                "actualTime"=> "2019-03-09T10:59:00.000",
                "estimatedRunway"=> "2019-03-09T11:11:00.000",
                "actualRunway"=> "2019-03-09T11:11:00.000"
            },
            "arrival"=> {
                "iataCode"=> "NAP",
                "icaoCode"=> "LIRN",
                "scheduledTime"=> "2019-03-09T12:50:00.000",
                "estimatedTime"=> "2019-03-09T12:44:00.000",
                "estimatedRunway"=> "2019-03-09T12:38:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "605",
                "iataNumber"=> "S7605",
                "icaoNumber"=> "SBI605"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "13",
                "delay": 6,
                "scheduledTime"=> "2019-03-09T10:55:00.000",
                "estimatedTime"=> "2019-03-09T11:01:00.000",
                "actualTime"=> "2019-03-09T11:01:00.000",
                "estimatedRunway"=> "2019-03-09T11:14:00.000",
                "actualRunway"=> "2019-03-09T11:14:00.000"
            },
            "arrival"=> {
                "iataCode"=> "VRN",
                "icaoCode"=> "LIPX",
                "delay": 8,
                "scheduledTime"=> "2019-03-09T12:30:00.000",
                "estimatedTime"=> "2019-03-09T12:38:00.000",
                "estimatedRunway"=> "2019-03-09T12:32:00.000"
            },
            "airline"=> {
                "name"=> "Air Italy",
                "iataCode"=> "IG",
                "icaoCode"=> "ISS"
            },
            "flight"=> {
                "number"=> "9697",
                "iataNumber"=> "IG9697",
                "icaoNumber"=> "ISS9697"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "697",
                    "iataNumber"=> "GH697",
                    "icaoNumber"=> "GLP697"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "13",
                "delay": 6,
                "scheduledTime"=> "2019-03-09T10:55:00.000",
                "estimatedTime"=> "2019-03-09T11:01:00.000",
                "actualTime"=> "2019-03-09T11:01:00.000",
                "estimatedRunway"=> "2019-03-09T11:14:00.000",
                "actualRunway"=> "2019-03-09T11:14:00.000"
            },
            "arrival"=> {
                "iataCode"=> "VRN",
                "icaoCode"=> "LIPX",
                "delay": 8,
                "scheduledTime"=> "2019-03-09T12:30:00.000",
                "estimatedTime"=> "2019-03-09T12:38:00.000",
                "estimatedRunway"=> "2019-03-09T12:32:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "697",
                "iataNumber"=> "S7697",
                "icaoNumber"=> "SBI697"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "697",
                    "iataNumber"=> "GH697",
                    "icaoNumber"=> "GLP697"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "13",
                "delay": 6,
                "scheduledTime"=> "2019-03-09T10:55:00.000",
                "estimatedTime"=> "2019-03-09T11:01:00.000",
                "actualTime"=> "2019-03-09T11:01:00.000",
                "estimatedRunway"=> "2019-03-09T11:14:00.000",
                "actualRunway"=> "2019-03-09T11:14:00.000"
            },
            "arrival"=> {
                "iataCode"=> "VRN",
                "icaoCode"=> "LIPX",
                "delay": 8,
                "scheduledTime"=> "2019-03-09T12:30:00.000",
                "estimatedTime"=> "2019-03-09T12:38:00.000",
                "estimatedRunway"=> "2019-03-09T12:32:00.000"
            },
            "airline"=> {
                "name"=> "Globus",
                "iataCode"=> "GH",
                "icaoCode"=> "GLP"
            },
            "flight"=> {
                "number"=> "697",
                "iataNumber"=> "GH697",
                "icaoNumber"=> "GLP697"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "34",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:03:00.000",
                "actualTime"=> "2019-03-09T11:03:00.000",
                "estimatedRunway"=> "2019-03-09T11:19:00.000",
                "actualRunway"=> "2019-03-09T11:19:00.000"
            },
            "arrival"=> {
                "iataCode"=> "NUX",
                "icaoCode"=> "USMU",
                "scheduledTime"=> "2019-03-09T16:45:00.000",
                "estimatedTime"=> "2019-03-09T16:24:00.000",
                "estimatedRunway"=> "2019-03-09T16:08:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7843",
                "iataNumber"=> "EK7843",
                "icaoNumber"=> "UAE7843"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "423",
                    "iataNumber"=> "GH423",
                    "icaoNumber"=> "GLP423"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "34",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:03:00.000",
                "actualTime"=> "2019-03-09T11:03:00.000",
                "estimatedRunway"=> "2019-03-09T11:19:00.000",
                "actualRunway"=> "2019-03-09T11:19:00.000"
            },
            "arrival"=> {
                "iataCode"=> "NUX",
                "icaoCode"=> "USMU",
                "scheduledTime"=> "2019-03-09T16:45:00.000",
                "estimatedTime"=> "2019-03-09T16:24:00.000",
                "estimatedRunway"=> "2019-03-09T16:08:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "4322",
                "iataNumber"=> "EY4322",
                "icaoNumber"=> "ETD4322"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "423",
                    "iataNumber"=> "GH423",
                    "icaoNumber"=> "GLP423"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "34",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:03:00.000",
                "actualTime"=> "2019-03-09T11:03:00.000",
                "estimatedRunway"=> "2019-03-09T11:19:00.000",
                "actualRunway"=> "2019-03-09T11:19:00.000"
            },
            "arrival"=> {
                "iataCode"=> "NUX",
                "icaoCode"=> "USMU",
                "scheduledTime"=> "2019-03-09T16:45:00.000",
                "estimatedTime"=> "2019-03-09T16:24:00.000",
                "estimatedRunway"=> "2019-03-09T16:08:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5692",
                "iataNumber"=> "QR5692",
                "icaoNumber"=> "QTR5692"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "423",
                    "iataNumber"=> "GH423",
                    "icaoNumber"=> "GLP423"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "34",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:03:00.000",
                "actualTime"=> "2019-03-09T11:03:00.000",
                "estimatedRunway"=> "2019-03-09T11:19:00.000",
                "actualRunway"=> "2019-03-09T11:19:00.000"
            },
            "arrival"=> {
                "iataCode"=> "NUX",
                "icaoCode"=> "USMU",
                "scheduledTime"=> "2019-03-09T16:45:00.000",
                "estimatedTime"=> "2019-03-09T16:24:00.000",
                "estimatedRunway"=> "2019-03-09T16:08:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "423",
                "iataNumber"=> "S7423",
                "icaoNumber"=> "SBI423"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "423",
                    "iataNumber"=> "GH423",
                    "icaoNumber"=> "GLP423"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "34",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:03:00.000",
                "actualTime"=> "2019-03-09T11:03:00.000",
                "estimatedRunway"=> "2019-03-09T11:19:00.000",
                "actualRunway"=> "2019-03-09T11:19:00.000"
            },
            "arrival"=> {
                "iataCode"=> "NUX",
                "icaoCode"=> "USMU",
                "scheduledTime"=> "2019-03-09T16:45:00.000",
                "estimatedTime"=> "2019-03-09T16:24:00.000",
                "estimatedRunway"=> "2019-03-09T16:08:00.000"
            },
            "airline"=> {
                "name"=> "Globus",
                "iataCode"=> "GH",
                "icaoCode"=> "GLP"
            },
            "flight"=> {
                "number"=> "423",
                "iataNumber"=> "GH423",
                "icaoNumber"=> "GLP423"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "51",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:04:00.000",
                "actualTime"=> "2019-03-09T11:04:00.000",
                "estimatedRunway"=> "2019-03-09T11:21:00.000",
                "actualRunway"=> "2019-03-09T11:21:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KUF",
                "icaoCode"=> "UWWW",
                "scheduledTime"=> "2019-03-09T14:00:00.000",
                "estimatedTime"=> "2019-03-09T13:36:00.000",
                "actualTime"=> "2019-03-09T13:36:00.000",
                "estimatedRunway"=> "2019-03-09T13:29:00.000",
                "actualRunway"=> "2019-03-09T13:29:00.000"
            },
            "airline"=> {
                "name"=> "Aegean Airlines",
                "iataCode"=> "A3",
                "icaoCode"=> "AEE"
            },
            "flight"=> {
                "number"=> "3500",
                "iataNumber"=> "A33500",
                "icaoNumber"=> "AEE3500"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "33",
                    "iataNumber"=> "S733",
                    "icaoNumber"=> "SBI33"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "51",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:04:00.000",
                "actualTime"=> "2019-03-09T11:04:00.000",
                "estimatedRunway"=> "2019-03-09T11:21:00.000",
                "actualRunway"=> "2019-03-09T11:21:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KUF",
                "icaoCode"=> "UWWW",
                "scheduledTime"=> "2019-03-09T14:00:00.000",
                "estimatedTime"=> "2019-03-09T13:36:00.000",
                "actualTime"=> "2019-03-09T13:36:00.000",
                "estimatedRunway"=> "2019-03-09T13:29:00.000",
                "actualRunway"=> "2019-03-09T13:29:00.000"
            },
            "airline"=> {
                "name"=> "Royal Air Maroc",
                "iataCode"=> "AT",
                "icaoCode"=> "RAM"
            },
            "flight"=> {
                "number"=> "9021",
                "iataNumber"=> "AT9021",
                "icaoNumber"=> "RAM9021"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "33",
                    "iataNumber"=> "S733",
                    "icaoNumber"=> "SBI33"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "51",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:04:00.000",
                "actualTime"=> "2019-03-09T11:04:00.000",
                "estimatedRunway"=> "2019-03-09T11:21:00.000",
                "actualRunway"=> "2019-03-09T11:21:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KUF",
                "icaoCode"=> "UWWW",
                "scheduledTime"=> "2019-03-09T14:00:00.000",
                "estimatedTime"=> "2019-03-09T13:36:00.000",
                "actualTime"=> "2019-03-09T13:36:00.000",
                "estimatedRunway"=> "2019-03-09T13:29:00.000",
                "actualRunway"=> "2019-03-09T13:29:00.000"
            },
            "airline"=> {
                "name"=> "Belavia",
                "iataCode"=> "B2",
                "icaoCode"=> "BRU"
            },
            "flight"=> {
                "number"=> "33",
                "iataNumber"=> "B233",
                "icaoNumber"=> "BRU33"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "33",
                    "iataNumber"=> "S733",
                    "icaoNumber"=> "SBI33"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "51",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:04:00.000",
                "actualTime"=> "2019-03-09T11:04:00.000",
                "estimatedRunway"=> "2019-03-09T11:21:00.000",
                "actualRunway"=> "2019-03-09T11:21:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KUF",
                "icaoCode"=> "UWWW",
                "scheduledTime"=> "2019-03-09T14:00:00.000",
                "estimatedTime"=> "2019-03-09T13:36:00.000",
                "actualTime"=> "2019-03-09T13:36:00.000",
                "estimatedRunway"=> "2019-03-09T13:29:00.000",
                "actualRunway"=> "2019-03-09T13:29:00.000"
            },
            "airline"=> {
                "name"=> "British Airways",
                "iataCode"=> "BA",
                "icaoCode"=> "BAW"
            },
            "flight"=> {
                "number"=> "8783",
                "iataNumber"=> "BA8783",
                "icaoNumber"=> "BAW8783"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "33",
                    "iataNumber"=> "S733",
                    "icaoNumber"=> "SBI33"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "51",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:04:00.000",
                "actualTime"=> "2019-03-09T11:04:00.000",
                "estimatedRunway"=> "2019-03-09T11:21:00.000",
                "actualRunway"=> "2019-03-09T11:21:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KUF",
                "icaoCode"=> "UWWW",
                "scheduledTime"=> "2019-03-09T14:00:00.000",
                "estimatedTime"=> "2019-03-09T13:36:00.000",
                "actualTime"=> "2019-03-09T13:36:00.000",
                "estimatedRunway"=> "2019-03-09T13:29:00.000",
                "actualRunway"=> "2019-03-09T13:29:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7851",
                "iataNumber"=> "EK7851",
                "icaoNumber"=> "UAE7851"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "33",
                    "iataNumber"=> "S733",
                    "icaoNumber"=> "SBI33"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "51",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:04:00.000",
                "actualTime"=> "2019-03-09T11:04:00.000",
                "estimatedRunway"=> "2019-03-09T11:21:00.000",
                "actualRunway"=> "2019-03-09T11:21:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KUF",
                "icaoCode"=> "UWWW",
                "scheduledTime"=> "2019-03-09T14:00:00.000",
                "estimatedTime"=> "2019-03-09T13:36:00.000",
                "actualTime"=> "2019-03-09T13:36:00.000",
                "estimatedRunway"=> "2019-03-09T13:29:00.000",
                "actualRunway"=> "2019-03-09T13:29:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "4341",
                "iataNumber"=> "EY4341",
                "icaoNumber"=> "ETD4341"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "33",
                    "iataNumber"=> "S733",
                    "icaoNumber"=> "SBI33"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "51",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:04:00.000",
                "actualTime"=> "2019-03-09T11:04:00.000",
                "estimatedRunway"=> "2019-03-09T11:21:00.000",
                "actualRunway"=> "2019-03-09T11:21:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KUF",
                "icaoCode"=> "UWWW",
                "scheduledTime"=> "2019-03-09T14:00:00.000",
                "estimatedTime"=> "2019-03-09T13:36:00.000",
                "actualTime"=> "2019-03-09T13:36:00.000",
                "estimatedRunway"=> "2019-03-09T13:29:00.000",
                "actualRunway"=> "2019-03-09T13:29:00.000"
            },
            "airline"=> {
                "name"=> "El Al",
                "iataCode"=> "LY",
                "icaoCode"=> "ELY"
            },
            "flight"=> {
                "number"=> "8933",
                "iataNumber"=> "LY8933",
                "icaoNumber"=> "ELY8933"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "33",
                    "iataNumber"=> "S733",
                    "icaoNumber"=> "SBI33"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "51",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:04:00.000",
                "actualTime"=> "2019-03-09T11:04:00.000",
                "estimatedRunway"=> "2019-03-09T11:21:00.000",
                "actualRunway"=> "2019-03-09T11:21:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KUF",
                "icaoCode"=> "UWWW",
                "scheduledTime"=> "2019-03-09T14:00:00.000",
                "estimatedTime"=> "2019-03-09T13:36:00.000",
                "actualTime"=> "2019-03-09T13:36:00.000",
                "estimatedRunway"=> "2019-03-09T13:29:00.000",
                "actualRunway"=> "2019-03-09T13:29:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5658",
                "iataNumber"=> "QR5658",
                "icaoNumber"=> "QTR5658"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "33",
                    "iataNumber"=> "S733",
                    "icaoNumber"=> "SBI33"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "51",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:04:00.000",
                "actualTime"=> "2019-03-09T11:04:00.000",
                "estimatedRunway"=> "2019-03-09T11:21:00.000",
                "actualRunway"=> "2019-03-09T11:21:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KUF",
                "icaoCode"=> "UWWW",
                "scheduledTime"=> "2019-03-09T14:00:00.000",
                "estimatedTime"=> "2019-03-09T13:36:00.000",
                "actualTime"=> "2019-03-09T13:36:00.000",
                "estimatedRunway"=> "2019-03-09T13:29:00.000",
                "actualRunway"=> "2019-03-09T13:29:00.000"
            },
            "airline"=> {
                "name"=> "Singapore Airlines",
                "iataCode"=> "SQ",
                "icaoCode"=> "SIA"
            },
            "flight"=> {
                "number"=> "1917",
                "iataNumber"=> "SQ1917",
                "icaoNumber"=> "SIA1917"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "33",
                    "iataNumber"=> "S733",
                    "icaoNumber"=> "SBI33"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "51",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:04:00.000",
                "actualTime"=> "2019-03-09T11:04:00.000",
                "estimatedRunway"=> "2019-03-09T11:21:00.000",
                "actualRunway"=> "2019-03-09T11:21:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KUF",
                "icaoCode"=> "UWWW",
                "scheduledTime"=> "2019-03-09T14:00:00.000",
                "estimatedTime"=> "2019-03-09T13:36:00.000",
                "actualTime"=> "2019-03-09T13:36:00.000",
                "estimatedRunway"=> "2019-03-09T13:29:00.000",
                "actualRunway"=> "2019-03-09T13:29:00.000"
            },
            "airline"=> {
                "name"=> "TAP Portugal",
                "iataCode"=> "TP",
                "icaoCode"=> "TAP"
            },
            "flight"=> {
                "number"=> "8146",
                "iataNumber"=> "TP8146",
                "icaoNumber"=> "TAP8146"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "33",
                    "iataNumber"=> "S733",
                    "icaoNumber"=> "SBI33"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "51",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:04:00.000",
                "actualTime"=> "2019-03-09T11:04:00.000",
                "estimatedRunway"=> "2019-03-09T11:21:00.000",
                "actualRunway"=> "2019-03-09T11:21:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KUF",
                "icaoCode"=> "UWWW",
                "scheduledTime"=> "2019-03-09T14:00:00.000",
                "estimatedTime"=> "2019-03-09T13:36:00.000",
                "actualTime"=> "2019-03-09T13:36:00.000",
                "estimatedRunway"=> "2019-03-09T13:29:00.000",
                "actualRunway"=> "2019-03-09T13:29:00.000"
            },
            "airline"=> {
                "name"=> "Aigle Azur",
                "iataCode"=> "ZI",
                "icaoCode"=> "AAF"
            },
            "flight"=> {
                "number"=> "1064",
                "iataNumber"=> "ZI1064",
                "icaoNumber"=> "AAF1064"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "33",
                    "iataNumber"=> "S733",
                    "icaoNumber"=> "SBI33"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "51",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:04:00.000",
                "actualTime"=> "2019-03-09T11:04:00.000",
                "estimatedRunway"=> "2019-03-09T11:21:00.000",
                "actualRunway"=> "2019-03-09T11:21:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KUF",
                "icaoCode"=> "UWWW",
                "scheduledTime"=> "2019-03-09T14:00:00.000",
                "estimatedTime"=> "2019-03-09T13:36:00.000",
                "actualTime"=> "2019-03-09T13:36:00.000",
                "estimatedRunway"=> "2019-03-09T13:29:00.000",
                "actualRunway"=> "2019-03-09T13:29:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "33",
                "iataNumber"=> "S733",
                "icaoNumber"=> "SBI33"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "54",
                "scheduledTime"=> "2019-03-09T11:05:00.000",
                "estimatedRunway"=> "2019-03-09T11:07:00.000",
                "actualRunway"=> "2019-03-09T11:07:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T13:25:00.000",
                "estimatedTime"=> "2019-03-09T13:12:00.000",
                "actualTime"=> "2019-03-09T13:12:00.000",
                "estimatedRunway"=> "2019-03-09T13:11:00.000",
                "actualRunway"=> "2019-03-09T13:11:00.000"
            },
            "airline"=> {
                "name"=> "Alrosa Air",
                "iataCode"=> "6R",
                "icaoCode"=> "DRU"
            },
            "flight"=> {
                "number"=> "533",
                "iataNumber"=> "6R533",
                "icaoNumber"=> "DRU533"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "53",
                "scheduledTime"=> "2019-03-09T11:05:00.000",
                "estimatedTime"=> "2019-03-09T11:05:00.000",
                "estimatedRunway"=> "2019-03-09T11:16:00.000",
                "actualRunway"=> "2019-03-09T11:16:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T13:20:00.000",
                "estimatedTime"=> "2019-03-09T13:19:00.000",
                "actualTime"=> "2019-03-09T13:19:00.000",
                "estimatedRunway"=> "2019-03-09T13:16:00.000",
                "actualRunway"=> "2019-03-09T13:16:00.000"
            },
            "airline"=> {
                "name"=> "Red Wings",
                "iataCode"=> "WZ",
                "icaoCode"=> "RWZ"
            },
            "flight"=> {
                "number"=> "125",
                "iataNumber"=> "WZ125",
                "icaoNumber"=> "RWZ125"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:08:00.000",
                "actualTime"=> "2019-03-09T11:08:00.000",
                "estimatedRunway"=> "2019-03-09T11:23:00.000",
                "actualRunway"=> "2019-03-09T11:23:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OVB",
                "icaoCode"=> "UNNT",
                "terminal"=> "A",
                "baggage"=> "1",
                "scheduledTime"=> "2019-03-09T19:15:00.000",
                "estimatedTime"=> "2019-03-09T18:58:00.000",
                "estimatedRunway"=> "2019-03-09T18:52:00.000"
            },
            "airline"=> {
                "name"=> "Aegean Airlines",
                "iataCode"=> "A3",
                "icaoCode"=> "AEE"
            },
            "flight"=> {
                "number"=> "3520",
                "iataNumber"=> "A33520",
                "icaoNumber"=> "AEE3520"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "179",
                    "iataNumber"=> "GH179",
                    "icaoNumber"=> "GLP179"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:08:00.000",
                "actualTime"=> "2019-03-09T11:08:00.000",
                "estimatedRunway"=> "2019-03-09T11:23:00.000",
                "actualRunway"=> "2019-03-09T11:23:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OVB",
                "icaoCode"=> "UNNT",
                "terminal"=> "A",
                "baggage"=> "1",
                "scheduledTime"=> "2019-03-09T19:15:00.000",
                "estimatedTime"=> "2019-03-09T18:58:00.000",
                "estimatedRunway"=> "2019-03-09T18:52:00.000"
            },
            "airline"=> {
                "name"=> "Royal Air Maroc",
                "iataCode"=> "AT",
                "icaoCode"=> "RAM"
            },
            "flight"=> {
                "number"=> "9009",
                "iataNumber"=> "AT9009",
                "icaoNumber"=> "RAM9009"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "179",
                    "iataNumber"=> "GH179",
                    "icaoNumber"=> "GLP179"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:08:00.000",
                "actualTime"=> "2019-03-09T11:08:00.000",
                "estimatedRunway"=> "2019-03-09T11:23:00.000",
                "actualRunway"=> "2019-03-09T11:23:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OVB",
                "icaoCode"=> "UNNT",
                "terminal"=> "A",
                "baggage"=> "1",
                "scheduledTime"=> "2019-03-09T19:15:00.000",
                "estimatedTime"=> "2019-03-09T18:58:00.000",
                "estimatedRunway"=> "2019-03-09T18:52:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7885",
                "iataNumber"=> "EK7885",
                "icaoNumber"=> "UAE7885"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "179",
                    "iataNumber"=> "GH179",
                    "icaoNumber"=> "GLP179"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:08:00.000",
                "actualTime"=> "2019-03-09T11:08:00.000",
                "estimatedRunway"=> "2019-03-09T11:23:00.000",
                "actualRunway"=> "2019-03-09T11:23:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OVB",
                "icaoCode"=> "UNNT",
                "terminal"=> "A",
                "baggage"=> "1",
                "scheduledTime"=> "2019-03-09T19:15:00.000",
                "estimatedTime"=> "2019-03-09T18:58:00.000",
                "estimatedRunway"=> "2019-03-09T18:52:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "4331",
                "iataNumber"=> "EY4331",
                "icaoNumber"=> "ETD4331"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "179",
                    "iataNumber"=> "GH179",
                    "icaoNumber"=> "GLP179"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:08:00.000",
                "actualTime"=> "2019-03-09T11:08:00.000",
                "estimatedRunway"=> "2019-03-09T11:23:00.000",
                "actualRunway"=> "2019-03-09T11:23:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OVB",
                "icaoCode"=> "UNNT",
                "terminal"=> "A",
                "baggage"=> "1",
                "scheduledTime"=> "2019-03-09T19:15:00.000",
                "estimatedTime"=> "2019-03-09T18:58:00.000",
                "estimatedRunway"=> "2019-03-09T18:52:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5664",
                "iataNumber"=> "QR5664",
                "icaoNumber"=> "QTR5664"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "179",
                    "iataNumber"=> "GH179",
                    "icaoNumber"=> "GLP179"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:08:00.000",
                "actualTime"=> "2019-03-09T11:08:00.000",
                "estimatedRunway"=> "2019-03-09T11:23:00.000",
                "actualRunway"=> "2019-03-09T11:23:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OVB",
                "icaoCode"=> "UNNT",
                "terminal"=> "A",
                "baggage"=> "1",
                "scheduledTime"=> "2019-03-09T19:15:00.000",
                "estimatedTime"=> "2019-03-09T18:58:00.000",
                "estimatedRunway"=> "2019-03-09T18:52:00.000"
            },
            "airline"=> {
                "name"=> "Singapore Airlines",
                "iataCode"=> "SQ",
                "icaoCode"=> "SIA"
            },
            "flight"=> {
                "number"=> "1949",
                "iataNumber"=> "SQ1949",
                "icaoNumber"=> "SIA1949"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "179",
                    "iataNumber"=> "GH179",
                    "icaoNumber"=> "GLP179"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:08:00.000",
                "actualTime"=> "2019-03-09T11:08:00.000",
                "estimatedRunway"=> "2019-03-09T11:23:00.000",
                "actualRunway"=> "2019-03-09T11:23:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OVB",
                "icaoCode"=> "UNNT",
                "terminal"=> "A",
                "baggage"=> "1",
                "scheduledTime"=> "2019-03-09T19:15:00.000",
                "estimatedTime"=> "2019-03-09T18:58:00.000",
                "estimatedRunway"=> "2019-03-09T18:52:00.000"
            },
            "airline"=> {
                "name"=> "TAP Portugal",
                "iataCode"=> "TP",
                "icaoCode"=> "TAP"
            },
            "flight"=> {
                "number"=> "8155",
                "iataNumber"=> "TP8155",
                "icaoNumber"=> "TAP8155"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "179",
                    "iataNumber"=> "GH179",
                    "icaoNumber"=> "GLP179"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:08:00.000",
                "actualTime"=> "2019-03-09T11:08:00.000",
                "estimatedRunway"=> "2019-03-09T11:23:00.000",
                "actualRunway"=> "2019-03-09T11:23:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OVB",
                "icaoCode"=> "UNNT",
                "terminal"=> "A",
                "baggage"=> "1",
                "scheduledTime"=> "2019-03-09T19:15:00.000",
                "estimatedTime"=> "2019-03-09T18:58:00.000",
                "estimatedRunway"=> "2019-03-09T18:52:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "179",
                "iataNumber"=> "S7179",
                "icaoNumber"=> "SBI179"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "179",
                    "iataNumber"=> "GH179",
                    "icaoNumber"=> "GLP179"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T11:10:00.000",
                "estimatedTime"=> "2019-03-09T11:08:00.000",
                "actualTime"=> "2019-03-09T11:08:00.000",
                "estimatedRunway"=> "2019-03-09T11:23:00.000",
                "actualRunway"=> "2019-03-09T11:23:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OVB",
                "icaoCode"=> "UNNT",
                "terminal"=> "A",
                "baggage"=> "1",
                "scheduledTime"=> "2019-03-09T19:15:00.000",
                "estimatedTime"=> "2019-03-09T18:58:00.000",
                "estimatedRunway"=> "2019-03-09T18:52:00.000"
            },
            "airline"=> {
                "name"=> "Globus",
                "iataCode"=> "GH",
                "icaoCode"=> "GLP"
            },
            "flight"=> {
                "number"=> "179",
                "iataNumber"=> "GH179",
                "icaoNumber"=> "GLP179"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "22",
                "delay": 11,
                "scheduledTime"=> "2019-03-09T11:00:00.000",
                "estimatedTime"=> "2019-03-09T11:11:00.000",
                "actualTime"=> "2019-03-09T11:11:00.000",
                "estimatedRunway"=> "2019-03-09T11:25:00.000",
                "actualRunway"=> "2019-03-09T11:25:00.000"
            },
            "arrival"=> {
                "iataCode"=> "BUS",
                "icaoCode"=> "UGSB",
                "delay": 4,
                "scheduledTime"=> "2019-03-09T14:45:00.000",
                "estimatedTime"=> "2019-03-09T14:49:00.000",
                "actualTime"=> "2019-03-09T14:49:00.000",
                "estimatedRunway"=> "2019-03-09T14:34:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "983",
                "iataNumber"=> "S7983",
                "icaoNumber"=> "SBI983"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "19",
                "delay": 11,
                "scheduledTime"=> "2019-03-09T11:00:00.000",
                "estimatedTime"=> "2019-03-09T11:11:00.000",
                "actualTime"=> "2019-03-09T11:11:00.000",
                "estimatedRunway"=> "2019-03-09T11:26:00.000",
                "actualRunway"=> "2019-03-09T11:26:00.000"
            },
            "arrival"=> {
                "iataCode"=> "FCO",
                "icaoCode"=> "LIRF",
                "terminal"=> "3",
                "delay": 18,
                "scheduledTime"=> "2019-03-09T12:55:00.000",
                "estimatedTime"=> "2019-03-09T13:13:00.000",
                "estimatedRunway"=> "2019-03-09T13:06:00.000"
            },
            "airline"=> {
                "name"=> "Air Italy",
                "iataCode"=> "IG",
                "icaoCode"=> "ISS"
            },
            "flight"=> {
                "number"=> "9545",
                "iataNumber"=> "IG9545",
                "icaoNumber"=> "ISS9545"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "625",
                    "iataNumber"=> "S7625",
                    "icaoNumber"=> "SBI625"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "19",
                "delay": 11,
                "scheduledTime"=> "2019-03-09T11:00:00.000",
                "estimatedTime"=> "2019-03-09T11:11:00.000",
                "actualTime"=> "2019-03-09T11:11:00.000",
                "estimatedRunway"=> "2019-03-09T11:26:00.000",
                "actualRunway"=> "2019-03-09T11:26:00.000"
            },
            "arrival"=> {
                "iataCode"=> "FCO",
                "icaoCode"=> "LIRF",
                "terminal"=> "3",
                "delay": 18,
                "scheduledTime"=> "2019-03-09T12:55:00.000",
                "estimatedTime"=> "2019-03-09T13:13:00.000",
                "estimatedRunway"=> "2019-03-09T13:06:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "625",
                "iataNumber"=> "S7625",
                "icaoNumber"=> "SBI625"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "21",
                "delay": 50,
                "scheduledTime"=> "2019-03-09T10:25:00.000",
                "estimatedTime"=> "2019-03-09T11:15:00.000",
                "actualTime"=> "2019-03-09T11:15:00.000",
                "estimatedRunway"=> "2019-03-09T11:29:00.000",
                "actualRunway"=> "2019-03-09T11:29:00.000"
            },
            "arrival"=> {
                "iataCode"=> "VCE",
                "icaoCode"=> "LIPZ",
                "delay": 50,
                "scheduledTime"=> "2019-03-09T11:50:00.000",
                "estimatedTime"=> "2019-03-09T12:40:00.000",
                "estimatedRunway"=> "2019-03-09T12:37:00.000"
            },
            "airline"=> {
                "name"=> "Ural Airlines",
                "iataCode"=> "U6",
                "icaoCode"=> "SVR"
            },
            "flight"=> {
                "number"=> "877",
                "iataNumber"=> "U6877",
                "icaoNumber"=> "SVR877"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "17",
                "scheduledTime"=> "2019-03-09T11:30:00.000",
                "estimatedTime"=> "2019-03-09T11:28:00.000",
                "actualTime"=> "2019-03-09T11:28:00.000",
                "estimatedRunway"=> "2019-03-09T11:36:00.000",
                "actualRunway"=> "2019-03-09T11:36:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MUC",
                "icaoCode"=> "EDDM",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T12:45:00.000",
                "estimatedTime"=> "2019-03-09T12:39:00.000",
                "estimatedRunway"=> "2019-03-09T12:33:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "897",
                "iataNumber"=> "S7897",
                "icaoNumber"=> "SBI897"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "7",
                "scheduledTime"=> "2019-03-09T11:30:00.000",
                "estimatedRunway"=> "2019-03-09T11:40:00.000",
                "actualRunway"=> "2019-03-09T11:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OSS",
                "icaoCode"=> "UAFO",
                "scheduledTime"=> "2019-03-09T18:50:00.000"
            },
            "airline"=> {
                "name"=> "Avia Traffic Company",
                "iataCode"=> "YK",
                "icaoCode"=> "AVJ"
            },
            "flight"=> {
                "number"=> "966",
                "iataNumber"=> "YK966",
                "icaoNumber"=> "AVJ966"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "22",
                "delay": 7,
                "scheduledTime"=> "2019-03-09T11:25:00.000",
                "estimatedTime"=> "2019-03-09T11:32:00.000",
                "actualTime"=> "2019-03-09T11:32:00.000",
                "estimatedRunway"=> "2019-03-09T11:46:00.000",
                "actualRunway"=> "2019-03-09T11:46:00.000"
            },
            "arrival"=> {
                "iataCode"=> "PFO",
                "icaoCode"=> "LCPH",
                "delay": 2,
                "scheduledTime"=> "2019-03-09T14:25:00.000",
                "estimatedTime"=> "2019-03-09T14:27:00.000",
                "estimatedRunway"=> "2019-03-09T14:25:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "601",
                "iataNumber"=> "S7601",
                "icaoNumber"=> "SBI601"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "601",
                    "iataNumber"=> "GH601",
                    "icaoNumber"=> "GLP601"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "22",
                "delay": 7,
                "scheduledTime"=> "2019-03-09T11:25:00.000",
                "estimatedTime"=> "2019-03-09T11:32:00.000",
                "actualTime"=> "2019-03-09T11:32:00.000",
                "estimatedRunway"=> "2019-03-09T11:46:00.000",
                "actualRunway"=> "2019-03-09T11:46:00.000"
            },
            "arrival"=> {
                "iataCode"=> "PFO",
                "icaoCode"=> "LCPH",
                "delay": 2,
                "scheduledTime"=> "2019-03-09T14:25:00.000",
                "estimatedTime"=> "2019-03-09T14:27:00.000",
                "estimatedRunway"=> "2019-03-09T14:25:00.000"
            },
            "airline"=> {
                "name"=> "Globus",
                "iataCode"=> "GH",
                "icaoCode"=> "GLP"
            },
            "flight"=> {
                "number"=> "601",
                "iataNumber"=> "GH601",
                "icaoNumber"=> "GLP601"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "43",
                "scheduledTime"=> "2019-03-09T11:55:00.000",
                "estimatedTime"=> "2019-03-09T11:51:00.000",
                "actualTime"=> "2019-03-09T11:51:00.000",
                "estimatedRunway"=> "2019-03-09T12:04:00.000",
                "actualRunway"=> "2019-03-09T12:04:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KRR",
                "icaoCode"=> "URKK",
                "scheduledTime"=> "2019-03-09T14:20:00.000",
                "estimatedTime"=> "2019-03-09T13:49:00.000",
                "actualTime"=> "2019-03-09T13:49:00.000",
                "estimatedRunway"=> "2019-03-09T13:48:00.000",
                "actualRunway"=> "2019-03-09T13:48:00.000"
            },
            "airline"=> {
                "name"=> "Royal Air Maroc",
                "iataCode"=> "AT",
                "icaoCode"=> "RAM"
            },
            "flight"=> {
                "number"=> "9001",
                "iataNumber"=> "AT9001",
                "icaoNumber"=> "RAM9001"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1145",
                    "iataNumber"=> "GH1145",
                    "icaoNumber"=> "GLP1145"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "43",
                "scheduledTime"=> "2019-03-09T11:55:00.000",
                "estimatedTime"=> "2019-03-09T11:51:00.000",
                "actualTime"=> "2019-03-09T11:51:00.000",
                "estimatedRunway"=> "2019-03-09T12:04:00.000",
                "actualRunway"=> "2019-03-09T12:04:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KRR",
                "icaoCode"=> "URKK",
                "scheduledTime"=> "2019-03-09T14:20:00.000",
                "estimatedTime"=> "2019-03-09T13:49:00.000",
                "actualTime"=> "2019-03-09T13:49:00.000",
                "estimatedRunway"=> "2019-03-09T13:48:00.000",
                "actualRunway"=> "2019-03-09T13:48:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7909",
                "iataNumber"=> "EK7909",
                "icaoNumber"=> "UAE7909"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1145",
                    "iataNumber"=> "GH1145",
                    "icaoNumber"=> "GLP1145"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "43",
                "scheduledTime"=> "2019-03-09T11:55:00.000",
                "estimatedTime"=> "2019-03-09T11:51:00.000",
                "actualTime"=> "2019-03-09T11:51:00.000",
                "estimatedRunway"=> "2019-03-09T12:04:00.000",
                "actualRunway"=> "2019-03-09T12:04:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KRR",
                "icaoCode"=> "URKK",
                "scheduledTime"=> "2019-03-09T14:20:00.000",
                "estimatedTime"=> "2019-03-09T13:49:00.000",
                "actualTime"=> "2019-03-09T13:49:00.000",
                "estimatedRunway"=> "2019-03-09T13:48:00.000",
                "actualRunway"=> "2019-03-09T13:48:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "4323",
                "iataNumber"=> "EY4323",
                "icaoNumber"=> "ETD4323"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1145",
                    "iataNumber"=> "GH1145",
                    "icaoNumber"=> "GLP1145"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "43",
                "scheduledTime"=> "2019-03-09T11:55:00.000",
                "estimatedTime"=> "2019-03-09T11:51:00.000",
                "actualTime"=> "2019-03-09T11:51:00.000",
                "estimatedRunway"=> "2019-03-09T12:04:00.000",
                "actualRunway"=> "2019-03-09T12:04:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KRR",
                "icaoCode"=> "URKK",
                "scheduledTime"=> "2019-03-09T14:20:00.000",
                "estimatedTime"=> "2019-03-09T13:49:00.000",
                "actualTime"=> "2019-03-09T13:49:00.000",
                "estimatedRunway"=> "2019-03-09T13:48:00.000",
                "actualRunway"=> "2019-03-09T13:48:00.000"
            },
            "airline"=> {
                "name"=> "El Al",
                "iataCode"=> "LY",
                "icaoCode"=> "ELY"
            },
            "flight"=> {
                "number"=> "8905",
                "iataNumber"=> "LY8905",
                "icaoNumber"=> "ELY8905"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1145",
                    "iataNumber"=> "GH1145",
                    "icaoNumber"=> "GLP1145"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "43",
                "scheduledTime"=> "2019-03-09T11:55:00.000",
                "estimatedTime"=> "2019-03-09T11:51:00.000",
                "actualTime"=> "2019-03-09T11:51:00.000",
                "estimatedRunway"=> "2019-03-09T12:04:00.000",
                "actualRunway"=> "2019-03-09T12:04:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KRR",
                "icaoCode"=> "URKK",
                "scheduledTime"=> "2019-03-09T14:20:00.000",
                "estimatedTime"=> "2019-03-09T13:49:00.000",
                "actualTime"=> "2019-03-09T13:49:00.000",
                "estimatedRunway"=> "2019-03-09T13:48:00.000",
                "actualRunway"=> "2019-03-09T13:48:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5656",
                "iataNumber"=> "QR5656",
                "icaoNumber"=> "QTR5656"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1145",
                    "iataNumber"=> "GH1145",
                    "icaoNumber"=> "GLP1145"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "43",
                "scheduledTime"=> "2019-03-09T11:55:00.000",
                "estimatedTime"=> "2019-03-09T11:51:00.000",
                "actualTime"=> "2019-03-09T11:51:00.000",
                "estimatedRunway"=> "2019-03-09T12:04:00.000",
                "actualRunway"=> "2019-03-09T12:04:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KRR",
                "icaoCode"=> "URKK",
                "scheduledTime"=> "2019-03-09T14:20:00.000",
                "estimatedTime"=> "2019-03-09T13:49:00.000",
                "actualTime"=> "2019-03-09T13:49:00.000",
                "estimatedRunway"=> "2019-03-09T13:48:00.000",
                "actualRunway"=> "2019-03-09T13:48:00.000"
            },
            "airline"=> {
                "name"=> "Singapore Airlines",
                "iataCode"=> "SQ",
                "icaoCode"=> "SIA"
            },
            "flight"=> {
                "number"=> "1991",
                "iataNumber"=> "SQ1991",
                "icaoNumber"=> "SIA1991"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1145",
                    "iataNumber"=> "GH1145",
                    "icaoNumber"=> "GLP1145"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "43",
                "scheduledTime"=> "2019-03-09T11:55:00.000",
                "estimatedTime"=> "2019-03-09T11:51:00.000",
                "actualTime"=> "2019-03-09T11:51:00.000",
                "estimatedRunway"=> "2019-03-09T12:04:00.000",
                "actualRunway"=> "2019-03-09T12:04:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KRR",
                "icaoCode"=> "URKK",
                "scheduledTime"=> "2019-03-09T14:20:00.000",
                "estimatedTime"=> "2019-03-09T13:49:00.000",
                "actualTime"=> "2019-03-09T13:49:00.000",
                "estimatedRunway"=> "2019-03-09T13:48:00.000",
                "actualRunway"=> "2019-03-09T13:48:00.000"
            },
            "airline"=> {
                "name"=> "TAP Portugal",
                "iataCode"=> "TP",
                "icaoCode"=> "TAP"
            },
            "flight"=> {
                "number"=> "8160",
                "iataNumber"=> "TP8160",
                "icaoNumber"=> "TAP8160"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1145",
                    "iataNumber"=> "GH1145",
                    "icaoNumber"=> "GLP1145"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "43",
                "scheduledTime"=> "2019-03-09T11:55:00.000",
                "estimatedTime"=> "2019-03-09T11:51:00.000",
                "actualTime"=> "2019-03-09T11:51:00.000",
                "estimatedRunway"=> "2019-03-09T12:04:00.000",
                "actualRunway"=> "2019-03-09T12:04:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KRR",
                "icaoCode"=> "URKK",
                "scheduledTime"=> "2019-03-09T14:20:00.000",
                "estimatedTime"=> "2019-03-09T13:49:00.000",
                "actualTime"=> "2019-03-09T13:49:00.000",
                "estimatedRunway"=> "2019-03-09T13:48:00.000",
                "actualRunway"=> "2019-03-09T13:48:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "1145",
                "iataNumber"=> "S71145",
                "icaoNumber"=> "SBI1145"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1145",
                    "iataNumber"=> "GH1145",
                    "icaoNumber"=> "GLP1145"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "43",
                "scheduledTime"=> "2019-03-09T11:55:00.000",
                "estimatedTime"=> "2019-03-09T11:51:00.000",
                "actualTime"=> "2019-03-09T11:51:00.000",
                "estimatedRunway"=> "2019-03-09T12:04:00.000",
                "actualRunway"=> "2019-03-09T12:04:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KRR",
                "icaoCode"=> "URKK",
                "scheduledTime"=> "2019-03-09T14:20:00.000",
                "estimatedTime"=> "2019-03-09T13:49:00.000",
                "actualTime"=> "2019-03-09T13:49:00.000",
                "estimatedRunway"=> "2019-03-09T13:48:00.000",
                "actualRunway"=> "2019-03-09T13:48:00.000"
            },
            "airline"=> {
                "name"=> "Globus",
                "iataCode"=> "GH",
                "icaoCode"=> "GLP"
            },
            "flight"=> {
                "number"=> "1145",
                "iataNumber"=> "GH1145",
                "icaoNumber"=> "GLP1145"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "52",
                "scheduledTime"=> "2019-03-09T12:00:00.000",
                "estimatedTime"=> "2019-03-09T11:57:00.000",
                "actualTime"=> "2019-03-09T11:57:00.000",
                "estimatedRunway"=> "2019-03-09T12:08:00.000",
                "actualRunway"=> "2019-03-09T12:08:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MRV",
                "icaoCode"=> "URMM",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T14:05:00.000",
                "estimatedTime"=> "2019-03-09T14:05:00.000",
                "estimatedRunway"=> "2019-03-09T13:55:00.000"
            },
            "airline"=> {
                "name"=> "Belavia",
                "iataCode"=> "B2",
                "icaoCode"=> "BRU"
            },
            "flight"=> {
                "number"=> "453",
                "iataNumber"=> "B2453",
                "icaoNumber"=> "BRU453"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Ural Airlines",
                    "iataCode"=> "U6",
                    "icaoCode"=> "SVR"
                },
                "flight"=> {
                    "number"=> "153",
                    "iataNumber"=> "U6153",
                    "icaoNumber"=> "SVR153"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "52",
                "scheduledTime"=> "2019-03-09T12:00:00.000",
                "estimatedTime"=> "2019-03-09T11:57:00.000",
                "actualTime"=> "2019-03-09T11:57:00.000",
                "estimatedRunway"=> "2019-03-09T12:08:00.000",
                "actualRunway"=> "2019-03-09T12:08:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MRV",
                "icaoCode"=> "URMM",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T14:05:00.000",
                "estimatedTime"=> "2019-03-09T14:05:00.000",
                "estimatedRunway"=> "2019-03-09T13:55:00.000"
            },
            "airline"=> {
                "name"=> "Ural Airlines",
                "iataCode"=> "U6",
                "icaoCode"=> "SVR"
            },
            "flight"=> {
                "number"=> "153",
                "iataNumber"=> "U6153",
                "icaoNumber"=> "SVR153"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "delay": 4,
                "scheduledTime"=> "2019-03-09T11:55:00.000",
                "estimatedTime"=> "2019-03-09T11:59:00.000",
                "actualTime"=> "2019-03-09T11:59:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T14:25:00.000",
                "estimatedTime"=> "2019-03-09T14:25:00.000"
            },
            "airline"=> {
                "name"=> "Ural Airlines",
                "iataCode"=> "U6",
                "icaoCode"=> "SVR"
            },
            "flight"=> {
                "number"=> "457",
                "iataNumber"=> "U6457",
                "icaoNumber"=> "SVR457"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "14",
                "scheduledTime"=> "2019-03-09T12:00:00.000",
                "estimatedRunway"=> "2019-03-09T12:29:00.000",
                "actualRunway"=> "2019-03-09T12:29:00.000"
            },
            "arrival"=> {
                "iataCode"=> "DYU",
                "icaoCode"=> "UTDD",
                "scheduledTime"=> "2019-03-09T18:00:00.000"
            },
            "airline"=> {
                "name"=> "Somon Air",
                "iataCode"=> "SZ",
                "icaoCode"=> "SMR"
            },
            "flight"=> {
                "number"=> "202",
                "iataNumber"=> "SZ202",
                "icaoNumber"=> "SMR202"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "10",
                "scheduledTime"=> "2019-03-09T12:00:00.000",
                "estimatedTime"=> "2019-03-09T12:00:00.000",
                "estimatedRunway"=> "2019-03-09T12:06:00.000",
                "actualRunway"=> "2019-03-09T12:06:00.000"
            },
            "arrival"=> {
                "iataCode"=> "BEG",
                "icaoCode"=> "LYBE",
                "terminal"=> "2",
                "delay": 1,
                "scheduledTime"=> "2019-03-09T13:00:00.000",
                "estimatedTime"=> "2019-03-09T13:01:00.000",
                "estimatedRunway"=> "2019-03-09T12:55:00.000"
            },
            "airline"=> {
                "name"=> "Red Wings",
                "iataCode"=> "WZ",
                "icaoCode"=> "RWZ"
            },
            "flight"=> {
                "number"=> "537",
                "iataNumber"=> "WZ537",
                "icaoNumber"=> "RWZ537"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "42",
                "scheduledTime"=> "2019-03-09T12:05:00.000",
                "estimatedTime"=> "2019-03-09T12:00:00.000",
                "actualTime"=> "2019-03-09T12:00:00.000",
                "estimatedRunway"=> "2019-03-09T12:15:00.000",
                "actualRunway"=> "2019-03-09T12:15:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T14:25:00.000",
                "estimatedTime"=> "2019-03-09T14:25:00.000",
                "estimatedRunway"=> "2019-03-09T14:14:00.000"
            },
            "airline"=> {
                "name"=> "Ural Airlines",
                "iataCode"=> "U6",
                "icaoCode"=> "SVR"
            },
            "flight"=> {
                "number"=> "279",
                "iataNumber"=> "U6279",
                "icaoNumber"=> "SVR279"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "47",
                "scheduledTime"=> "2019-03-09T12:05:00.000",
                "estimatedTime"=> "2019-03-09T12:05:00.000",
                "actualTime"=> "2019-03-09T12:05:00.000",
                "estimatedRunway"=> "2019-03-09T12:14:00.000",
                "actualRunway"=> "2019-03-09T12:14:00.000"
            },
            "arrival"=> {
                "iataCode"=> "UFA",
                "icaoCode"=> "UWUU",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T16:10:00.000",
                "estimatedTime"=> "2019-03-09T15:51:00.000",
                "actualTime"=> "2019-03-09T15:51:00.000",
                "estimatedRunway"=> "2019-03-09T15:47:00.000",
                "actualRunway"=> "2019-03-09T15:47:00.000"
            },
            "airline"=> {
                "name"=> "Aegean Airlines",
                "iataCode"=> "A3",
                "icaoCode"=> "AEE"
            },
            "flight"=> {
                "number"=> "3578",
                "iataNumber"=> "A33578",
                "icaoNumber"=> "AEE3578"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "91",
                    "iataNumber"=> "S791",
                    "icaoNumber"=> "SBI91"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "47",
                "scheduledTime"=> "2019-03-09T12:05:00.000",
                "estimatedTime"=> "2019-03-09T12:05:00.000",
                "actualTime"=> "2019-03-09T12:05:00.000",
                "estimatedRunway"=> "2019-03-09T12:14:00.000",
                "actualRunway"=> "2019-03-09T12:14:00.000"
            },
            "arrival"=> {
                "iataCode"=> "UFA",
                "icaoCode"=> "UWUU",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T16:10:00.000",
                "estimatedTime"=> "2019-03-09T15:51:00.000",
                "actualTime"=> "2019-03-09T15:51:00.000",
                "estimatedRunway"=> "2019-03-09T15:47:00.000",
                "actualRunway"=> "2019-03-09T15:47:00.000"
            },
            "airline"=> {
                "name"=> "Royal Air Maroc",
                "iataCode"=> "AT",
                "icaoCode"=> "RAM"
            },
            "flight"=> {
                "number"=> "9033",
                "iataNumber"=> "AT9033",
                "icaoNumber"=> "RAM9033"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "91",
                    "iataNumber"=> "S791",
                    "icaoNumber"=> "SBI91"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "47",
                "scheduledTime"=> "2019-03-09T12:05:00.000",
                "estimatedTime"=> "2019-03-09T12:05:00.000",
                "actualTime"=> "2019-03-09T12:05:00.000",
                "estimatedRunway"=> "2019-03-09T12:14:00.000",
                "actualRunway"=> "2019-03-09T12:14:00.000"
            },
            "arrival"=> {
                "iataCode"=> "UFA",
                "icaoCode"=> "UWUU",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T16:10:00.000",
                "estimatedTime"=> "2019-03-09T15:51:00.000",
                "actualTime"=> "2019-03-09T15:51:00.000",
                "estimatedRunway"=> "2019-03-09T15:47:00.000",
                "actualRunway"=> "2019-03-09T15:47:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7915",
                "iataNumber"=> "EK7915",
                "icaoNumber"=> "UAE7915"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "91",
                    "iataNumber"=> "S791",
                    "icaoNumber"=> "SBI91"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "47",
                "scheduledTime"=> "2019-03-09T12:05:00.000",
                "estimatedTime"=> "2019-03-09T12:05:00.000",
                "actualTime"=> "2019-03-09T12:05:00.000",
                "estimatedRunway"=> "2019-03-09T12:14:00.000",
                "actualRunway"=> "2019-03-09T12:14:00.000"
            },
            "arrival"=> {
                "iataCode"=> "UFA",
                "icaoCode"=> "UWUU",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T16:10:00.000",
                "estimatedTime"=> "2019-03-09T15:51:00.000",
                "actualTime"=> "2019-03-09T15:51:00.000",
                "estimatedRunway"=> "2019-03-09T15:47:00.000",
                "actualRunway"=> "2019-03-09T15:47:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "4303",
                "iataNumber"=> "EY4303",
                "icaoNumber"=> "ETD4303"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "91",
                    "iataNumber"=> "S791",
                    "icaoNumber"=> "SBI91"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "47",
                "scheduledTime"=> "2019-03-09T12:05:00.000",
                "estimatedTime"=> "2019-03-09T12:05:00.000",
                "actualTime"=> "2019-03-09T12:05:00.000",
                "estimatedRunway"=> "2019-03-09T12:14:00.000",
                "actualRunway"=> "2019-03-09T12:14:00.000"
            },
            "arrival"=> {
                "iataCode"=> "UFA",
                "icaoCode"=> "UWUU",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T16:10:00.000",
                "estimatedTime"=> "2019-03-09T15:51:00.000",
                "actualTime"=> "2019-03-09T15:51:00.000",
                "estimatedRunway"=> "2019-03-09T15:47:00.000",
                "actualRunway"=> "2019-03-09T15:47:00.000"
            },
            "airline"=> {
                "name"=> "El Al",
                "iataCode"=> "LY",
                "icaoCode"=> "ELY"
            },
            "flight"=> {
                "number"=> "8941",
                "iataNumber"=> "LY8941",
                "icaoNumber"=> "ELY8941"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "91",
                    "iataNumber"=> "S791",
                    "icaoNumber"=> "SBI91"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "47",
                "scheduledTime"=> "2019-03-09T12:05:00.000",
                "estimatedTime"=> "2019-03-09T12:05:00.000",
                "actualTime"=> "2019-03-09T12:05:00.000",
                "estimatedRunway"=> "2019-03-09T12:14:00.000",
                "actualRunway"=> "2019-03-09T12:14:00.000"
            },
            "arrival"=> {
                "iataCode"=> "UFA",
                "icaoCode"=> "UWUU",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T16:10:00.000",
                "estimatedTime"=> "2019-03-09T15:51:00.000",
                "actualTime"=> "2019-03-09T15:51:00.000",
                "estimatedRunway"=> "2019-03-09T15:47:00.000",
                "actualRunway"=> "2019-03-09T15:47:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5674",
                "iataNumber"=> "QR5674",
                "icaoNumber"=> "QTR5674"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "91",
                    "iataNumber"=> "S791",
                    "icaoNumber"=> "SBI91"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "47",
                "scheduledTime"=> "2019-03-09T12:05:00.000",
                "estimatedTime"=> "2019-03-09T12:05:00.000",
                "actualTime"=> "2019-03-09T12:05:00.000",
                "estimatedRunway"=> "2019-03-09T12:14:00.000",
                "actualRunway"=> "2019-03-09T12:14:00.000"
            },
            "arrival"=> {
                "iataCode"=> "UFA",
                "icaoCode"=> "UWUU",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T16:10:00.000",
                "estimatedTime"=> "2019-03-09T15:51:00.000",
                "actualTime"=> "2019-03-09T15:51:00.000",
                "estimatedRunway"=> "2019-03-09T15:47:00.000",
                "actualRunway"=> "2019-03-09T15:47:00.000"
            },
            "airline"=> {
                "name"=> "Singapore Airlines",
                "iataCode"=> "SQ",
                "icaoCode"=> "SIA"
            },
            "flight"=> {
                "number"=> "1937",
                "iataNumber"=> "SQ1937",
                "icaoNumber"=> "SIA1937"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "91",
                    "iataNumber"=> "S791",
                    "icaoNumber"=> "SBI91"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "47",
                "scheduledTime"=> "2019-03-09T12:05:00.000",
                "estimatedTime"=> "2019-03-09T12:05:00.000",
                "actualTime"=> "2019-03-09T12:05:00.000",
                "estimatedRunway"=> "2019-03-09T12:14:00.000",
                "actualRunway"=> "2019-03-09T12:14:00.000"
            },
            "arrival"=> {
                "iataCode"=> "UFA",
                "icaoCode"=> "UWUU",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T16:10:00.000",
                "estimatedTime"=> "2019-03-09T15:51:00.000",
                "actualTime"=> "2019-03-09T15:51:00.000",
                "estimatedRunway"=> "2019-03-09T15:47:00.000",
                "actualRunway"=> "2019-03-09T15:47:00.000"
            },
            "airline"=> {
                "name"=> "TAP Portugal",
                "iataCode"=> "TP",
                "icaoCode"=> "TAP"
            },
            "flight"=> {
                "number"=> "8150",
                "iataNumber"=> "TP8150",
                "icaoNumber"=> "TAP8150"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "91",
                    "iataNumber"=> "S791",
                    "icaoNumber"=> "SBI91"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "47",
                "scheduledTime"=> "2019-03-09T12:05:00.000",
                "estimatedTime"=> "2019-03-09T12:05:00.000",
                "actualTime"=> "2019-03-09T12:05:00.000",
                "estimatedRunway"=> "2019-03-09T12:14:00.000",
                "actualRunway"=> "2019-03-09T12:14:00.000"
            },
            "arrival"=> {
                "iataCode"=> "UFA",
                "icaoCode"=> "UWUU",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T16:10:00.000",
                "estimatedTime"=> "2019-03-09T15:51:00.000",
                "actualTime"=> "2019-03-09T15:51:00.000",
                "estimatedRunway"=> "2019-03-09T15:47:00.000",
                "actualRunway"=> "2019-03-09T15:47:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "91",
                "iataNumber"=> "S791",
                "icaoNumber"=> "SBI91"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "41",
                "scheduledTime"=> "2019-03-09T12:05:00.000",
                "estimatedTime"=> "2019-03-09T12:05:00.000",
                "actualTime"=> "2019-03-09T12:05:00.000",
                "estimatedRunway"=> "2019-03-09T12:17:00.000",
                "actualRunway"=> "2019-03-09T12:17:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KGD",
                "icaoCode"=> "UMKK",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-09T13:10:00.000",
                "estimatedTime"=> "2019-03-09T13:10:00.000",
                "estimatedRunway"=> "2019-03-09T13:06:00.000"
            },
            "airline"=> {
                "name"=> "Ural Airlines",
                "iataCode"=> "U6",
                "icaoCode"=> "SVR"
            },
            "flight"=> {
                "number"=> "627",
                "iataNumber"=> "U6627",
                "icaoNumber"=> "SVR627"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "56",
                "scheduledTime"=> "2019-03-09T12:10:00.000",
                "estimatedTime"=> "2019-03-09T12:10:00.000",
                "estimatedRunway"=> "2019-03-09T12:23:00.000",
                "actualRunway"=> "2019-03-09T12:23:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SIP",
                "icaoCode"=> "UKFF",
                "terminal"=> "1",
                "delay": 13,
                "scheduledTime"=> "2019-03-09T14:40:00.000",
                "estimatedTime"=> "2019-03-09T14:53:00.000",
                "estimatedRunway"=> "2019-03-09T14:05:00.000"
            },
            "airline"=> {
                "name"=> "Red Wings",
                "iataCode"=> "WZ",
                "icaoCode"=> "RWZ"
            },
            "flight"=> {
                "number"=> "307",
                "iataNumber"=> "WZ307",
                "icaoNumber"=> "RWZ307"
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "51",
                "scheduledTime"=> "2019-03-09T12:15:00.000",
                "estimatedTime"=> "2019-03-09T12:12:00.000",
                "actualTime"=> "2019-03-09T12:12:00.000",
                "estimatedRunway"=> "2019-03-09T12:27:00.000",
                "actualRunway"=> "2019-03-09T12:27:00.000"
            },
            "arrival"=> {
                "iataCode"=> "PEZ",
                "icaoCode"=> "UWPP",
                "scheduledTime"=> "2019-03-09T13:45:00.000",
                "estimatedTime"=> "2019-03-09T13:22:00.000",
                "actualTime"=> "2019-03-09T13:22:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7913",
                "iataNumber"=> "EK7913",
                "icaoNumber"=> "UAE7913"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "245",
                    "iataNumber"=> "S7245",
                    "icaoNumber"=> "SBI245"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "landed",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "51",
                "scheduledTime"=> "2019-03-09T12:15:00.000",
                "estimatedTime"=> "2019-03-09T12:12:00.000",
                "actualTime"=> "2019-03-09T12:12:00.000",
                "estimatedRunway"=> "2019-03-09T12:27:00.000",
                "actualRunway"=> "2019-03-09T12:27:00.000"
            },
            "arrival"=> {
                "iataCode"=> "PEZ",
                "icaoCode"=> "UWPP",
                "scheduledTime"=> "2019-03-09T13:45:00.000",
                "estimatedTime"=> "2019-03-09T13:22:00.000",
                "actualTime"=> "2019-03-09T13:22:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "245",
                "iataNumber"=> "S7245",
                "icaoNumber"=> "SBI245"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "20",
                "delay": 9,
                "scheduledTime"=> "2019-03-09T12:05:00.000",
                "estimatedTime"=> "2019-03-09T12:14:00.000",
                "actualTime"=> "2019-03-09T12:14:00.000",
                "estimatedRunway"=> "2019-03-09T12:31:00.000",
                "actualRunway"=> "2019-03-09T12:31:00.000"
            },
            "arrival"=> {
                "iataCode"=> "TIV",
                "icaoCode"=> "LYTV",
                "delay": 18,
                "scheduledTime"=> "2019-03-09T13:30:00.000",
                "estimatedTime"=> "2019-03-09T13:48:00.000",
                "estimatedRunway"=> "2019-03-09T13:42:00.000"
            },
            "airline"=> {
                "name"=> "Montenegro Airlines",
                "iataCode"=> "YM",
                "icaoCode"=> "MGX"
            },
            "flight"=> {
                "number"=> "4611",
                "iataNumber"=> "YM4611",
                "icaoNumber"=> "MGX4611"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "925",
                    "iataNumber"=> "GH925",
                    "icaoNumber"=> "GLP925"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "20",
                "delay": 9,
                "scheduledTime"=> "2019-03-09T12:05:00.000",
                "estimatedTime"=> "2019-03-09T12:14:00.000",
                "actualTime"=> "2019-03-09T12:14:00.000",
                "estimatedRunway"=> "2019-03-09T12:31:00.000",
                "actualRunway"=> "2019-03-09T12:31:00.000"
            },
            "arrival"=> {
                "iataCode"=> "TIV",
                "icaoCode"=> "LYTV",
                "delay": 18,
                "scheduledTime"=> "2019-03-09T13:30:00.000",
                "estimatedTime"=> "2019-03-09T13:48:00.000",
                "estimatedRunway"=> "2019-03-09T13:42:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "925",
                "iataNumber"=> "S7925",
                "icaoNumber"=> "SBI925"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "925",
                    "iataNumber"=> "GH925",
                    "icaoNumber"=> "GLP925"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "20",
                "delay": 9,
                "scheduledTime"=> "2019-03-09T12:05:00.000",
                "estimatedTime"=> "2019-03-09T12:14:00.000",
                "actualTime"=> "2019-03-09T12:14:00.000",
                "estimatedRunway"=> "2019-03-09T12:31:00.000",
                "actualRunway"=> "2019-03-09T12:31:00.000"
            },
            "arrival"=> {
                "iataCode"=> "TIV",
                "icaoCode"=> "LYTV",
                "delay": 18,
                "scheduledTime"=> "2019-03-09T13:30:00.000",
                "estimatedTime"=> "2019-03-09T13:48:00.000",
                "estimatedRunway"=> "2019-03-09T13:42:00.000"
            },
            "airline"=> {
                "name"=> "Globus",
                "iataCode"=> "GH",
                "icaoCode"=> "GLP"
            },
            "flight"=> {
                "number"=> "925",
                "iataNumber"=> "GH925",
                "icaoNumber"=> "GLP925"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "1",
                "scheduledTime"=> "2019-03-09T12:30:00.000",
                "estimatedRunway"=> "2019-03-09T12:55:00.000",
                "actualRunway"=> "2019-03-09T12:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AUH",
                "icaoCode"=> "OMAA",
                "terminal"=> "T3",
                "scheduledTime"=> "2019-03-09T18:55:00.000",
                "estimatedTime"=> "2019-03-09T18:40:00.000"
            },
            "airline"=> {
                "name"=> "Garuda Indonesia",
                "iataCode"=> "GA",
                "icaoCode"=> "GIA"
            },
            "flight"=> {
                "number"=> "9131",
                "iataNumber"=> "GA9131",
                "icaoNumber"=> "GIA9131"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Etihad Airways",
                    "iataCode"=> "EY",
                    "icaoCode"=> "ETD"
                },
                "flight"=> {
                    "number"=> "68",
                    "iataNumber"=> "EY68",
                    "icaoNumber"=> "ETD68"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "1",
                "scheduledTime"=> "2019-03-09T12:30:00.000",
                "estimatedRunway"=> "2019-03-09T12:55:00.000",
                "actualRunway"=> "2019-03-09T12:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AUH",
                "icaoCode"=> "OMAA",
                "terminal"=> "T3",
                "scheduledTime"=> "2019-03-09T18:55:00.000",
                "estimatedTime"=> "2019-03-09T18:40:00.000"
            },
            "airline"=> {
                "name"=> "Air Seychelles",
                "iataCode"=> "HM",
                "icaoCode"=> "SEY"
            },
            "flight"=> {
                "number"=> "5061",
                "iataNumber"=> "HM5061",
                "icaoNumber"=> "SEY5061"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Etihad Airways",
                    "iataCode"=> "EY",
                    "icaoCode"=> "ETD"
                },
                "flight"=> {
                    "number"=> "68",
                    "iataNumber"=> "EY68",
                    "icaoNumber"=> "ETD68"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "1",
                "scheduledTime"=> "2019-03-09T12:30:00.000",
                "estimatedRunway"=> "2019-03-09T12:55:00.000",
                "actualRunway"=> "2019-03-09T12:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AUH",
                "icaoCode"=> "OMAA",
                "terminal"=> "T3",
                "scheduledTime"=> "2019-03-09T18:55:00.000",
                "estimatedTime"=> "2019-03-09T18:40:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "4401",
                "iataNumber"=> "S74401",
                "icaoNumber"=> "SBI4401"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Etihad Airways",
                    "iataCode"=> "EY",
                    "icaoCode"=> "ETD"
                },
                "flight"=> {
                    "number"=> "68",
                    "iataNumber"=> "EY68",
                    "icaoNumber"=> "ETD68"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "1",
                "scheduledTime"=> "2019-03-09T12:30:00.000",
                "estimatedRunway"=> "2019-03-09T12:55:00.000",
                "actualRunway"=> "2019-03-09T12:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AUH",
                "icaoCode"=> "OMAA",
                "terminal"=> "T3",
                "scheduledTime"=> "2019-03-09T18:55:00.000",
                "estimatedTime"=> "2019-03-09T18:40:00.000"
            },
            "airline"=> {
                "name"=> "SriLankan Airlines",
                "iataCode"=> "UL",
                "icaoCode"=> "ALK"
            },
            "flight"=> {
                "number"=> "2368",
                "iataNumber"=> "UL2368",
                "icaoNumber"=> "ALK2368"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Etihad Airways",
                    "iataCode"=> "EY",
                    "icaoCode"=> "ETD"
                },
                "flight"=> {
                    "number"=> "68",
                    "iataNumber"=> "EY68",
                    "icaoNumber"=> "ETD68"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "1",
                "scheduledTime"=> "2019-03-09T12:30:00.000",
                "estimatedRunway"=> "2019-03-09T12:55:00.000",
                "actualRunway"=> "2019-03-09T12:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AUH",
                "icaoCode"=> "OMAA",
                "terminal"=> "T3",
                "scheduledTime"=> "2019-03-09T18:55:00.000",
                "estimatedTime"=> "2019-03-09T18:40:00.000"
            },
            "airline"=> {
                "name"=> "Virgin Australia",
                "iataCode"=> "VA",
                "icaoCode"=> "VOZ"
            },
            "flight"=> {
                "number"=> "7068",
                "iataNumber"=> "VA7068",
                "icaoNumber"=> "VOZ7068"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Etihad Airways",
                    "iataCode"=> "EY",
                    "icaoCode"=> "ETD"
                },
                "flight"=> {
                    "number"=> "68",
                    "iataNumber"=> "EY68",
                    "icaoNumber"=> "ETD68"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "1",
                "scheduledTime"=> "2019-03-09T12:30:00.000",
                "estimatedRunway"=> "2019-03-09T12:55:00.000",
                "actualRunway"=> "2019-03-09T12:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AUH",
                "icaoCode"=> "OMAA",
                "terminal"=> "T3",
                "scheduledTime"=> "2019-03-09T18:55:00.000",
                "estimatedTime"=> "2019-03-09T18:40:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "68",
                "iataNumber"=> "EY68",
                "icaoNumber"=> "ETD68"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "16",
                "delay": 1,
                "scheduledTime"=> "2019-03-09T12:30:00.000",
                "estimatedTime"=> "2019-03-09T12:31:00.000",
                "actualTime"=> "2019-03-09T12:31:00.000",
                "estimatedRunway"=> "2019-03-09T12:47:00.000",
                "actualRunway"=> "2019-03-09T12:47:00.000"
            },
            "arrival"=> {
                "iataCode"=> "EVN",
                "icaoCode"=> "UDYZ",
                "scheduledTime"=> "2019-03-09T16:20:00.000",
                "estimatedTime"=> "2019-03-09T16:16:00.000",
                "estimatedRunway"=> "2019-03-09T16:10:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "5129",
                "iataNumber"=> "EY5129",
                "icaoNumber"=> "ETD5129"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "905",
                    "iataNumber"=> "S7905",
                    "icaoNumber"=> "SBI905"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "16",
                "delay": 1,
                "scheduledTime"=> "2019-03-09T12:30:00.000",
                "estimatedTime"=> "2019-03-09T12:31:00.000",
                "actualTime"=> "2019-03-09T12:31:00.000",
                "estimatedRunway"=> "2019-03-09T12:47:00.000",
                "actualRunway"=> "2019-03-09T12:47:00.000"
            },
            "arrival"=> {
                "iataCode"=> "EVN",
                "icaoCode"=> "UDYZ",
                "scheduledTime"=> "2019-03-09T16:20:00.000",
                "estimatedTime"=> "2019-03-09T16:16:00.000",
                "estimatedRunway"=> "2019-03-09T16:10:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "905",
                "iataNumber"=> "S7905",
                "icaoNumber"=> "SBI905"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "22",
                "delay": 4,
                "scheduledTime"=> "2019-03-09T12:30:00.000",
                "estimatedTime"=> "2019-03-09T12:34:00.000",
                "actualTime"=> "2019-03-09T12:34:00.000",
                "estimatedRunway"=> "2019-03-09T12:49:00.000",
                "actualRunway"=> "2019-03-09T12:49:00.000"
            },
            "arrival"=> {
                "iataCode"=> "DUS",
                "icaoCode"=> "EDDL",
                "delay": 14,
                "scheduledTime"=> "2019-03-09T13:55:00.000",
                "estimatedTime"=> "2019-03-09T14:09:00.000",
                "estimatedRunway"=> "2019-03-09T13:55:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "991",
                "iataNumber"=> "S7991",
                "icaoNumber"=> "SBI991"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "991",
                    "iataNumber"=> "GH991",
                    "icaoNumber"=> "GLP991"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "22",
                "delay": 4,
                "scheduledTime"=> "2019-03-09T12:30:00.000",
                "estimatedTime"=> "2019-03-09T12:34:00.000",
                "actualTime"=> "2019-03-09T12:34:00.000",
                "estimatedRunway"=> "2019-03-09T12:49:00.000",
                "actualRunway"=> "2019-03-09T12:49:00.000"
            },
            "arrival"=> {
                "iataCode"=> "DUS",
                "icaoCode"=> "EDDL",
                "delay": 14,
                "scheduledTime"=> "2019-03-09T13:55:00.000",
                "estimatedTime"=> "2019-03-09T14:09:00.000",
                "estimatedRunway"=> "2019-03-09T13:55:00.000"
            },
            "airline"=> {
                "name"=> "Globus",
                "iataCode"=> "GH",
                "icaoCode"=> "GLP"
            },
            "flight"=> {
                "number"=> "991",
                "iataNumber"=> "GH991",
                "icaoNumber"=> "GLP991"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "32",
                "scheduledTime"=> "2019-03-09T12:45:00.000",
                "estimatedTime"=> "2019-03-09T12:37:00.000",
                "actualTime"=> "2019-03-09T12:37:00.000",
                "estimatedRunway"=> "2019-03-09T12:53:00.000",
                "actualRunway"=> "2019-03-09T12:53:00.000"
            },
            "arrival"=> {
                "iataCode"=> "EGO",
                "icaoCode"=> "UUOB",
                "scheduledTime"=> "2019-03-09T14:10:00.000",
                "estimatedTime"=> "2019-03-09T13:53:00.000",
                "estimatedRunway"=> "2019-03-09T13:51:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "225",
                "iataNumber"=> "S7225",
                "icaoNumber"=> "SBI225"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "34",
                "delay": 5,
                "scheduledTime"=> "2019-03-09T12:45:00.000",
                "estimatedTime"=> "2019-03-09T12:50:00.000",
                "actualTime"=> "2019-03-09T12:50:00.000",
                "estimatedRunway"=> "2019-03-09T13:06:00.000",
                "actualRunway"=> "2019-03-09T13:06:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AAQ",
                "icaoCode"=> "URKA",
                "delay": 3,
                "scheduledTime"=> "2019-03-09T15:05:00.000",
                "estimatedTime"=> "2019-03-09T15:08:00.000",
                "estimatedRunway"=> "2019-03-09T15:02:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7854",
                "iataNumber"=> "EK7854",
                "icaoNumber"=> "UAE7854"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1123",
                    "iataNumber"=> "GH1123",
                    "icaoNumber"=> "GLP1123"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "34",
                "delay": 5,
                "scheduledTime"=> "2019-03-09T12:45:00.000",
                "estimatedTime"=> "2019-03-09T12:50:00.000",
                "actualTime"=> "2019-03-09T12:50:00.000",
                "estimatedRunway"=> "2019-03-09T13:06:00.000",
                "actualRunway"=> "2019-03-09T13:06:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AAQ",
                "icaoCode"=> "URKA",
                "delay": 3,
                "scheduledTime"=> "2019-03-09T15:05:00.000",
                "estimatedTime"=> "2019-03-09T15:08:00.000",
                "estimatedRunway"=> "2019-03-09T15:02:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "5122",
                "iataNumber"=> "EY5122",
                "icaoNumber"=> "ETD5122"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1123",
                    "iataNumber"=> "GH1123",
                    "icaoNumber"=> "GLP1123"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "34",
                "delay": 5,
                "scheduledTime"=> "2019-03-09T12:45:00.000",
                "estimatedTime"=> "2019-03-09T12:50:00.000",
                "actualTime"=> "2019-03-09T12:50:00.000",
                "estimatedRunway"=> "2019-03-09T13:06:00.000",
                "actualRunway"=> "2019-03-09T13:06:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AAQ",
                "icaoCode"=> "URKA",
                "delay": 3,
                "scheduledTime"=> "2019-03-09T15:05:00.000",
                "estimatedTime"=> "2019-03-09T15:08:00.000",
                "estimatedRunway"=> "2019-03-09T15:02:00.000"
            },
            "airline"=> {
                "name"=> "El Al",
                "iataCode"=> "LY",
                "icaoCode"=> "ELY"
            },
            "flight"=> {
                "number"=> "8893",
                "iataNumber"=> "LY8893",
                "icaoNumber"=> "ELY8893"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1123",
                    "iataNumber"=> "GH1123",
                    "icaoNumber"=> "GLP1123"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "34",
                "delay": 5,
                "scheduledTime"=> "2019-03-09T12:45:00.000",
                "estimatedTime"=> "2019-03-09T12:50:00.000",
                "actualTime"=> "2019-03-09T12:50:00.000",
                "estimatedRunway"=> "2019-03-09T13:06:00.000",
                "actualRunway"=> "2019-03-09T13:06:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AAQ",
                "icaoCode"=> "URKA",
                "delay": 3,
                "scheduledTime"=> "2019-03-09T15:05:00.000",
                "estimatedTime"=> "2019-03-09T15:08:00.000",
                "estimatedRunway"=> "2019-03-09T15:02:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5772",
                "iataNumber"=> "QR5772",
                "icaoNumber"=> "QTR5772"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1123",
                    "iataNumber"=> "GH1123",
                    "icaoNumber"=> "GLP1123"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "34",
                "delay": 5,
                "scheduledTime"=> "2019-03-09T12:45:00.000",
                "estimatedTime"=> "2019-03-09T12:50:00.000",
                "actualTime"=> "2019-03-09T12:50:00.000",
                "estimatedRunway"=> "2019-03-09T13:06:00.000",
                "actualRunway"=> "2019-03-09T13:06:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AAQ",
                "icaoCode"=> "URKA",
                "delay": 3,
                "scheduledTime"=> "2019-03-09T15:05:00.000",
                "estimatedTime"=> "2019-03-09T15:08:00.000",
                "estimatedRunway"=> "2019-03-09T15:02:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "1123",
                "iataNumber"=> "S71123",
                "icaoNumber"=> "SBI1123"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1123",
                    "iataNumber"=> "GH1123",
                    "icaoNumber"=> "GLP1123"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "34",
                "delay": 5,
                "scheduledTime"=> "2019-03-09T12:45:00.000",
                "estimatedTime"=> "2019-03-09T12:50:00.000",
                "actualTime"=> "2019-03-09T12:50:00.000",
                "estimatedRunway"=> "2019-03-09T13:06:00.000",
                "actualRunway"=> "2019-03-09T13:06:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AAQ",
                "icaoCode"=> "URKA",
                "delay": 3,
                "scheduledTime"=> "2019-03-09T15:05:00.000",
                "estimatedTime"=> "2019-03-09T15:08:00.000",
                "estimatedRunway"=> "2019-03-09T15:02:00.000"
            },
            "airline"=> {
                "name"=> "Globus",
                "iataCode"=> "GH",
                "icaoCode"=> "GLP"
            },
            "flight"=> {
                "number"=> "1123",
                "iataNumber"=> "GH1123",
                "icaoNumber"=> "GLP1123"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "55",
                "scheduledTime"=> "2019-03-09T12:50:00.000",
                "estimatedRunway"=> "2019-03-09T12:57:00.000",
                "actualRunway"=> "2019-03-09T12:57:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MCX",
                "icaoCode"=> "URML",
                "scheduledTime"=> "2019-03-09T15:20:00.000",
                "estimatedRunway"=> "2019-03-09T15:09:00.000"
            },
            "airline"=> {
                "name"=> "NordStar Airlines",
                "iataCode"=> "Y7",
                "icaoCode"=> "TYA"
            },
            "flight"=> {
                "number"=> "1041",
                "iataNumber"=> "Y71041",
                "icaoNumber"=> "TYA1041"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "44",
                "scheduledTime"=> "2019-03-09T13:00:00.000",
                "estimatedRunway"=> "2019-03-09T13:12:00.000",
                "actualRunway"=> "2019-03-09T13:12:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MRV",
                "icaoCode"=> "URMM",
                "terminal"=> "??",
                "delay": 12,
                "scheduledTime"=> "2019-03-09T15:10:00.000",
                "estimatedTime"=> "2019-03-09T15:22:00.000",
                "estimatedRunway"=> "2019-03-09T15:01:00.000"
            },
            "airline"=> {
                "name"=> "NordStar Airlines",
                "iataCode"=> "Y7",
                "icaoCode"=> "TYA"
            },
            "flight"=> {
                "number"=> "1021",
                "iataNumber"=> "Y71021",
                "icaoNumber"=> "TYA1021"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "31",
                "scheduledTime"=> "2019-03-09T13:10:00.000",
                "estimatedTime"=> "2019-03-09T13:00:00.000",
                "actualTime"=> "2019-03-09T13:00:00.000",
                "estimatedRunway"=> "2019-03-09T13:16:00.000",
                "actualRunway"=> "2019-03-09T13:16:00.000"
            },
            "arrival"=> {
                "iataCode"=> "GOJ",
                "icaoCode"=> "UWGG",
                "scheduledTime"=> "2019-03-09T14:25:00.000",
                "estimatedTime"=> "2019-03-09T13:58:00.000"
            },
            "airline"=> {
                "name"=> "Aegean Airlines",
                "iataCode"=> "A3",
                "icaoCode"=> "AEE"
            },
            "flight"=> {
                "number"=> "3505",
                "iataNumber"=> "A33505",
                "icaoNumber"=> "AEE3505"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "5",
                    "iataNumber"=> "S75",
                    "icaoNumber"=> "SBI5"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "31",
                "scheduledTime"=> "2019-03-09T13:10:00.000",
                "estimatedTime"=> "2019-03-09T13:00:00.000",
                "actualTime"=> "2019-03-09T13:00:00.000",
                "estimatedRunway"=> "2019-03-09T13:16:00.000",
                "actualRunway"=> "2019-03-09T13:16:00.000"
            },
            "arrival"=> {
                "iataCode"=> "GOJ",
                "icaoCode"=> "UWGG",
                "scheduledTime"=> "2019-03-09T14:25:00.000",
                "estimatedTime"=> "2019-03-09T13:58:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7965",
                "iataNumber"=> "EK7965",
                "icaoNumber"=> "UAE7965"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "5",
                    "iataNumber"=> "S75",
                    "icaoNumber"=> "SBI5"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "31",
                "scheduledTime"=> "2019-03-09T13:10:00.000",
                "estimatedTime"=> "2019-03-09T13:00:00.000",
                "actualTime"=> "2019-03-09T13:00:00.000",
                "estimatedRunway"=> "2019-03-09T13:16:00.000",
                "actualRunway"=> "2019-03-09T13:16:00.000"
            },
            "arrival"=> {
                "iataCode"=> "GOJ",
                "icaoCode"=> "UWGG",
                "scheduledTime"=> "2019-03-09T14:25:00.000",
                "estimatedTime"=> "2019-03-09T13:58:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5653",
                "iataNumber"=> "QR5653",
                "icaoNumber"=> "QTR5653"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "5",
                    "iataNumber"=> "S75",
                    "icaoNumber"=> "SBI5"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "31",
                "scheduledTime"=> "2019-03-09T13:10:00.000",
                "estimatedTime"=> "2019-03-09T13:00:00.000",
                "actualTime"=> "2019-03-09T13:00:00.000",
                "estimatedRunway"=> "2019-03-09T13:16:00.000",
                "actualRunway"=> "2019-03-09T13:16:00.000"
            },
            "arrival"=> {
                "iataCode"=> "GOJ",
                "icaoCode"=> "UWGG",
                "scheduledTime"=> "2019-03-09T14:25:00.000",
                "estimatedTime"=> "2019-03-09T13:58:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "5",
                "iataNumber"=> "S75",
                "icaoNumber"=> "SBI5"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "45",
                "scheduledTime"=> "2019-03-09T13:05:00.000",
                "estimatedRunway"=> "2019-03-09T13:22:00.000",
                "actualRunway"=> "2019-03-09T13:22:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T15:30:00.000",
                "estimatedRunway"=> "2019-03-09T15:26:00.000"
            },
            "airline"=> {
                "name"=> "NordStar Airlines",
                "iataCode"=> "Y7",
                "icaoCode"=> "TYA"
            },
            "flight"=> {
                "number"=> "1031",
                "iataNumber"=> "Y71031",
                "icaoNumber"=> "TYA1031"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "38",
                "scheduledTime"=> "2019-03-09T13:10:00.000",
                "estimatedTime"=> "2019-03-09T13:05:00.000",
                "actualTime"=> "2019-03-09T13:05:00.000",
                "estimatedRunway"=> "2019-03-09T13:19:00.000",
                "actualRunway"=> "2019-03-09T13:19:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SIP",
                "icaoCode"=> "UKFF",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T15:55:00.000",
                "estimatedTime"=> "2019-03-09T15:43:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "165",
                "iataNumber"=> "S7165",
                "icaoNumber"=> "SBI165"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "165",
                    "iataNumber"=> "GH165",
                    "icaoNumber"=> "GLP165"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "38",
                "scheduledTime"=> "2019-03-09T13:10:00.000",
                "estimatedTime"=> "2019-03-09T13:05:00.000",
                "actualTime"=> "2019-03-09T13:05:00.000",
                "estimatedRunway"=> "2019-03-09T13:19:00.000",
                "actualRunway"=> "2019-03-09T13:19:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SIP",
                "icaoCode"=> "UKFF",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T15:55:00.000",
                "estimatedTime"=> "2019-03-09T15:43:00.000"
            },
            "airline"=> {
                "name"=> "Globus",
                "iataCode"=> "GH",
                "icaoCode"=> "GLP"
            },
            "flight"=> {
                "number"=> "165",
                "iataNumber"=> "GH165",
                "icaoNumber"=> "GLP165"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "21",
                "scheduledTime"=> "2019-03-09T13:20:00.000",
                "estimatedTime"=> "2019-03-09T13:13:00.000",
                "actualTime"=> "2019-03-09T13:13:00.000",
                "estimatedRunway"=> "2019-03-09T13:30:00.000",
                "actualRunway"=> "2019-03-09T13:30:00.000"
            },
            "arrival"=> {
                "iataCode"=> "BOJ",
                "icaoCode"=> "LBBG",
                "scheduledTime"=> "2019-03-09T15:55:00.000",
                "estimatedTime"=> "2019-03-09T15:52:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "923",
                "iataNumber"=> "S7923",
                "icaoNumber"=> "SBI923"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "4",
                "scheduledTime"=> "2019-03-09T13:25:00.000",
                "estimatedTime"=> "2019-03-09T13:16:00.000",
                "actualTime"=> "2019-03-09T13:16:00.000",
                "estimatedRunway"=> "2019-03-09T13:34:00.000",
                "actualRunway"=> "2019-03-09T13:34:00.000"
            },
            "arrival"=> {
                "iataCode"=> "DOH",
                "icaoCode"=> "OTHH",
                "baggage"=> "3",
                "scheduledTime"=> "2019-03-09T18:45:00.000",
                "estimatedTime"=> "2019-03-09T18:17:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "4877",
                "iataNumber"=> "S74877",
                "icaoNumber"=> "SBI4877"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Qatar Airways",
                    "iataCode"=> "QR",
                    "icaoCode"=> "QTR"
                },
                "flight"=> {
                    "number"=> "234",
                    "iataNumber"=> "QR234",
                    "icaoNumber"=> "QTR234"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "4",
                "scheduledTime"=> "2019-03-09T13:25:00.000",
                "estimatedTime"=> "2019-03-09T13:16:00.000",
                "actualTime"=> "2019-03-09T13:16:00.000",
                "estimatedRunway"=> "2019-03-09T13:34:00.000",
                "actualRunway"=> "2019-03-09T13:34:00.000"
            },
            "arrival"=> {
                "iataCode"=> "DOH",
                "icaoCode"=> "OTHH",
                "baggage"=> "3",
                "scheduledTime"=> "2019-03-09T18:45:00.000",
                "estimatedTime"=> "2019-03-09T18:17:00.000"
            },
            "airline"=> {
                "name"=> "SriLankan Airlines",
                "iataCode"=> "UL",
                "icaoCode"=> "ALK"
            },
            "flight"=> {
                "number"=> "3534",
                "iataNumber"=> "UL3534",
                "icaoNumber"=> "ALK3534"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Qatar Airways",
                    "iataCode"=> "QR",
                    "icaoCode"=> "QTR"
                },
                "flight"=> {
                    "number"=> "234",
                    "iataNumber"=> "QR234",
                    "icaoNumber"=> "QTR234"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "4",
                "scheduledTime"=> "2019-03-09T13:25:00.000",
                "estimatedTime"=> "2019-03-09T13:16:00.000",
                "actualTime"=> "2019-03-09T13:16:00.000",
                "estimatedRunway"=> "2019-03-09T13:34:00.000",
                "actualRunway"=> "2019-03-09T13:34:00.000"
            },
            "arrival"=> {
                "iataCode"=> "DOH",
                "icaoCode"=> "OTHH",
                "baggage"=> "3",
                "scheduledTime"=> "2019-03-09T18:45:00.000",
                "estimatedTime"=> "2019-03-09T18:17:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "234",
                "iataNumber"=> "QR234",
                "icaoNumber"=> "QTR234"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "50",
                "delay": 7,
                "scheduledTime"=> "2019-03-09T13:10:00.000",
                "estimatedTime"=> "2019-03-09T13:17:00.000",
                "actualTime"=> "2019-03-09T13:17:00.000",
                "estimatedRunway"=> "2019-03-09T13:25:00.000",
                "actualRunway"=> "2019-03-09T13:25:00.000"
            },
            "arrival"=> {
                "iataCode"=> "ROV",
                "icaoCode"=> "URRR",
                "scheduledTime"=> "2019-03-09T15:15:00.000",
                "estimatedTime"=> "2019-03-09T15:05:00.000",
                "estimatedRunway"=> "2019-03-09T15:02:00.000"
            },
            "airline"=> {
                "name"=> "Royal Air Maroc",
                "iataCode"=> "AT",
                "icaoCode"=> "RAM"
            },
            "flight"=> {
                "number"=> "9017",
                "iataNumber"=> "AT9017",
                "icaoNumber"=> "RAM9017"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1155",
                    "iataNumber"=> "S71155",
                    "icaoNumber"=> "SBI1155"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "50",
                "delay": 7,
                "scheduledTime"=> "2019-03-09T13:10:00.000",
                "estimatedTime"=> "2019-03-09T13:17:00.000",
                "actualTime"=> "2019-03-09T13:17:00.000",
                "estimatedRunway"=> "2019-03-09T13:25:00.000",
                "actualRunway"=> "2019-03-09T13:25:00.000"
            },
            "arrival"=> {
                "iataCode"=> "ROV",
                "icaoCode"=> "URRR",
                "scheduledTime"=> "2019-03-09T15:15:00.000",
                "estimatedTime"=> "2019-03-09T15:05:00.000",
                "estimatedRunway"=> "2019-03-09T15:02:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7985",
                "iataNumber"=> "EK7985",
                "icaoNumber"=> "UAE7985"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1155",
                    "iataNumber"=> "S71155",
                    "icaoNumber"=> "SBI1155"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "50",
                "delay": 7,
                "scheduledTime"=> "2019-03-09T13:10:00.000",
                "estimatedTime"=> "2019-03-09T13:17:00.000",
                "actualTime"=> "2019-03-09T13:17:00.000",
                "estimatedRunway"=> "2019-03-09T13:25:00.000",
                "actualRunway"=> "2019-03-09T13:25:00.000"
            },
            "arrival"=> {
                "iataCode"=> "ROV",
                "icaoCode"=> "URRR",
                "scheduledTime"=> "2019-03-09T15:15:00.000",
                "estimatedTime"=> "2019-03-09T15:05:00.000",
                "estimatedRunway"=> "2019-03-09T15:02:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "4340",
                "iataNumber"=> "EY4340",
                "icaoNumber"=> "ETD4340"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1155",
                    "iataNumber"=> "S71155",
                    "icaoNumber"=> "SBI1155"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "50",
                "delay": 7,
                "scheduledTime"=> "2019-03-09T13:10:00.000",
                "estimatedTime"=> "2019-03-09T13:17:00.000",
                "actualTime"=> "2019-03-09T13:17:00.000",
                "estimatedRunway"=> "2019-03-09T13:25:00.000",
                "actualRunway"=> "2019-03-09T13:25:00.000"
            },
            "arrival"=> {
                "iataCode"=> "ROV",
                "icaoCode"=> "URRR",
                "scheduledTime"=> "2019-03-09T15:15:00.000",
                "estimatedTime"=> "2019-03-09T15:05:00.000",
                "estimatedRunway"=> "2019-03-09T15:02:00.000"
            },
            "airline"=> {
                "name"=> "El Al",
                "iataCode"=> "LY",
                "icaoCode"=> "ELY"
            },
            "flight"=> {
                "number"=> "8917",
                "iataNumber"=> "LY8917",
                "icaoNumber"=> "ELY8917"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1155",
                    "iataNumber"=> "S71155",
                    "icaoNumber"=> "SBI1155"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "50",
                "delay": 7,
                "scheduledTime"=> "2019-03-09T13:10:00.000",
                "estimatedTime"=> "2019-03-09T13:17:00.000",
                "actualTime"=> "2019-03-09T13:17:00.000",
                "estimatedRunway"=> "2019-03-09T13:25:00.000",
                "actualRunway"=> "2019-03-09T13:25:00.000"
            },
            "arrival"=> {
                "iataCode"=> "ROV",
                "icaoCode"=> "URRR",
                "scheduledTime"=> "2019-03-09T15:15:00.000",
                "estimatedTime"=> "2019-03-09T15:05:00.000",
                "estimatedRunway"=> "2019-03-09T15:02:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5666",
                "iataNumber"=> "QR5666",
                "icaoNumber"=> "QTR5666"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1155",
                    "iataNumber"=> "S71155",
                    "icaoNumber"=> "SBI1155"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "50",
                "delay": 7,
                "scheduledTime"=> "2019-03-09T13:10:00.000",
                "estimatedTime"=> "2019-03-09T13:17:00.000",
                "actualTime"=> "2019-03-09T13:17:00.000",
                "estimatedRunway"=> "2019-03-09T13:25:00.000",
                "actualRunway"=> "2019-03-09T13:25:00.000"
            },
            "arrival"=> {
                "iataCode"=> "ROV",
                "icaoCode"=> "URRR",
                "scheduledTime"=> "2019-03-09T15:15:00.000",
                "estimatedTime"=> "2019-03-09T15:05:00.000",
                "estimatedRunway"=> "2019-03-09T15:02:00.000"
            },
            "airline"=> {
                "name"=> "Singapore Airlines",
                "iataCode"=> "SQ",
                "icaoCode"=> "SIA"
            },
            "flight"=> {
                "number"=> "1997",
                "iataNumber"=> "SQ1997",
                "icaoNumber"=> "SIA1997"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1155",
                    "iataNumber"=> "S71155",
                    "icaoNumber"=> "SBI1155"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "50",
                "delay": 7,
                "scheduledTime"=> "2019-03-09T13:10:00.000",
                "estimatedTime"=> "2019-03-09T13:17:00.000",
                "actualTime"=> "2019-03-09T13:17:00.000",
                "estimatedRunway"=> "2019-03-09T13:25:00.000",
                "actualRunway"=> "2019-03-09T13:25:00.000"
            },
            "arrival"=> {
                "iataCode"=> "ROV",
                "icaoCode"=> "URRR",
                "scheduledTime"=> "2019-03-09T15:15:00.000",
                "estimatedTime"=> "2019-03-09T15:05:00.000",
                "estimatedRunway"=> "2019-03-09T15:02:00.000"
            },
            "airline"=> {
                "name"=> "TAP Portugal",
                "iataCode"=> "TP",
                "icaoCode"=> "TAP"
            },
            "flight"=> {
                "number"=> "8174",
                "iataNumber"=> "TP8174",
                "icaoNumber"=> "TAP8174"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1155",
                    "iataNumber"=> "S71155",
                    "icaoNumber"=> "SBI1155"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "50",
                "delay": 7,
                "scheduledTime"=> "2019-03-09T13:10:00.000",
                "estimatedTime"=> "2019-03-09T13:17:00.000",
                "actualTime"=> "2019-03-09T13:17:00.000",
                "estimatedRunway"=> "2019-03-09T13:25:00.000",
                "actualRunway"=> "2019-03-09T13:25:00.000"
            },
            "arrival"=> {
                "iataCode"=> "ROV",
                "icaoCode"=> "URRR",
                "scheduledTime"=> "2019-03-09T15:15:00.000",
                "estimatedTime"=> "2019-03-09T15:05:00.000",
                "estimatedRunway"=> "2019-03-09T15:02:00.000"
            },
            "airline"=> {
                "name"=> "Aigle Azur",
                "iataCode"=> "ZI",
                "icaoCode"=> "AAF"
            },
            "flight"=> {
                "number"=> "1071",
                "iataNumber"=> "ZI1071",
                "icaoNumber"=> "AAF1071"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1155",
                    "iataNumber"=> "S71155",
                    "icaoNumber"=> "SBI1155"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "50",
                "delay": 7,
                "scheduledTime"=> "2019-03-09T13:10:00.000",
                "estimatedTime"=> "2019-03-09T13:17:00.000",
                "actualTime"=> "2019-03-09T13:17:00.000",
                "estimatedRunway"=> "2019-03-09T13:25:00.000",
                "actualRunway"=> "2019-03-09T13:25:00.000"
            },
            "arrival"=> {
                "iataCode"=> "ROV",
                "icaoCode"=> "URRR",
                "scheduledTime"=> "2019-03-09T15:15:00.000",
                "estimatedTime"=> "2019-03-09T15:05:00.000",
                "estimatedRunway"=> "2019-03-09T15:02:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "1155",
                "iataNumber"=> "S71155",
                "icaoNumber"=> "SBI1155"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T13:35:00.000",
                "estimatedTime"=> "2019-03-09T13:23:00.000",
                "actualTime"=> "2019-03-09T13:23:00.000",
                "estimatedRunway"=> "2019-03-09T13:39:00.000",
                "actualRunway"=> "2019-03-09T13:39:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OVB",
                "icaoCode"=> "UNNT",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-09T21:40:00.000",
                "estimatedTime"=> "2019-03-09T21:05:00.000"
            },
            "airline"=> {
                "name"=> "Aegean Airlines",
                "iataCode"=> "A3",
                "icaoCode"=> "AEE"
            },
            "flight"=> {
                "number"=> "3532",
                "iataNumber"=> "A33532",
                "icaoNumber"=> "AEE3532"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "175",
                    "iataNumber"=> "S7175",
                    "icaoNumber"=> "SBI175"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T13:35:00.000",
                "estimatedTime"=> "2019-03-09T13:23:00.000",
                "actualTime"=> "2019-03-09T13:23:00.000",
                "estimatedRunway"=> "2019-03-09T13:39:00.000",
                "actualRunway"=> "2019-03-09T13:39:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OVB",
                "icaoCode"=> "UNNT",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-09T21:40:00.000",
                "estimatedTime"=> "2019-03-09T21:05:00.000"
            },
            "airline"=> {
                "name"=> "Royal Air Maroc",
                "iataCode"=> "AT",
                "icaoCode"=> "RAM"
            },
            "flight"=> {
                "number"=> "9007",
                "iataNumber"=> "AT9007",
                "icaoNumber"=> "RAM9007"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "175",
                    "iataNumber"=> "S7175",
                    "icaoNumber"=> "SBI175"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T13:35:00.000",
                "estimatedTime"=> "2019-03-09T13:23:00.000",
                "actualTime"=> "2019-03-09T13:23:00.000",
                "estimatedRunway"=> "2019-03-09T13:39:00.000",
                "actualRunway"=> "2019-03-09T13:39:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OVB",
                "icaoCode"=> "UNNT",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-09T21:40:00.000",
                "estimatedTime"=> "2019-03-09T21:05:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7807",
                "iataNumber"=> "EK7807",
                "icaoNumber"=> "UAE7807"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "175",
                    "iataNumber"=> "S7175",
                    "icaoNumber"=> "SBI175"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T13:35:00.000",
                "estimatedTime"=> "2019-03-09T13:23:00.000",
                "actualTime"=> "2019-03-09T13:23:00.000",
                "estimatedRunway"=> "2019-03-09T13:39:00.000",
                "actualRunway"=> "2019-03-09T13:39:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OVB",
                "icaoCode"=> "UNNT",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-09T21:40:00.000",
                "estimatedTime"=> "2019-03-09T21:05:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "4313",
                "iataNumber"=> "EY4313",
                "icaoNumber"=> "ETD4313"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "175",
                    "iataNumber"=> "S7175",
                    "icaoNumber"=> "SBI175"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T13:35:00.000",
                "estimatedTime"=> "2019-03-09T13:23:00.000",
                "actualTime"=> "2019-03-09T13:23:00.000",
                "estimatedRunway"=> "2019-03-09T13:39:00.000",
                "actualRunway"=> "2019-03-09T13:39:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OVB",
                "icaoCode"=> "UNNT",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-09T21:40:00.000",
                "estimatedTime"=> "2019-03-09T21:05:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5665",
                "iataNumber"=> "QR5665",
                "icaoNumber"=> "QTR5665"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "175",
                    "iataNumber"=> "S7175",
                    "icaoNumber"=> "SBI175"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T13:35:00.000",
                "estimatedTime"=> "2019-03-09T13:23:00.000",
                "actualTime"=> "2019-03-09T13:23:00.000",
                "estimatedRunway"=> "2019-03-09T13:39:00.000",
                "actualRunway"=> "2019-03-09T13:39:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OVB",
                "icaoCode"=> "UNNT",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-09T21:40:00.000",
                "estimatedTime"=> "2019-03-09T21:05:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "175",
                "iataNumber"=> "S7175",
                "icaoNumber"=> "SBI175"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "13",
                "delay": 3,
                "scheduledTime"=> "2019-03-09T13:25:00.000",
                "estimatedTime"=> "2019-03-09T13:28:00.000",
                "actualTime"=> "2019-03-09T13:28:00.000",
                "estimatedRunway"=> "2019-03-09T13:42:00.000",
                "actualRunway"=> "2019-03-09T13:42:00.000"
            },
            "arrival"=> {
                "iataCode"=> "INN",
                "icaoCode"=> "LOWI",
                "scheduledTime"=> "2019-03-09T14:55:00.000",
                "estimatedRunway"=> "2019-03-09T14:57:00.000"
            },
            "airline"=> {
                "name"=> "Austrian",
                "iataCode"=> "OS",
                "icaoCode"=> "AUA"
            },
            "flight"=> {
                "number"=> "672",
                "iataNumber"=> "OS672",
                "icaoNumber"=> "AUA672"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "12",
                "scheduledTime"=> "2019-03-09T13:30:00.000",
                "estimatedRunway"=> "2019-03-09T13:39:00.000",
                "actualRunway"=> "2019-03-09T13:39:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MUC",
                "icaoCode"=> "EDDM",
                "terminal"=> "2",
                "gate"=> "M9",
                "scheduledTime"=> "2019-03-09T14:55:00.000",
                "estimatedTime"=> "2019-03-09T14:35:00.000"
            },
            "airline"=> {
                "name"=> "Lufthansa",
                "iataCode"=> "LH",
                "icaoCode"=> "DLH"
            },
            "flight"=> {
                "number"=> "2527",
                "iataNumber"=> "LH2527",
                "icaoNumber"=> "DLH2527"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "14",
                "scheduledTime"=> "2019-03-09T13:40:00.000",
                "estimatedTime"=> "2019-03-09T13:35:00.000",
                "actualTime"=> "2019-03-09T13:35:00.000",
                "estimatedRunway"=> "2019-03-09T13:47:00.000",
                "actualRunway"=> "2019-03-09T13:47:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SKG",
                "icaoCode"=> "LGTS",
                "scheduledTime"=> "2019-03-09T15:50:00.000",
                "estimatedTime"=> "2019-03-09T15:47:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "4321",
                "iataNumber"=> "S74321",
                "icaoNumber"=> "SBI4321"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Aegean Airlines",
                    "iataCode"=> "A3",
                    "icaoCode"=> "AEE"
                },
                "flight"=> {
                    "number"=> "525",
                    "iataNumber"=> "A3525",
                    "icaoNumber"=> "AEE525"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "14",
                "scheduledTime"=> "2019-03-09T13:40:00.000",
                "estimatedTime"=> "2019-03-09T13:35:00.000",
                "actualTime"=> "2019-03-09T13:35:00.000",
                "estimatedRunway"=> "2019-03-09T13:47:00.000",
                "actualRunway"=> "2019-03-09T13:47:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SKG",
                "icaoCode"=> "LGTS",
                "scheduledTime"=> "2019-03-09T15:50:00.000",
                "estimatedTime"=> "2019-03-09T15:47:00.000"
            },
            "airline"=> {
                "name"=> "Aegean Airlines",
                "iataCode"=> "A3",
                "icaoCode"=> "AEE"
            },
            "flight"=> {
                "number"=> "525",
                "iataNumber"=> "A3525",
                "icaoNumber"=> "AEE525"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "7",
                "scheduledTime"=> "2019-03-09T13:40:00.000",
                "estimatedTime"=> "2019-03-09T13:37:00.000",
                "actualTime"=> "2019-03-09T13:37:00.000",
                "estimatedRunway"=> "2019-03-09T13:50:00.000",
                "actualRunway"=> "2019-03-09T13:50:00.000"
            },
            "arrival"=> {
                "iataCode"=> "TXL",
                "icaoCode"=> "EDDT",
                "scheduledTime"=> "2019-03-09T14:40:00.000",
                "estimatedTime"=> "2019-03-09T14:35:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "895",
                "iataNumber"=> "S7895",
                "icaoNumber"=> "SBI895"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "16",
                "scheduledTime"=> "2019-03-09T13:40:00.000",
                "estimatedTime"=> "2019-03-09T13:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SZG",
                "icaoCode"=> "LOWS",
                "scheduledTime"=> "2019-03-09T14:50:00.000",
                "estimatedTime"=> "2019-03-09T14:50:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "791",
                "iataNumber"=> "S7791",
                "icaoNumber"=> "SBI791"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "31",
                "scheduledTime"=> "2019-03-09T13:50:00.000",
                "estimatedTime"=> "2019-03-09T13:47:00.000",
                "actualTime"=> "2019-03-09T13:47:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KGD",
                "icaoCode"=> "UMKK",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-09T15:00:00.000",
                "estimatedTime"=> "2019-03-09T14:55:00.000"
            },
            "airline"=> {
                "name"=> "Royal Air Maroc",
                "iataCode"=> "AT",
                "icaoCode"=> "RAM"
            },
            "flight"=> {
                "number"=> "9037",
                "iataNumber"=> "AT9037",
                "icaoNumber"=> "RAM9037"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "67",
                    "iataNumber"=> "S767",
                    "icaoNumber"=> "SBI67"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "31",
                "scheduledTime"=> "2019-03-09T13:50:00.000",
                "estimatedTime"=> "2019-03-09T13:47:00.000",
                "actualTime"=> "2019-03-09T13:47:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KGD",
                "icaoCode"=> "UMKK",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-09T15:00:00.000",
                "estimatedTime"=> "2019-03-09T14:55:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7831",
                "iataNumber"=> "EK7831",
                "icaoNumber"=> "UAE7831"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "67",
                    "iataNumber"=> "S767",
                    "icaoNumber"=> "SBI67"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "31",
                "scheduledTime"=> "2019-03-09T13:50:00.000",
                "estimatedTime"=> "2019-03-09T13:47:00.000",
                "actualTime"=> "2019-03-09T13:47:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KGD",
                "icaoCode"=> "UMKK",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-09T15:00:00.000",
                "estimatedTime"=> "2019-03-09T14:55:00.000"
            },
            "airline"=> {
                "name"=> "JAL",
                "iataCode"=> "JL",
                "icaoCode"=> "JAL"
            },
            "flight"=> {
                "number"=> "7111",
                "iataNumber"=> "JL7111",
                "icaoNumber"=> "JAL7111"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "67",
                    "iataNumber"=> "S767",
                    "icaoNumber"=> "SBI67"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "31",
                "scheduledTime"=> "2019-03-09T13:50:00.000",
                "estimatedTime"=> "2019-03-09T13:47:00.000",
                "actualTime"=> "2019-03-09T13:47:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KGD",
                "icaoCode"=> "UMKK",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-09T15:00:00.000",
                "estimatedTime"=> "2019-03-09T14:55:00.000"
            },
            "airline"=> {
                "name"=> "El Al",
                "iataCode"=> "LY",
                "icaoCode"=> "ELY"
            },
            "flight"=> {
                "number"=> "8895",
                "iataNumber"=> "LY8895",
                "icaoNumber"=> "ELY8895"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "67",
                    "iataNumber"=> "S767",
                    "icaoNumber"=> "SBI67"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "31",
                "scheduledTime"=> "2019-03-09T13:50:00.000",
                "estimatedTime"=> "2019-03-09T13:47:00.000",
                "actualTime"=> "2019-03-09T13:47:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KGD",
                "icaoCode"=> "UMKK",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-09T15:00:00.000",
                "estimatedTime"=> "2019-03-09T14:55:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5782",
                "iataNumber"=> "QR5782",
                "icaoNumber"=> "QTR5782"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "67",
                    "iataNumber"=> "S767",
                    "icaoNumber"=> "SBI67"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "31",
                "scheduledTime"=> "2019-03-09T13:50:00.000",
                "estimatedTime"=> "2019-03-09T13:47:00.000",
                "actualTime"=> "2019-03-09T13:47:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KGD",
                "icaoCode"=> "UMKK",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-09T15:00:00.000",
                "estimatedTime"=> "2019-03-09T14:55:00.000"
            },
            "airline"=> {
                "name"=> "Singapore Airlines",
                "iataCode"=> "SQ",
                "icaoCode"=> "SIA"
            },
            "flight"=> {
                "number"=> "1931",
                "iataNumber"=> "SQ1931",
                "icaoNumber"=> "SIA1931"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "67",
                    "iataNumber"=> "S767",
                    "icaoNumber"=> "SBI67"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "31",
                "scheduledTime"=> "2019-03-09T13:50:00.000",
                "estimatedTime"=> "2019-03-09T13:47:00.000",
                "actualTime"=> "2019-03-09T13:47:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KGD",
                "icaoCode"=> "UMKK",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-09T15:00:00.000",
                "estimatedTime"=> "2019-03-09T14:55:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "67",
                "iataNumber"=> "S767",
                "icaoNumber"=> "SBI67"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "49",
                "delay": 28,
                "scheduledTime"=> "2019-03-09T13:20:00.000",
                "estimatedTime"=> "2019-03-09T13:48:00.000",
                "actualTime"=> "2019-03-09T13:48:00.000",
                "estimatedRunway"=> "2019-03-09T13:58:00.000",
                "actualRunway"=> "2019-03-09T13:58:00.000"
            },
            "arrival"=> {
                "iataCode"=> "RTW",
                "icaoCode"=> "UWSS",
                "delay": 32,
                "scheduledTime"=> "2019-03-09T16:00:00.000",
                "estimatedTime"=> "2019-03-09T16:32:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "207",
                "iataNumber"=> "S7207",
                "icaoNumber"=> "SBI207"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "10",
                "scheduledTime"=> "2019-03-09T13:50:00.000"
            },
            "arrival"=> {
                "iataCode"=> "GYD",
                "icaoCode"=> "UBBB",
                "terminal"=> "1",
                "baggage"=> "1",
                "scheduledTime"=> "2019-03-09T17:40:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "2682",
                "iataNumber"=> "EY2682",
                "icaoNumber"=> "ETD2682"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "AZAL Azerbaijan Airlines",
                    "iataCode"=> "J2",
                    "icaoCode"=> "AHY"
                },
                "flight"=> {
                    "number"=> "851",
                    "iataNumber"=> "J2851",
                    "icaoNumber"=> "AHY851"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "10",
                "scheduledTime"=> "2019-03-09T13:50:00.000"
            },
            "arrival"=> {
                "iataCode"=> "GYD",
                "icaoCode"=> "UBBB",
                "terminal"=> "1",
                "baggage"=> "1",
                "scheduledTime"=> "2019-03-09T17:40:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "4545",
                "iataNumber"=> "S74545",
                "icaoNumber"=> "SBI4545"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "AZAL Azerbaijan Airlines",
                    "iataCode"=> "J2",
                    "icaoCode"=> "AHY"
                },
                "flight"=> {
                    "number"=> "851",
                    "iataNumber"=> "J2851",
                    "icaoNumber"=> "AHY851"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "10",
                "scheduledTime"=> "2019-03-09T13:50:00.000"
            },
            "arrival"=> {
                "iataCode"=> "GYD",
                "icaoCode"=> "UBBB",
                "terminal"=> "1",
                "baggage"=> "1",
                "scheduledTime"=> "2019-03-09T17:40:00.000"
            },
            "airline"=> {
                "name"=> "AZAL Azerbaijan Airlines",
                "iataCode"=> "J2",
                "icaoCode"=> "AHY"
            },
            "flight"=> {
                "number"=> "851",
                "iataNumber"=> "J2851",
                "icaoNumber"=> "AHY851"
            }
        },
        {
            "type"=> "departure",
            "status"=> "active",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "22",
                "delay": 6,
                "scheduledTime"=> "2019-03-09T13:50:00.000",
                "estimatedTime"=> "2019-03-09T13:56:00.000",
                "actualTime"=> "2019-03-09T13:56:00.000"
            },
            "arrival"=> {
                "iataCode"=> "TBS",
                "icaoCode"=> "UGGG",
                "scheduledTime"=> "2019-03-09T17:35:00.000",
                "estimatedTime"=> "2019-03-09T17:34:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "955",
                "iataNumber"=> "S7955",
                "icaoNumber"=> "SBI955"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "46",
                "delay": 110,
                "scheduledTime"=> "2019-03-09T12:10:00.000",
                "estimatedTime"=> "2019-03-09T14:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "delay": 80,
                "scheduledTime"=> "2019-03-09T13:50:00.000",
                "estimatedTime"=> "2019-03-09T15:10:00.000"
            },
            "airline"=> {
                "name"=> "Aegean Airlines",
                "iataCode"=> "A3",
                "icaoCode"=> "AEE"
            },
            "flight"=> {
                "number"=> "3518",
                "iataNumber"=> "A33518",
                "icaoNumber"=> "AEE3518"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "39",
                    "iataNumber"=> "S739",
                    "icaoNumber"=> "SBI39"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "46",
                "delay": 110,
                "scheduledTime"=> "2019-03-09T12:10:00.000",
                "estimatedTime"=> "2019-03-09T14:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "delay": 80,
                "scheduledTime"=> "2019-03-09T13:50:00.000",
                "estimatedTime"=> "2019-03-09T15:10:00.000"
            },
            "airline"=> {
                "name"=> "Royal Air Maroc",
                "iataCode"=> "AT",
                "icaoCode"=> "RAM"
            },
            "flight"=> {
                "number"=> "9027",
                "iataNumber"=> "AT9027",
                "icaoNumber"=> "RAM9027"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "39",
                    "iataNumber"=> "S739",
                    "icaoNumber"=> "SBI39"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "46",
                "delay": 110,
                "scheduledTime"=> "2019-03-09T12:10:00.000",
                "estimatedTime"=> "2019-03-09T14:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "delay": 80,
                "scheduledTime"=> "2019-03-09T13:50:00.000",
                "estimatedTime"=> "2019-03-09T15:10:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7867",
                "iataNumber"=> "EK7867",
                "icaoNumber"=> "UAE7867"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "39",
                    "iataNumber"=> "S739",
                    "icaoNumber"=> "SBI39"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "46",
                "delay": 110,
                "scheduledTime"=> "2019-03-09T12:10:00.000",
                "estimatedTime"=> "2019-03-09T14:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "delay": 80,
                "scheduledTime"=> "2019-03-09T13:50:00.000",
                "estimatedTime"=> "2019-03-09T15:10:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "4305",
                "iataNumber"=> "EY4305",
                "icaoNumber"=> "ETD4305"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "39",
                    "iataNumber"=> "S739",
                    "icaoNumber"=> "SBI39"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "46",
                "delay": 110,
                "scheduledTime"=> "2019-03-09T12:10:00.000",
                "estimatedTime"=> "2019-03-09T14:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "delay": 80,
                "scheduledTime"=> "2019-03-09T13:50:00.000",
                "estimatedTime"=> "2019-03-09T15:10:00.000"
            },
            "airline"=> {
                "name"=> "El Al",
                "iataCode"=> "LY",
                "icaoCode"=> "ELY"
            },
            "flight"=> {
                "number"=> "8873",
                "iataNumber"=> "LY8873",
                "icaoNumber"=> "ELY8873"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "39",
                    "iataNumber"=> "S739",
                    "icaoNumber"=> "SBI39"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "46",
                "delay": 110,
                "scheduledTime"=> "2019-03-09T12:10:00.000",
                "estimatedTime"=> "2019-03-09T14:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "delay": 80,
                "scheduledTime"=> "2019-03-09T13:50:00.000",
                "estimatedTime"=> "2019-03-09T15:10:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5660",
                "iataNumber"=> "QR5660",
                "icaoNumber"=> "QTR5660"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "39",
                    "iataNumber"=> "S739",
                    "icaoNumber"=> "SBI39"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "46",
                "delay": 110,
                "scheduledTime"=> "2019-03-09T12:10:00.000",
                "estimatedTime"=> "2019-03-09T14:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "delay": 80,
                "scheduledTime"=> "2019-03-09T13:50:00.000",
                "estimatedTime"=> "2019-03-09T15:10:00.000"
            },
            "airline"=> {
                "name"=> "TAP Portugal",
                "iataCode"=> "TP",
                "icaoCode"=> "TAP"
            },
            "flight"=> {
                "number"=> "8158",
                "iataNumber"=> "TP8158",
                "icaoNumber"=> "TAP8158"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "39",
                    "iataNumber"=> "S739",
                    "icaoNumber"=> "SBI39"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "46",
                "delay": 110,
                "scheduledTime"=> "2019-03-09T12:10:00.000",
                "estimatedTime"=> "2019-03-09T14:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "delay": 80,
                "scheduledTime"=> "2019-03-09T13:50:00.000",
                "estimatedTime"=> "2019-03-09T15:10:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "39",
                "iataNumber"=> "S739",
                "icaoNumber"=> "SBI39"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "53",
                "scheduledTime"=> "2019-03-09T14:00:00.000",
                "estimatedTime"=> "2019-03-09T14:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T16:25:00.000",
                "estimatedTime"=> "2019-03-09T16:25:00.000"
            },
            "airline"=> {
                "name"=> "Royal Air Maroc",
                "iataCode"=> "AT",
                "icaoCode"=> "RAM"
            },
            "flight"=> {
                "number"=> "9023",
                "iataNumber"=> "AT9023",
                "icaoNumber"=> "RAM9023"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1023",
                    "iataNumber"=> "S71023",
                    "icaoNumber"=> "SBI1023"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "53",
                "scheduledTime"=> "2019-03-09T14:00:00.000",
                "estimatedTime"=> "2019-03-09T14:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T16:25:00.000",
                "estimatedTime"=> "2019-03-09T16:25:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "4309",
                "iataNumber"=> "EY4309",
                "icaoNumber"=> "ETD4309"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1023",
                    "iataNumber"=> "S71023",
                    "icaoNumber"=> "SBI1023"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "53",
                "scheduledTime"=> "2019-03-09T14:00:00.000",
                "estimatedTime"=> "2019-03-09T14:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T16:25:00.000",
                "estimatedTime"=> "2019-03-09T16:25:00.000"
            },
            "airline"=> {
                "name"=> "El Al",
                "iataCode"=> "LY",
                "icaoCode"=> "ELY"
            },
            "flight"=> {
                "number"=> "8923",
                "iataNumber"=> "LY8923",
                "icaoNumber"=> "ELY8923"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1023",
                    "iataNumber"=> "S71023",
                    "icaoNumber"=> "SBI1023"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "53",
                "scheduledTime"=> "2019-03-09T14:00:00.000",
                "estimatedTime"=> "2019-03-09T14:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T16:25:00.000",
                "estimatedTime"=> "2019-03-09T16:25:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5686",
                "iataNumber"=> "QR5686",
                "icaoNumber"=> "QTR5686"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1023",
                    "iataNumber"=> "S71023",
                    "icaoNumber"=> "SBI1023"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "53",
                "scheduledTime"=> "2019-03-09T14:00:00.000",
                "estimatedTime"=> "2019-03-09T14:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T16:25:00.000",
                "estimatedTime"=> "2019-03-09T16:25:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "1023",
                "iataNumber"=> "S71023",
                "icaoNumber"=> "SBI1023"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "42",
                "scheduledTime"=> "2019-03-09T14:05:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SIP",
                "icaoCode"=> "UKFF",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T16:25:00.000"
            },
            "airline"=> {
                "name"=> "Ural Airlines",
                "iataCode"=> "U6",
                "icaoCode"=> "SVR"
            },
            "flight"=> {
                "number"=> "521",
                "iataNumber"=> "U6521",
                "icaoNumber"=> "SVR521"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "38",
                "scheduledTime"=> "2019-03-09T14:05:00.000",
                "estimatedTime"=> "2019-03-09T14:05:00.000"
            },
            "arrival"=> {
                "iataCode"=> "STW",
                "icaoCode"=> "URMT",
                "scheduledTime"=> "2019-03-09T16:15:00.000",
                "estimatedTime"=> "2019-03-09T16:15:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7929",
                "iataNumber"=> "EK7929",
                "icaoNumber"=> "UAE7929"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1211",
                    "iataNumber"=> "S71211",
                    "icaoNumber"=> "SBI1211"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "38",
                "scheduledTime"=> "2019-03-09T14:05:00.000",
                "estimatedTime"=> "2019-03-09T14:05:00.000"
            },
            "arrival"=> {
                "iataCode"=> "STW",
                "icaoCode"=> "URMT",
                "scheduledTime"=> "2019-03-09T16:15:00.000",
                "estimatedTime"=> "2019-03-09T16:15:00.000"
            },
            "airline"=> {
                "name"=> "El Al",
                "iataCode"=> "LY",
                "icaoCode"=> "ELY"
            },
            "flight"=> {
                "number"=> "8911",
                "iataNumber"=> "LY8911",
                "icaoNumber"=> "ELY8911"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1211",
                    "iataNumber"=> "S71211",
                    "icaoNumber"=> "SBI1211"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "38",
                "scheduledTime"=> "2019-03-09T14:05:00.000",
                "estimatedTime"=> "2019-03-09T14:05:00.000"
            },
            "arrival"=> {
                "iataCode"=> "STW",
                "icaoCode"=> "URMT",
                "scheduledTime"=> "2019-03-09T16:15:00.000",
                "estimatedTime"=> "2019-03-09T16:15:00.000"
            },
            "airline"=> {
                "name"=> "Singapore Airlines",
                "iataCode"=> "SQ",
                "icaoCode"=> "SIA"
            },
            "flight"=> {
                "number"=> "1988",
                "iataNumber"=> "SQ1988",
                "icaoNumber"=> "SIA1988"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1211",
                    "iataNumber"=> "S71211",
                    "icaoNumber"=> "SBI1211"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "38",
                "scheduledTime"=> "2019-03-09T14:05:00.000",
                "estimatedTime"=> "2019-03-09T14:05:00.000"
            },
            "arrival"=> {
                "iataCode"=> "STW",
                "icaoCode"=> "URMT",
                "scheduledTime"=> "2019-03-09T16:15:00.000",
                "estimatedTime"=> "2019-03-09T16:15:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "1211",
                "iataNumber"=> "S71211",
                "icaoNumber"=> "SBI1211"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "21",
                "scheduledTime"=> "2019-03-09T14:15:00.000",
                "estimatedTime"=> "2019-03-09T14:15:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LCA",
                "icaoCode"=> "LCLK",
                "scheduledTime"=> "2019-03-09T17:15:00.000",
                "estimatedTime"=> "2019-03-09T17:15:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "603",
                "iataNumber"=> "S7603",
                "icaoNumber"=> "SBI603"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "603",
                    "iataNumber"=> "GH603",
                    "icaoNumber"=> "GLP603"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "21",
                "scheduledTime"=> "2019-03-09T14:15:00.000",
                "estimatedTime"=> "2019-03-09T14:15:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LCA",
                "icaoCode"=> "LCLK",
                "scheduledTime"=> "2019-03-09T17:15:00.000",
                "estimatedTime"=> "2019-03-09T17:15:00.000"
            },
            "airline"=> {
                "name"=> "Globus",
                "iataCode"=> "GH",
                "icaoCode"=> "GLP"
            },
            "flight"=> {
                "number"=> "603",
                "iataNumber"=> "GH603",
                "icaoNumber"=> "GLP603"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "47",
                "delay": 80,
                "scheduledTime"=> "2019-03-09T13:00:00.000",
                "estimatedTime"=> "2019-03-09T14:20:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "delay": 60,
                "scheduledTime"=> "2019-03-09T14:30:00.000",
                "estimatedTime"=> "2019-03-09T15:30:00.000"
            },
            "airline"=> {
                "name"=> "Red Wings",
                "iataCode"=> "WZ",
                "icaoCode"=> "RWZ"
            },
            "flight"=> {
                "number"=> "5003",
                "iataNumber"=> "WZ5003",
                "icaoNumber"=> "RWZ5003"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T14:20:00.000"
            },
            "arrival"=> {
                "iataCode"=> "IJK",
                "icaoCode"=> "USII",
                "scheduledTime"=> "2019-03-09T17:00:00.000"
            },
            "airline"=> {
                "name"=> "Izhavia",
                "iataCode"=> "I8",
                "icaoCode"=> "IZA"
            },
            "flight"=> {
                "number"=> "306",
                "iataNumber"=> "I8306",
                "icaoNumber"=> "IZA306"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "51",
                "scheduledTime"=> "2019-03-09T14:25:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SVX",
                "icaoCode"=> "USSS",
                "scheduledTime"=> "2019-03-09T18:40:00.000"
            },
            "airline"=> {
                "name"=> "Ural Airlines",
                "iataCode"=> "U6",
                "icaoCode"=> "SVR"
            },
            "flight"=> {
                "number"=> "299",
                "iataNumber"=> "U6299",
                "icaoNumber"=> "SVR299"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "4",
                "scheduledTime"=> "2019-03-09T14:25:00.000"
            },
            "arrival"=> {
                "iataCode"=> "ATH",
                "icaoCode"=> "LGAV",
                "scheduledTime"=> "2019-03-09T17:05:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "4311",
                "iataNumber"=> "S74311",
                "icaoNumber"=> "SBI4311"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Aegean Airlines",
                    "iataCode"=> "A3",
                    "icaoCode"=> "AEE"
                },
                "flight"=> {
                    "number"=> "881",
                    "iataNumber"=> "A3881",
                    "icaoNumber"=> "AEE881"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "4",
                "scheduledTime"=> "2019-03-09T14:25:00.000"
            },
            "arrival"=> {
                "iataCode"=> "ATH",
                "icaoCode"=> "LGAV",
                "scheduledTime"=> "2019-03-09T17:05:00.000"
            },
            "airline"=> {
                "name"=> "Aegean Airlines",
                "iataCode"=> "A3",
                "icaoCode"=> "AEE"
            },
            "flight"=> {
                "number"=> "881",
                "iataNumber"=> "A3881",
                "icaoNumber"=> "AEE881"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "44",
                "scheduledTime"=> "2019-03-09T14:35:00.000",
                "estimatedTime"=> "2019-03-09T14:35:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KZN",
                "icaoCode"=> "UWKD",
                "terminal"=> "1A",
                "scheduledTime"=> "2019-03-09T16:10:00.000",
                "estimatedTime"=> "2019-03-09T16:10:00.000"
            },
            "airline"=> {
                "name"=> "Aegean Airlines",
                "iataCode"=> "A3",
                "icaoCode"=> "AEE"
            },
            "flight"=> {
                "number"=> "3523",
                "iataNumber"=> "A33523",
                "icaoNumber"=> "AEE3523"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "65",
                    "iataNumber"=> "S765",
                    "icaoNumber"=> "SBI65"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "44",
                "scheduledTime"=> "2019-03-09T14:35:00.000",
                "estimatedTime"=> "2019-03-09T14:35:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KZN",
                "icaoCode"=> "UWKD",
                "terminal"=> "1A",
                "scheduledTime"=> "2019-03-09T16:10:00.000",
                "estimatedTime"=> "2019-03-09T16:10:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "4315",
                "iataNumber"=> "EY4315",
                "icaoNumber"=> "ETD4315"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "65",
                    "iataNumber"=> "S765",
                    "icaoNumber"=> "SBI65"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "44",
                "scheduledTime"=> "2019-03-09T14:35:00.000",
                "estimatedTime"=> "2019-03-09T14:35:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KZN",
                "icaoCode"=> "UWKD",
                "terminal"=> "1A",
                "scheduledTime"=> "2019-03-09T16:10:00.000",
                "estimatedTime"=> "2019-03-09T16:10:00.000"
            },
            "airline"=> {
                "name"=> "El Al",
                "iataCode"=> "LY",
                "icaoCode"=> "ELY"
            },
            "flight"=> {
                "number"=> "8965",
                "iataNumber"=> "LY8965",
                "icaoNumber"=> "ELY8965"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "65",
                    "iataNumber"=> "S765",
                    "icaoNumber"=> "SBI65"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "44",
                "scheduledTime"=> "2019-03-09T14:35:00.000",
                "estimatedTime"=> "2019-03-09T14:35:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KZN",
                "icaoCode"=> "UWKD",
                "terminal"=> "1A",
                "scheduledTime"=> "2019-03-09T16:10:00.000",
                "estimatedTime"=> "2019-03-09T16:10:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5740",
                "iataNumber"=> "QR5740",
                "icaoNumber"=> "QTR5740"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "65",
                    "iataNumber"=> "S765",
                    "icaoNumber"=> "SBI65"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "44",
                "scheduledTime"=> "2019-03-09T14:35:00.000",
                "estimatedTime"=> "2019-03-09T14:35:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KZN",
                "icaoCode"=> "UWKD",
                "terminal"=> "1A",
                "scheduledTime"=> "2019-03-09T16:10:00.000",
                "estimatedTime"=> "2019-03-09T16:10:00.000"
            },
            "airline"=> {
                "name"=> "Singapore Airlines",
                "iataCode"=> "SQ",
                "icaoCode"=> "SIA"
            },
            "flight"=> {
                "number"=> "1927",
                "iataNumber"=> "SQ1927",
                "icaoNumber"=> "SIA1927"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "65",
                    "iataNumber"=> "S765",
                    "icaoNumber"=> "SBI65"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "44",
                "scheduledTime"=> "2019-03-09T14:35:00.000",
                "estimatedTime"=> "2019-03-09T14:35:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KZN",
                "icaoCode"=> "UWKD",
                "terminal"=> "1A",
                "scheduledTime"=> "2019-03-09T16:10:00.000",
                "estimatedTime"=> "2019-03-09T16:10:00.000"
            },
            "airline"=> {
                "name"=> "TAP Portugal",
                "iataCode"=> "TP",
                "icaoCode"=> "TAP"
            },
            "flight"=> {
                "number"=> "8140",
                "iataNumber"=> "TP8140",
                "icaoNumber"=> "TAP8140"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "65",
                    "iataNumber"=> "S765",
                    "icaoNumber"=> "SBI65"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "44",
                "scheduledTime"=> "2019-03-09T14:35:00.000",
                "estimatedTime"=> "2019-03-09T14:35:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KZN",
                "icaoCode"=> "UWKD",
                "terminal"=> "1A",
                "scheduledTime"=> "2019-03-09T16:10:00.000",
                "estimatedTime"=> "2019-03-09T16:10:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "65",
                "iataNumber"=> "S765",
                "icaoNumber"=> "SBI65"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "1",
                "scheduledTime"=> "2019-03-09T14:35:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SHJ",
                "icaoCode"=> "OMSJ",
                "scheduledTime"=> "2019-03-09T20:35:00.000"
            },
            "airline"=> {
                "name"=> "Air Arabia",
                "iataCode"=> "G9",
                "icaoCode"=> "ABY"
            },
            "flight"=> {
                "number"=> "956",
                "iataNumber"=> "G9956",
                "icaoNumber"=> "ABY956"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "43",
                "scheduledTime"=> "2019-03-09T14:35:00.000",
                "estimatedTime"=> "2019-03-09T14:35:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MRV",
                "icaoCode"=> "URMM",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T16:55:00.000",
                "estimatedTime"=> "2019-03-09T16:55:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7879",
                "iataNumber"=> "EK7879",
                "icaoNumber"=> "UAE7879"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1215",
                    "iataNumber"=> "GH1215",
                    "icaoNumber"=> "GLP1215"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "43",
                "scheduledTime"=> "2019-03-09T14:35:00.000",
                "estimatedTime"=> "2019-03-09T14:35:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MRV",
                "icaoCode"=> "URMM",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T16:55:00.000",
                "estimatedTime"=> "2019-03-09T16:55:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "4348",
                "iataNumber"=> "EY4348",
                "icaoNumber"=> "ETD4348"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1215",
                    "iataNumber"=> "GH1215",
                    "icaoNumber"=> "GLP1215"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "43",
                "scheduledTime"=> "2019-03-09T14:35:00.000",
                "estimatedTime"=> "2019-03-09T14:35:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MRV",
                "icaoCode"=> "URMM",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T16:55:00.000",
                "estimatedTime"=> "2019-03-09T16:55:00.000"
            },
            "airline"=> {
                "name"=> "El Al",
                "iataCode"=> "LY",
                "icaoCode"=> "ELY"
            },
            "flight"=> {
                "number"=> "8937",
                "iataNumber"=> "LY8937",
                "icaoNumber"=> "ELY8937"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1215",
                    "iataNumber"=> "GH1215",
                    "icaoNumber"=> "GLP1215"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "43",
                "scheduledTime"=> "2019-03-09T14:35:00.000",
                "estimatedTime"=> "2019-03-09T14:35:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MRV",
                "icaoCode"=> "URMM",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T16:55:00.000",
                "estimatedTime"=> "2019-03-09T16:55:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5694",
                "iataNumber"=> "QR5694",
                "icaoNumber"=> "QTR5694"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1215",
                    "iataNumber"=> "GH1215",
                    "icaoNumber"=> "GLP1215"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "43",
                "scheduledTime"=> "2019-03-09T14:35:00.000",
                "estimatedTime"=> "2019-03-09T14:35:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MRV",
                "icaoCode"=> "URMM",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T16:55:00.000",
                "estimatedTime"=> "2019-03-09T16:55:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "1215",
                "iataNumber"=> "S71215",
                "icaoNumber"=> "SBI1215"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1215",
                    "iataNumber"=> "GH1215",
                    "icaoNumber"=> "GLP1215"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "43",
                "scheduledTime"=> "2019-03-09T14:35:00.000",
                "estimatedTime"=> "2019-03-09T14:35:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MRV",
                "icaoCode"=> "URMM",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T16:55:00.000",
                "estimatedTime"=> "2019-03-09T16:55:00.000"
            },
            "airline"=> {
                "name"=> "Globus",
                "iataCode"=> "GH",
                "icaoCode"=> "GLP"
            },
            "flight"=> {
                "number"=> "1215",
                "iataNumber"=> "GH1215",
                "icaoNumber"=> "GLP1215"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "41",
                "scheduledTime"=> "2019-03-09T14:40:00.000",
                "estimatedTime"=> "2019-03-09T14:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SVX",
                "icaoCode"=> "USSS",
                "scheduledTime"=> "2019-03-09T19:05:00.000",
                "estimatedTime"=> "2019-03-09T19:05:00.000"
            },
            "airline"=> {
                "name"=> "Air Moldova",
                "iataCode"=> "9U",
                "icaoCode"=> "MLD"
            },
            "flight"=> {
                "number"=> "9055",
                "iataNumber"=> "9U9055",
                "icaoNumber"=> "MLD9055"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "55",
                    "iataNumber"=> "S755",
                    "icaoNumber"=> "SBI55"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "41",
                "scheduledTime"=> "2019-03-09T14:40:00.000",
                "estimatedTime"=> "2019-03-09T14:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SVX",
                "icaoCode"=> "USSS",
                "scheduledTime"=> "2019-03-09T19:05:00.000",
                "estimatedTime"=> "2019-03-09T19:05:00.000"
            },
            "airline"=> {
                "name"=> "Belavia",
                "iataCode"=> "B2",
                "icaoCode"=> "BRU"
            },
            "flight"=> {
                "number"=> "55",
                "iataNumber"=> "B255",
                "icaoNumber"=> "BRU55"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "55",
                    "iataNumber"=> "S755",
                    "icaoNumber"=> "SBI55"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "41",
                "scheduledTime"=> "2019-03-09T14:40:00.000",
                "estimatedTime"=> "2019-03-09T14:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SVX",
                "icaoCode"=> "USSS",
                "scheduledTime"=> "2019-03-09T19:05:00.000",
                "estimatedTime"=> "2019-03-09T19:05:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "4344",
                "iataNumber"=> "EY4344",
                "icaoNumber"=> "ETD4344"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "55",
                    "iataNumber"=> "S755",
                    "icaoNumber"=> "SBI55"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "41",
                "scheduledTime"=> "2019-03-09T14:40:00.000",
                "estimatedTime"=> "2019-03-09T14:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SVX",
                "icaoCode"=> "USSS",
                "scheduledTime"=> "2019-03-09T19:05:00.000",
                "estimatedTime"=> "2019-03-09T19:05:00.000"
            },
            "airline"=> {
                "name"=> "AZAL Azerbaijan Airlines",
                "iataCode"=> "J2",
                "icaoCode"=> "AHY"
            },
            "flight"=> {
                "number"=> "6055",
                "iataNumber"=> "J26055",
                "icaoNumber"=> "AHY6055"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "55",
                    "iataNumber"=> "S755",
                    "icaoNumber"=> "SBI55"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "41",
                "scheduledTime"=> "2019-03-09T14:40:00.000",
                "estimatedTime"=> "2019-03-09T14:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SVX",
                "icaoCode"=> "USSS",
                "scheduledTime"=> "2019-03-09T19:05:00.000",
                "estimatedTime"=> "2019-03-09T19:05:00.000"
            },
            "airline"=> {
                "name"=> "El Al",
                "iataCode"=> "LY",
                "icaoCode"=> "ELY"
            },
            "flight"=> {
                "number"=> "8943",
                "iataNumber"=> "LY8943",
                "icaoNumber"=> "ELY8943"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "55",
                    "iataNumber"=> "S755",
                    "icaoNumber"=> "SBI55"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "41",
                "scheduledTime"=> "2019-03-09T14:40:00.000",
                "estimatedTime"=> "2019-03-09T14:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SVX",
                "icaoCode"=> "USSS",
                "scheduledTime"=> "2019-03-09T19:05:00.000",
                "estimatedTime"=> "2019-03-09T19:05:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5748",
                "iataNumber"=> "QR5748",
                "icaoNumber"=> "QTR5748"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "55",
                    "iataNumber"=> "S755",
                    "icaoNumber"=> "SBI55"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "41",
                "scheduledTime"=> "2019-03-09T14:40:00.000",
                "estimatedTime"=> "2019-03-09T14:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SVX",
                "icaoCode"=> "USSS",
                "scheduledTime"=> "2019-03-09T19:05:00.000",
                "estimatedTime"=> "2019-03-09T19:05:00.000"
            },
            "airline"=> {
                "name"=> "Singapore Airlines",
                "iataCode"=> "SQ",
                "icaoCode"=> "SIA"
            },
            "flight"=> {
                "number"=> "1923",
                "iataNumber"=> "SQ1923",
                "icaoNumber"=> "SIA1923"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "55",
                    "iataNumber"=> "S755",
                    "icaoNumber"=> "SBI55"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "41",
                "scheduledTime"=> "2019-03-09T14:40:00.000",
                "estimatedTime"=> "2019-03-09T14:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SVX",
                "icaoCode"=> "USSS",
                "scheduledTime"=> "2019-03-09T19:05:00.000",
                "estimatedTime"=> "2019-03-09T19:05:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "55",
                "iataNumber"=> "S755",
                "icaoNumber"=> "SBI55"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "17",
                "scheduledTime"=> "2019-03-09T14:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MSQ",
                "icaoCode"=> "UMMS",
                "scheduledTime"=> "2019-03-09T16:00:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "4527",
                "iataNumber"=> "S74527",
                "icaoNumber"=> "SBI4527"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Belavia",
                    "iataCode"=> "B2",
                    "icaoCode"=> "BRU"
                },
                "flight"=> {
                    "number"=> "952",
                    "iataNumber"=> "B2952",
                    "icaoNumber"=> "BRU952"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "17",
                "scheduledTime"=> "2019-03-09T14:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MSQ",
                "icaoCode"=> "UMMS",
                "scheduledTime"=> "2019-03-09T16:00:00.000"
            },
            "airline"=> {
                "name"=> "Belavia",
                "iataCode"=> "B2",
                "icaoCode"=> "BRU"
            },
            "flight"=> {
                "number"=> "952",
                "iataNumber"=> "B2952",
                "icaoNumber"=> "BRU952"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "14",
                "scheduledTime"=> "2019-03-09T14:50:00.000"
            },
            "arrival"=> {
                "iataCode"=> "BAH",
                "icaoCode"=> "OBBI",
                "scheduledTime"=> "2019-03-09T19:40:00.000"
            },
            "airline"=> {
                "name"=> "Gulf Air",
                "iataCode"=> "GF",
                "icaoCode"=> "GFA"
            },
            "flight"=> {
                "number"=> "15",
                "iataNumber"=> "GF15",
                "icaoNumber"=> "GFA15"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "32",
                "scheduledTime"=> "2019-03-09T14:55:00.000",
                "estimatedTime"=> "2019-03-09T14:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KUF",
                "icaoCode"=> "UWWW",
                "scheduledTime"=> "2019-03-09T17:45:00.000",
                "estimatedTime"=> "2019-03-09T17:45:00.000"
            },
            "airline"=> {
                "name"=> "Aegean Airlines",
                "iataCode"=> "A3",
                "icaoCode"=> "AEE"
            },
            "flight"=> {
                "number"=> "3545",
                "iataNumber"=> "A33545",
                "icaoNumber"=> "AEE3545"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "31",
                    "iataNumber"=> "S731",
                    "icaoNumber"=> "SBI31"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "32",
                "scheduledTime"=> "2019-03-09T14:55:00.000",
                "estimatedTime"=> "2019-03-09T14:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KUF",
                "icaoCode"=> "UWWW",
                "scheduledTime"=> "2019-03-09T17:45:00.000",
                "estimatedTime"=> "2019-03-09T17:45:00.000"
            },
            "airline"=> {
                "name"=> "Royal Air Maroc",
                "iataCode"=> "AT",
                "icaoCode"=> "RAM"
            },
            "flight"=> {
                "number"=> "9019",
                "iataNumber"=> "AT9019",
                "icaoNumber"=> "RAM9019"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "31",
                    "iataNumber"=> "S731",
                    "icaoNumber"=> "SBI31"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "32",
                "scheduledTime"=> "2019-03-09T14:55:00.000",
                "estimatedTime"=> "2019-03-09T14:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KUF",
                "icaoCode"=> "UWWW",
                "scheduledTime"=> "2019-03-09T17:45:00.000",
                "estimatedTime"=> "2019-03-09T17:45:00.000"
            },
            "airline"=> {
                "name"=> "Belavia",
                "iataCode"=> "B2",
                "icaoCode"=> "BRU"
            },
            "flight"=> {
                "number"=> "31",
                "iataNumber"=> "B231",
                "icaoNumber"=> "BRU31"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "31",
                    "iataNumber"=> "S731",
                    "icaoNumber"=> "SBI31"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "32",
                "scheduledTime"=> "2019-03-09T14:55:00.000",
                "estimatedTime"=> "2019-03-09T14:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KUF",
                "icaoCode"=> "UWWW",
                "scheduledTime"=> "2019-03-09T17:45:00.000",
                "estimatedTime"=> "2019-03-09T17:45:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7849",
                "iataNumber"=> "EK7849",
                "icaoNumber"=> "UAE7849"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "31",
                    "iataNumber"=> "S731",
                    "icaoNumber"=> "SBI31"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "32",
                "scheduledTime"=> "2019-03-09T14:55:00.000",
                "estimatedTime"=> "2019-03-09T14:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KUF",
                "icaoCode"=> "UWWW",
                "scheduledTime"=> "2019-03-09T17:45:00.000",
                "estimatedTime"=> "2019-03-09T17:45:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "4333",
                "iataNumber"=> "EY4333",
                "icaoNumber"=> "ETD4333"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "31",
                    "iataNumber"=> "S731",
                    "icaoNumber"=> "SBI31"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "32",
                "scheduledTime"=> "2019-03-09T14:55:00.000",
                "estimatedTime"=> "2019-03-09T14:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KUF",
                "icaoCode"=> "UWWW",
                "scheduledTime"=> "2019-03-09T17:45:00.000",
                "estimatedTime"=> "2019-03-09T17:45:00.000"
            },
            "airline"=> {
                "name"=> "El Al",
                "iataCode"=> "LY",
                "icaoCode"=> "ELY"
            },
            "flight"=> {
                "number"=> "8931",
                "iataNumber"=> "LY8931",
                "icaoNumber"=> "ELY8931"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "31",
                    "iataNumber"=> "S731",
                    "icaoNumber"=> "SBI31"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "32",
                "scheduledTime"=> "2019-03-09T14:55:00.000",
                "estimatedTime"=> "2019-03-09T14:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KUF",
                "icaoCode"=> "UWWW",
                "scheduledTime"=> "2019-03-09T17:45:00.000",
                "estimatedTime"=> "2019-03-09T17:45:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5736",
                "iataNumber"=> "QR5736",
                "icaoNumber"=> "QTR5736"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "31",
                    "iataNumber"=> "S731",
                    "icaoNumber"=> "SBI31"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "32",
                "scheduledTime"=> "2019-03-09T14:55:00.000",
                "estimatedTime"=> "2019-03-09T14:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KUF",
                "icaoCode"=> "UWWW",
                "scheduledTime"=> "2019-03-09T17:45:00.000",
                "estimatedTime"=> "2019-03-09T17:45:00.000"
            },
            "airline"=> {
                "name"=> "Singapore Airlines",
                "iataCode"=> "SQ",
                "icaoCode"=> "SIA"
            },
            "flight"=> {
                "number"=> "1915",
                "iataNumber"=> "SQ1915",
                "icaoNumber"=> "SIA1915"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "31",
                    "iataNumber"=> "S731",
                    "icaoNumber"=> "SBI31"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "32",
                "scheduledTime"=> "2019-03-09T14:55:00.000",
                "estimatedTime"=> "2019-03-09T14:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KUF",
                "icaoCode"=> "UWWW",
                "scheduledTime"=> "2019-03-09T17:45:00.000",
                "estimatedTime"=> "2019-03-09T17:45:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "31",
                "iataNumber"=> "S731",
                "icaoNumber"=> "SBI31"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "34",
                "scheduledTime"=> "2019-03-09T15:00:00.000",
                "estimatedTime"=> "2019-03-09T15:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T16:40:00.000",
                "estimatedTime"=> "2019-03-09T16:40:00.000"
            },
            "airline"=> {
                "name"=> "Aegean Airlines",
                "iataCode"=> "A3",
                "icaoCode"=> "AEE"
            },
            "flight"=> {
                "number"=> "3506",
                "iataNumber"=> "A33506",
                "icaoNumber"=> "AEE3506"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "49",
                    "iataNumber"=> "S749",
                    "icaoNumber"=> "SBI49"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "34",
                "scheduledTime"=> "2019-03-09T15:00:00.000",
                "estimatedTime"=> "2019-03-09T15:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T16:40:00.000",
                "estimatedTime"=> "2019-03-09T16:40:00.000"
            },
            "airline"=> {
                "name"=> "Royal Air Maroc",
                "iataCode"=> "AT",
                "icaoCode"=> "RAM"
            },
            "flight"=> {
                "number"=> "9031",
                "iataNumber"=> "AT9031",
                "icaoNumber"=> "RAM9031"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "49",
                    "iataNumber"=> "S749",
                    "icaoNumber"=> "SBI49"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "34",
                "scheduledTime"=> "2019-03-09T15:00:00.000",
                "estimatedTime"=> "2019-03-09T15:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T16:40:00.000",
                "estimatedTime"=> "2019-03-09T16:40:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7877",
                "iataNumber"=> "EK7877",
                "icaoNumber"=> "UAE7877"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "49",
                    "iataNumber"=> "S749",
                    "icaoNumber"=> "SBI49"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "34",
                "scheduledTime"=> "2019-03-09T15:00:00.000",
                "estimatedTime"=> "2019-03-09T15:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T16:40:00.000",
                "estimatedTime"=> "2019-03-09T16:40:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "4304",
                "iataNumber"=> "EY4304",
                "icaoNumber"=> "ETD4304"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "49",
                    "iataNumber"=> "S749",
                    "icaoNumber"=> "SBI49"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "34",
                "scheduledTime"=> "2019-03-09T15:00:00.000",
                "estimatedTime"=> "2019-03-09T15:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T16:40:00.000",
                "estimatedTime"=> "2019-03-09T16:40:00.000"
            },
            "airline"=> {
                "name"=> "El Al",
                "iataCode"=> "LY",
                "icaoCode"=> "ELY"
            },
            "flight"=> {
                "number"=> "8877",
                "iataNumber"=> "LY8877",
                "icaoNumber"=> "ELY8877"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "49",
                    "iataNumber"=> "S749",
                    "icaoNumber"=> "SBI49"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "34",
                "scheduledTime"=> "2019-03-09T15:00:00.000",
                "estimatedTime"=> "2019-03-09T15:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T16:40:00.000",
                "estimatedTime"=> "2019-03-09T16:40:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5744",
                "iataNumber"=> "QR5744",
                "icaoNumber"=> "QTR5744"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "49",
                    "iataNumber"=> "S749",
                    "icaoNumber"=> "SBI49"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "34",
                "scheduledTime"=> "2019-03-09T15:00:00.000",
                "estimatedTime"=> "2019-03-09T15:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T16:40:00.000",
                "estimatedTime"=> "2019-03-09T16:40:00.000"
            },
            "airline"=> {
                "name"=> "Singapore Airlines",
                "iataCode"=> "SQ",
                "icaoCode"=> "SIA"
            },
            "flight"=> {
                "number"=> "1911",
                "iataNumber"=> "SQ1911",
                "icaoNumber"=> "SIA1911"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "49",
                    "iataNumber"=> "S749",
                    "icaoNumber"=> "SBI49"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "34",
                "scheduledTime"=> "2019-03-09T15:00:00.000",
                "estimatedTime"=> "2019-03-09T15:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T16:40:00.000",
                "estimatedTime"=> "2019-03-09T16:40:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "49",
                "iataNumber"=> "S749",
                "icaoNumber"=> "SBI49"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T15:05:00.000",
                "estimatedTime"=> "2019-03-09T15:05:00.000"
            },
            "arrival"=> {
                "iataCode"=> "PEE",
                "icaoCode"=> "USPP",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T19:10:00.000",
                "estimatedTime"=> "2019-03-09T19:10:00.000"
            },
            "airline"=> {
                "name"=> "Aegean Airlines",
                "iataCode"=> "A3",
                "icaoCode"=> "AEE"
            },
            "flight"=> {
                "number"=> "3541",
                "iataNumber"=> "A33541",
                "icaoNumber"=> "AEE3541"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "303",
                    "iataNumber"=> "S7303",
                    "icaoNumber"=> "SBI303"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T15:05:00.000",
                "estimatedTime"=> "2019-03-09T15:05:00.000"
            },
            "arrival"=> {
                "iataCode"=> "PEE",
                "icaoCode"=> "USPP",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T19:10:00.000",
                "estimatedTime"=> "2019-03-09T19:10:00.000"
            },
            "airline"=> {
                "name"=> "Royal Air Maroc",
                "iataCode"=> "AT",
                "icaoCode"=> "RAM"
            },
            "flight"=> {
                "number"=> "9015",
                "iataNumber"=> "AT9015",
                "icaoNumber"=> "RAM9015"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "303",
                    "iataNumber"=> "S7303",
                    "icaoNumber"=> "SBI303"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T15:05:00.000",
                "estimatedTime"=> "2019-03-09T15:05:00.000"
            },
            "arrival"=> {
                "iataCode"=> "PEE",
                "icaoCode"=> "USPP",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T19:10:00.000",
                "estimatedTime"=> "2019-03-09T19:10:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "4335",
                "iataNumber"=> "EY4335",
                "icaoNumber"=> "ETD4335"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "303",
                    "iataNumber"=> "S7303",
                    "icaoNumber"=> "SBI303"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T15:05:00.000",
                "estimatedTime"=> "2019-03-09T15:05:00.000"
            },
            "arrival"=> {
                "iataCode"=> "PEE",
                "icaoCode"=> "USPP",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T19:10:00.000",
                "estimatedTime"=> "2019-03-09T19:10:00.000"
            },
            "airline"=> {
                "name"=> "El Al",
                "iataCode"=> "LY",
                "icaoCode"=> "ELY"
            },
            "flight"=> {
                "number"=> "8985",
                "iataNumber"=> "LY8985",
                "icaoNumber"=> "ELY8985"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "303",
                    "iataNumber"=> "S7303",
                    "icaoNumber"=> "SBI303"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T15:05:00.000",
                "estimatedTime"=> "2019-03-09T15:05:00.000"
            },
            "arrival"=> {
                "iataCode"=> "PEE",
                "icaoCode"=> "USPP",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T19:10:00.000",
                "estimatedTime"=> "2019-03-09T19:10:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5726",
                "iataNumber"=> "QR5726",
                "icaoNumber"=> "QTR5726"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "303",
                    "iataNumber"=> "S7303",
                    "icaoNumber"=> "SBI303"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T15:05:00.000",
                "estimatedTime"=> "2019-03-09T15:05:00.000"
            },
            "arrival"=> {
                "iataCode"=> "PEE",
                "icaoCode"=> "USPP",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T19:10:00.000",
                "estimatedTime"=> "2019-03-09T19:10:00.000"
            },
            "airline"=> {
                "name"=> "Singapore Airlines",
                "iataCode"=> "SQ",
                "icaoCode"=> "SIA"
            },
            "flight"=> {
                "number"=> "1963",
                "iataNumber"=> "SQ1963",
                "icaoNumber"=> "SIA1963"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "303",
                    "iataNumber"=> "S7303",
                    "icaoNumber"=> "SBI303"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "37",
                "scheduledTime"=> "2019-03-09T15:05:00.000",
                "estimatedTime"=> "2019-03-09T15:05:00.000"
            },
            "arrival"=> {
                "iataCode"=> "PEE",
                "icaoCode"=> "USPP",
                "terminal"=> "??",
                "scheduledTime"=> "2019-03-09T19:10:00.000",
                "estimatedTime"=> "2019-03-09T19:10:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "303",
                "iataNumber"=> "S7303",
                "icaoNumber"=> "SBI303"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "13",
                "scheduledTime"=> "2019-03-09T15:10:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SIN",
                "icaoCode"=> "WSSS",
                "scheduledTime"=> "2019-03-10T06:40:00.000"
            },
            "airline"=> {
                "name"=> "Air New Zealand",
                "iataCode"=> "NZ",
                "icaoCode"=> "ANZ"
            },
            "flight"=> {
                "number"=> "3361",
                "iataNumber"=> "NZ3361",
                "icaoNumber"=> "ANZ3361"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Singapore Airlines",
                    "iataCode"=> "SQ",
                    "icaoCode"=> "SIA"
                },
                "flight"=> {
                    "number"=> "361",
                    "iataNumber"=> "SQ361",
                    "icaoNumber"=> "SIA361"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "13",
                "scheduledTime"=> "2019-03-09T15:10:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SIN",
                "icaoCode"=> "WSSS",
                "scheduledTime"=> "2019-03-10T06:40:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "4407",
                "iataNumber"=> "S74407",
                "icaoNumber"=> "SBI4407"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Singapore Airlines",
                    "iataCode"=> "SQ",
                    "icaoCode"=> "SIA"
                },
                "flight"=> {
                    "number"=> "361",
                    "iataNumber"=> "SQ361",
                    "icaoNumber"=> "SIA361"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "13",
                "scheduledTime"=> "2019-03-09T15:10:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SIN",
                "icaoCode"=> "WSSS",
                "scheduledTime"=> "2019-03-10T06:40:00.000"
            },
            "airline"=> {
                "name"=> "SAS",
                "iataCode"=> "SK",
                "icaoCode"=> "SAS"
            },
            "flight"=> {
                "number"=> "8047",
                "iataNumber"=> "SK8047",
                "icaoNumber"=> "SAS8047"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Singapore Airlines",
                    "iataCode"=> "SQ",
                    "icaoCode"=> "SIA"
                },
                "flight"=> {
                    "number"=> "361",
                    "iataNumber"=> "SQ361",
                    "icaoNumber"=> "SIA361"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "13",
                "scheduledTime"=> "2019-03-09T15:10:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SIN",
                "icaoCode"=> "WSSS",
                "scheduledTime"=> "2019-03-10T06:40:00.000"
            },
            "airline"=> {
                "name"=> "Virgin Australia",
                "iataCode"=> "VA",
                "icaoCode"=> "VOZ"
            },
            "flight"=> {
                "number"=> "5679",
                "iataNumber"=> "VA5679",
                "icaoNumber"=> "VOZ5679"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Singapore Airlines",
                    "iataCode"=> "SQ",
                    "icaoCode"=> "SIA"
                },
                "flight"=> {
                    "number"=> "361",
                    "iataNumber"=> "SQ361",
                    "icaoNumber"=> "SIA361"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "13",
                "scheduledTime"=> "2019-03-09T15:10:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SIN",
                "icaoCode"=> "WSSS",
                "scheduledTime"=> "2019-03-10T06:40:00.000"
            },
            "airline"=> {
                "name"=> "Singapore Airlines",
                "iataCode"=> "SQ",
                "icaoCode"=> "SIA"
            },
            "flight"=> {
                "number"=> "361",
                "iataNumber"=> "SQ361",
                "icaoNumber"=> "SIA361"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "12",
                "scheduledTime"=> "2019-03-09T15:25:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SAW",
                "icaoCode"=> "LTFJ",
                "scheduledTime"=> "2019-03-09T18:30:00.000"
            },
            "airline"=> {
                "name"=> "Pegasus",
                "iataCode"=> "PC",
                "icaoCode"=> "PGT"
            },
            "flight"=> {
                "number"=> "387",
                "iataNumber"=> "PC387",
                "icaoNumber"=> "PGT387"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "10",
                "scheduledTime"=> "2019-03-09T15:30:00.000"
            },
            "arrival"=> {
                "iataCode"=> "BCN",
                "icaoCode"=> "LEBL",
                "terminal"=> "1",
                "baggage"=> "11",
                "scheduledTime"=> "2019-03-09T18:10:00.000",
                "estimatedTime"=> "2019-03-09T18:10:00.000"
            },
            "airline"=> {
                "name"=> "Iberia",
                "iataCode"=> "IB",
                "icaoCode"=> "IBE"
            },
            "flight"=> {
                "number"=> "5905",
                "iataNumber"=> "IB5905",
                "icaoNumber"=> "IBE5905"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Vueling",
                    "iataCode"=> "VY",
                    "icaoCode"=> "VLG"
                },
                "flight"=> {
                    "number"=> "7785",
                    "iataNumber"=> "VY7785",
                    "icaoNumber"=> "VLG7785"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "10",
                "scheduledTime"=> "2019-03-09T15:30:00.000"
            },
            "arrival"=> {
                "iataCode"=> "BCN",
                "icaoCode"=> "LEBL",
                "terminal"=> "1",
                "baggage"=> "11",
                "scheduledTime"=> "2019-03-09T18:10:00.000",
                "estimatedTime"=> "2019-03-09T18:10:00.000"
            },
            "airline"=> {
                "name"=> "Vueling",
                "iataCode"=> "VY",
                "icaoCode"=> "VLG"
            },
            "flight"=> {
                "number"=> "7785",
                "iataNumber"=> "VY7785",
                "icaoNumber"=> "VLG7785"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "52",
                "scheduledTime"=> "2019-03-09T15:30:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T16:50:00.000"
            },
            "airline"=> {
                "name"=> "Alrosa Air",
                "iataCode"=> "6R",
                "icaoCode"=> "DRU"
            },
            "flight"=> {
                "number"=> "605",
                "iataNumber"=> "6R605",
                "icaoNumber"=> "DRU605"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "1",
                "scheduledTime"=> "2019-03-09T15:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "VIE",
                "icaoCode"=> "LOWW",
                "scheduledTime"=> "2019-03-09T16:40:00.000"
            },
            "airline"=> {
                "name"=> "Austrian",
                "iataCode"=> "OS",
                "icaoCode"=> "AUA"
            },
            "flight"=> {
                "number"=> "602",
                "iataNumber"=> "OS602",
                "icaoNumber"=> "AUA602"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "7",
                "scheduledTime"=> "2019-03-09T16:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "GVA",
                "icaoCode"=> "LSGG",
                "scheduledTime"=> "2019-03-09T17:55:00.000"
            },
            "airline"=> {
                "name"=> "SWISS",
                "iataCode"=> "LX",
                "icaoCode"=> "SWR"
            },
            "flight"=> {
                "number"=> "1337",
                "iataNumber"=> "LX1337",
                "icaoNumber"=> "SWR1337"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "20",
                "scheduledTime"=> "2019-03-09T16:00:00.000",
                "estimatedTime"=> "2019-03-09T16:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "EVN",
                "icaoCode"=> "UDYZ",
                "scheduledTime"=> "2019-03-09T19:40:00.000",
                "estimatedTime"=> "2019-03-09T19:27:00.000"
            },
            "airline"=> {
                "name"=> "Red Wings",
                "iataCode"=> "WZ",
                "icaoCode"=> "RWZ"
            },
            "flight"=> {
                "number"=> "323",
                "iataNumber"=> "WZ323",
                "icaoNumber"=> "RWZ323"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "42",
                "scheduledTime"=> "2019-03-09T16:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KGD",
                "icaoCode"=> "UMKK",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-09T17:05:00.000"
            },
            "airline"=> {
                "name"=> "Ural Airlines",
                "iataCode"=> "U6",
                "icaoCode"=> "SVR"
            },
            "flight"=> {
                "number"=> "167",
                "iataNumber"=> "U6167",
                "icaoNumber"=> "SVR167"
            }
        },
        {
            "type"=> "departure",
            "status"=> "cancelled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T16:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "UGC",
                "icaoCode"=> "UTNU",
                "scheduledTime"=> "2019-03-09T21:30:00.000"
            },
            "airline"=> {
                "name"=> "Ural Airlines",
                "iataCode"=> "U6",
                "icaoCode"=> "SVR"
            },
            "flight"=> {
                "number"=> "2697",
                "iataNumber"=> "U62697",
                "icaoNumber"=> "SVR2697"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "45",
                "scheduledTime"=> "2019-03-09T16:20:00.000",
                "estimatedTime"=> "2019-03-09T16:20:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KRR",
                "icaoCode"=> "URKK",
                "scheduledTime"=> "2019-03-09T18:45:00.000",
                "estimatedTime"=> "2019-03-09T18:45:00.000"
            },
            "airline"=> {
                "name"=> "Royal Air Maroc",
                "iataCode"=> "AT",
                "icaoCode"=> "RAM"
            },
            "flight"=> {
                "number"=> "9003",
                "iataNumber"=> "AT9003",
                "icaoNumber"=> "RAM9003"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1143",
                    "iataNumber"=> "GH1143",
                    "icaoNumber"=> "GLP1143"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "45",
                "scheduledTime"=> "2019-03-09T16:20:00.000",
                "estimatedTime"=> "2019-03-09T16:20:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KRR",
                "icaoCode"=> "URKK",
                "scheduledTime"=> "2019-03-09T18:45:00.000",
                "estimatedTime"=> "2019-03-09T18:45:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7841",
                "iataNumber"=> "EK7841",
                "icaoNumber"=> "UAE7841"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1143",
                    "iataNumber"=> "GH1143",
                    "icaoNumber"=> "GLP1143"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "45",
                "scheduledTime"=> "2019-03-09T16:20:00.000",
                "estimatedTime"=> "2019-03-09T16:20:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KRR",
                "icaoCode"=> "URKK",
                "scheduledTime"=> "2019-03-09T18:45:00.000",
                "estimatedTime"=> "2019-03-09T18:45:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "4326",
                "iataNumber"=> "EY4326",
                "icaoNumber"=> "ETD4326"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1143",
                    "iataNumber"=> "GH1143",
                    "icaoNumber"=> "GLP1143"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "45",
                "scheduledTime"=> "2019-03-09T16:20:00.000",
                "estimatedTime"=> "2019-03-09T16:20:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KRR",
                "icaoCode"=> "URKK",
                "scheduledTime"=> "2019-03-09T18:45:00.000",
                "estimatedTime"=> "2019-03-09T18:45:00.000"
            },
            "airline"=> {
                "name"=> "El Al",
                "iataCode"=> "LY",
                "icaoCode"=> "ELY"
            },
            "flight"=> {
                "number"=> "8903",
                "iataNumber"=> "LY8903",
                "icaoNumber"=> "ELY8903"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1143",
                    "iataNumber"=> "GH1143",
                    "icaoNumber"=> "GLP1143"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "45",
                "scheduledTime"=> "2019-03-09T16:20:00.000",
                "estimatedTime"=> "2019-03-09T16:20:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KRR",
                "icaoCode"=> "URKK",
                "scheduledTime"=> "2019-03-09T18:45:00.000",
                "estimatedTime"=> "2019-03-09T18:45:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5758",
                "iataNumber"=> "QR5758",
                "icaoNumber"=> "QTR5758"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1143",
                    "iataNumber"=> "GH1143",
                    "icaoNumber"=> "GLP1143"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "45",
                "scheduledTime"=> "2019-03-09T16:20:00.000",
                "estimatedTime"=> "2019-03-09T16:20:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KRR",
                "icaoCode"=> "URKK",
                "scheduledTime"=> "2019-03-09T18:45:00.000",
                "estimatedTime"=> "2019-03-09T18:45:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "1143",
                "iataNumber"=> "S71143",
                "icaoNumber"=> "SBI1143"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1143",
                    "iataNumber"=> "GH1143",
                    "icaoNumber"=> "GLP1143"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "45",
                "scheduledTime"=> "2019-03-09T16:20:00.000",
                "estimatedTime"=> "2019-03-09T16:20:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KRR",
                "icaoCode"=> "URKK",
                "scheduledTime"=> "2019-03-09T18:45:00.000",
                "estimatedTime"=> "2019-03-09T18:45:00.000"
            },
            "airline"=> {
                "name"=> "Globus",
                "iataCode"=> "GH",
                "icaoCode"=> "GLP"
            },
            "flight"=> {
                "number"=> "1143",
                "iataNumber"=> "GH1143",
                "icaoNumber"=> "GLP1143"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "43",
                "scheduledTime"=> "2019-03-09T16:20:00.000",
                "estimatedTime"=> "2019-03-09T16:20:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SIP",
                "icaoCode"=> "UKFF",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T19:05:00.000",
                "estimatedTime"=> "2019-03-09T19:05:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "161",
                "iataNumber"=> "S7161",
                "icaoNumber"=> "SBI161"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "161",
                    "iataNumber"=> "GH161",
                    "icaoNumber"=> "GLP161"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "43",
                "scheduledTime"=> "2019-03-09T16:20:00.000",
                "estimatedTime"=> "2019-03-09T16:20:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SIP",
                "icaoCode"=> "UKFF",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T19:05:00.000",
                "estimatedTime"=> "2019-03-09T19:05:00.000"
            },
            "airline"=> {
                "name"=> "Globus",
                "iataCode"=> "GH",
                "icaoCode"=> "GLP"
            },
            "flight"=> {
                "number"=> "161",
                "iataNumber"=> "GH161",
                "icaoNumber"=> "GLP161"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "48",
                "scheduledTime"=> "2019-03-09T16:25:00.000",
                "estimatedTime"=> "2019-03-09T16:25:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T18:05:00.000",
                "estimatedTime"=> "2019-03-09T18:05:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "13",
                "iataNumber"=> "S713",
                "icaoNumber"=> "SBI13"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "34",
                "delay": 60,
                "scheduledTime"=> "2019-03-09T15:30:00.000",
                "estimatedTime"=> "2019-03-09T16:30:00.000"
            },
            "arrival"=> {
                "iataCode"=> "RTW",
                "icaoCode"=> "UWSS",
                "delay": 64,
                "scheduledTime"=> "2019-03-09T18:10:00.000",
                "estimatedTime"=> "2019-03-09T19:14:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "205",
                "iataNumber"=> "S7205",
                "icaoNumber"=> "SBI205"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T16:40:00.000",
                "estimatedTime"=> "2019-03-09T16:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AAQ",
                "icaoCode"=> "URKA",
                "scheduledTime"=> "2019-03-09T19:00:00.000",
                "estimatedTime"=> "2019-03-09T19:00:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7898",
                "iataNumber"=> "EK7898",
                "icaoNumber"=> "UAE7898"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1127",
                    "iataNumber"=> "GH1127",
                    "icaoNumber"=> "GLP1127"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T16:40:00.000",
                "estimatedTime"=> "2019-03-09T16:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AAQ",
                "icaoCode"=> "URKA",
                "scheduledTime"=> "2019-03-09T19:00:00.000",
                "estimatedTime"=> "2019-03-09T19:00:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "4339",
                "iataNumber"=> "EY4339",
                "icaoNumber"=> "ETD4339"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1127",
                    "iataNumber"=> "GH1127",
                    "icaoNumber"=> "GLP1127"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T16:40:00.000",
                "estimatedTime"=> "2019-03-09T16:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AAQ",
                "icaoCode"=> "URKA",
                "scheduledTime"=> "2019-03-09T19:00:00.000",
                "estimatedTime"=> "2019-03-09T19:00:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "1127",
                "iataNumber"=> "S71127",
                "icaoNumber"=> "SBI1127"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1127",
                    "iataNumber"=> "GH1127",
                    "icaoNumber"=> "GLP1127"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T16:40:00.000",
                "estimatedTime"=> "2019-03-09T16:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AAQ",
                "icaoCode"=> "URKA",
                "scheduledTime"=> "2019-03-09T19:00:00.000",
                "estimatedTime"=> "2019-03-09T19:00:00.000"
            },
            "airline"=> {
                "name"=> "Globus",
                "iataCode"=> "GH",
                "icaoCode"=> "GLP"
            },
            "flight"=> {
                "number"=> "1127",
                "iataNumber"=> "GH1127",
                "icaoNumber"=> "GLP1127"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SIP",
                "icaoCode"=> "UKFF",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T19:25:00.000"
            },
            "airline"=> {
                "name"=> "Ural Airlines",
                "iataCode"=> "U6",
                "icaoCode"=> "SVR"
            },
            "flight"=> {
                "number"=> "2841",
                "iataNumber"=> "U62841",
                "icaoNumber"=> "SVR2841"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:00:00.000",
                "estimatedTime"=> "2019-03-09T17:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T19:25:00.000",
                "estimatedTime"=> "2019-03-09T19:25:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7809",
                "iataNumber"=> "EK7809",
                "icaoNumber"=> "UAE7809"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1027",
                    "iataNumber"=> "S71027",
                    "icaoNumber"=> "SBI1027"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:00:00.000",
                "estimatedTime"=> "2019-03-09T17:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T19:25:00.000",
                "estimatedTime"=> "2019-03-09T19:25:00.000"
            },
            "airline"=> {
                "name"=> "Etihad Airways",
                "iataCode"=> "EY",
                "icaoCode"=> "ETD"
            },
            "flight"=> {
                "number"=> "5121",
                "iataNumber"=> "EY5121",
                "icaoNumber"=> "ETD5121"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1027",
                    "iataNumber"=> "S71027",
                    "icaoNumber"=> "SBI1027"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:00:00.000",
                "estimatedTime"=> "2019-03-09T17:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T19:25:00.000",
                "estimatedTime"=> "2019-03-09T19:25:00.000"
            },
            "airline"=> {
                "name"=> "JAL",
                "iataCode"=> "JL",
                "icaoCode"=> "JAL"
            },
            "flight"=> {
                "number"=> "7193",
                "iataNumber"=> "JL7193",
                "icaoNumber"=> "JAL7193"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1027",
                    "iataNumber"=> "S71027",
                    "icaoNumber"=> "SBI1027"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:00:00.000",
                "estimatedTime"=> "2019-03-09T17:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T19:25:00.000",
                "estimatedTime"=> "2019-03-09T19:25:00.000"
            },
            "airline"=> {
                "name"=> "El Al",
                "iataCode"=> "LY",
                "icaoCode"=> "ELY"
            },
            "flight"=> {
                "number"=> "8995",
                "iataNumber"=> "LY8995",
                "icaoNumber"=> "ELY8995"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1027",
                    "iataNumber"=> "S71027",
                    "icaoNumber"=> "SBI1027"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:00:00.000",
                "estimatedTime"=> "2019-03-09T17:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T19:25:00.000",
                "estimatedTime"=> "2019-03-09T19:25:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5700",
                "iataNumber"=> "QR5700",
                "icaoNumber"=> "QTR5700"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1027",
                    "iataNumber"=> "S71027",
                    "icaoNumber"=> "SBI1027"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:00:00.000",
                "estimatedTime"=> "2019-03-09T17:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T19:25:00.000",
                "estimatedTime"=> "2019-03-09T19:25:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "1027",
                "iataNumber"=> "S71027",
                "icaoNumber"=> "SBI1027"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "delay": 18,
                "scheduledTime"=> "2019-03-09T16:45:00.000",
                "estimatedTime"=> "2019-03-09T17:03:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LHR",
                "icaoCode"=> "EGLL",
                "terminal"=> "5",
                "delay": 20,
                "scheduledTime"=> "2019-03-09T17:50:00.000",
                "estimatedTime"=> "2019-03-09T18:10:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "4003",
                "iataNumber"=> "S74003",
                "icaoNumber"=> "SBI4003"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "British Airways",
                    "iataCode"=> "BA",
                    "icaoCode"=> "BAW"
                },
                "flight"=> {
                    "number"=> "232",
                    "iataNumber"=> "BA232",
                    "icaoNumber"=> "BAW232"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "delay": 18,
                "scheduledTime"=> "2019-03-09T16:45:00.000",
                "estimatedTime"=> "2019-03-09T17:03:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LHR",
                "icaoCode"=> "EGLL",
                "terminal"=> "5",
                "delay": 20,
                "scheduledTime"=> "2019-03-09T17:50:00.000",
                "estimatedTime"=> "2019-03-09T18:10:00.000"
            },
            "airline"=> {
                "name"=> "British Airways",
                "iataCode"=> "BA",
                "icaoCode"=> "BAW"
            },
            "flight"=> {
                "number"=> "232",
                "iataNumber"=> "BA232",
                "icaoNumber"=> "BAW232"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "13",
                "scheduledTime"=> "2019-03-09T17:05:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MUC",
                "icaoCode"=> "EDDM",
                "terminal"=> "2",
                "gate"=> "M23",
                "scheduledTime"=> "2019-03-09T18:30:00.000"
            },
            "airline"=> {
                "name"=> "Lufthansa",
                "iataCode"=> "LH",
                "icaoCode"=> "DLH"
            },
            "flight"=> {
                "number"=> "2529",
                "iataNumber"=> "LH2529",
                "icaoNumber"=> "DLH2529"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:10:00.000"
            },
            "arrival"=> {
                "iataCode"=> "ASB",
                "icaoCode"=> "UTAA",
                "scheduledTime"=> "2019-03-09T22:55:00.000"
            },
            "airline"=> {
                "name"=> "Turkmenistan Airlines",
                "iataCode"=> "T5",
                "icaoCode"=> "TUA"
            },
            "flight"=> {
                "number"=> "706",
                "iataNumber"=> "T5706",
                "icaoNumber"=> "TUA706"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:10:00.000",
                "estimatedTime"=> "2019-03-09T17:10:00.000"
            },
            "arrival"=> {
                "iataCode"=> "DXB",
                "icaoCode"=> "OMDB",
                "terminal"=> "3",
                "baggage"=> "305",
                "scheduledTime"=> "2019-03-09T23:25:00.000",
                "estimatedTime"=> "2019-03-09T23:10:00.000",
                "estimatedRunway"=> "2019-03-09T23:10:00.000"
            },
            "airline"=> {
                "name"=> "Qantas",
                "iataCode"=> "QF",
                "icaoCode"=> "QFA"
            },
            "flight"=> {
                "number"=> "8134",
                "iataNumber"=> "QF8134",
                "icaoNumber"=> "QFA8134"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Emirates",
                    "iataCode"=> "EK",
                    "icaoCode"=> "UAE"
                },
                "flight"=> {
                    "number"=> "134",
                    "iataNumber"=> "EK134",
                    "icaoNumber"=> "UAE134"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:10:00.000",
                "estimatedTime"=> "2019-03-09T17:10:00.000"
            },
            "arrival"=> {
                "iataCode"=> "DXB",
                "icaoCode"=> "OMDB",
                "terminal"=> "3",
                "baggage"=> "305",
                "scheduledTime"=> "2019-03-09T23:25:00.000",
                "estimatedTime"=> "2019-03-09T23:10:00.000",
                "estimatedRunway"=> "2019-03-09T23:10:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "4163",
                "iataNumber"=> "S74163",
                "icaoNumber"=> "SBI4163"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Emirates",
                    "iataCode"=> "EK",
                    "icaoCode"=> "UAE"
                },
                "flight"=> {
                    "number"=> "134",
                    "iataNumber"=> "EK134",
                    "icaoNumber"=> "UAE134"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:10:00.000",
                "estimatedTime"=> "2019-03-09T17:10:00.000"
            },
            "arrival"=> {
                "iataCode"=> "DXB",
                "icaoCode"=> "OMDB",
                "terminal"=> "3",
                "baggage"=> "305",
                "scheduledTime"=> "2019-03-09T23:25:00.000",
                "estimatedTime"=> "2019-03-09T23:10:00.000",
                "estimatedRunway"=> "2019-03-09T23:10:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "134",
                "iataNumber"=> "EK134",
                "icaoNumber"=> "UAE134"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:15:00.000",
                "estimatedTime"=> "2019-03-09T17:15:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OVB",
                "icaoCode"=> "UNNT",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-10T01:20:00.000",
                "estimatedTime"=> "2019-03-10T01:20:00.000"
            },
            "airline"=> {
                "name"=> "Aegean Airlines",
                "iataCode"=> "A3",
                "icaoCode"=> "AEE"
            },
            "flight"=> {
                "number"=> "3534",
                "iataNumber"=> "A33534",
                "icaoNumber"=> "AEE3534"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "181",
                    "iataNumber"=> "GH181",
                    "icaoNumber"=> "GLP181"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:15:00.000",
                "estimatedTime"=> "2019-03-09T17:15:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OVB",
                "icaoCode"=> "UNNT",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-10T01:20:00.000",
                "estimatedTime"=> "2019-03-10T01:20:00.000"
            },
            "airline"=> {
                "name"=> "British Airways",
                "iataCode"=> "BA",
                "icaoCode"=> "BAW"
            },
            "flight"=> {
                "number"=> "8811",
                "iataNumber"=> "BA8811",
                "icaoNumber"=> "BAW8811"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "181",
                    "iataNumber"=> "GH181",
                    "icaoNumber"=> "GLP181"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:15:00.000",
                "estimatedTime"=> "2019-03-09T17:15:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OVB",
                "icaoCode"=> "UNNT",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-10T01:20:00.000",
                "estimatedTime"=> "2019-03-10T01:20:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7887",
                "iataNumber"=> "EK7887",
                "icaoNumber"=> "UAE7887"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "181",
                    "iataNumber"=> "GH181",
                    "icaoNumber"=> "GLP181"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:15:00.000",
                "estimatedTime"=> "2019-03-09T17:15:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OVB",
                "icaoCode"=> "UNNT",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-10T01:20:00.000",
                "estimatedTime"=> "2019-03-10T01:20:00.000"
            },
            "airline"=> {
                "name"=> "JAL",
                "iataCode"=> "JL",
                "icaoCode"=> "JAL"
            },
            "flight"=> {
                "number"=> "7117",
                "iataNumber"=> "JL7117",
                "icaoNumber"=> "JAL7117"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "181",
                    "iataNumber"=> "GH181",
                    "icaoNumber"=> "GLP181"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:15:00.000",
                "estimatedTime"=> "2019-03-09T17:15:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OVB",
                "icaoCode"=> "UNNT",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-10T01:20:00.000",
                "estimatedTime"=> "2019-03-10T01:20:00.000"
            },
            "airline"=> {
                "name"=> "El Al",
                "iataCode"=> "LY",
                "icaoCode"=> "ELY"
            },
            "flight"=> {
                "number"=> "8981",
                "iataNumber"=> "LY8981",
                "icaoNumber"=> "ELY8981"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "181",
                    "iataNumber"=> "GH181",
                    "icaoNumber"=> "GLP181"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:15:00.000",
                "estimatedTime"=> "2019-03-09T17:15:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OVB",
                "icaoCode"=> "UNNT",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-10T01:20:00.000",
                "estimatedTime"=> "2019-03-10T01:20:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5750",
                "iataNumber"=> "QR5750",
                "icaoNumber"=> "QTR5750"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "181",
                    "iataNumber"=> "GH181",
                    "icaoNumber"=> "GLP181"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:15:00.000",
                "estimatedTime"=> "2019-03-09T17:15:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OVB",
                "icaoCode"=> "UNNT",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-10T01:20:00.000",
                "estimatedTime"=> "2019-03-10T01:20:00.000"
            },
            "airline"=> {
                "name"=> "Singapore Airlines",
                "iataCode"=> "SQ",
                "icaoCode"=> "SIA"
            },
            "flight"=> {
                "number"=> "1951",
                "iataNumber"=> "SQ1951",
                "icaoNumber"=> "SIA1951"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "181",
                    "iataNumber"=> "GH181",
                    "icaoNumber"=> "GLP181"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:15:00.000",
                "estimatedTime"=> "2019-03-09T17:15:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OVB",
                "icaoCode"=> "UNNT",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-10T01:20:00.000",
                "estimatedTime"=> "2019-03-10T01:20:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "181",
                "iataNumber"=> "S7181",
                "icaoNumber"=> "SBI181"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "181",
                    "iataNumber"=> "GH181",
                    "icaoNumber"=> "GLP181"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:15:00.000",
                "estimatedTime"=> "2019-03-09T17:15:00.000"
            },
            "arrival"=> {
                "iataCode"=> "OVB",
                "icaoCode"=> "UNNT",
                "terminal"=> "A",
                "scheduledTime"=> "2019-03-10T01:20:00.000",
                "estimatedTime"=> "2019-03-10T01:20:00.000"
            },
            "airline"=> {
                "name"=> "Globus",
                "iataCode"=> "GH",
                "icaoCode"=> "GLP"
            },
            "flight"=> {
                "number"=> "181",
                "iataNumber"=> "GH181",
                "icaoNumber"=> "GLP181"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:20:00.000",
                "estimatedTime"=> "2019-03-09T17:20:00.000"
            },
            "arrival"=> {
                "iataCode"=> "VOG",
                "icaoCode"=> "URWW",
                "terminal"=> "C2",
                "scheduledTime"=> "2019-03-09T20:10:00.000",
                "estimatedTime"=> "2019-03-09T20:10:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7925",
                "iataNumber"=> "EK7925",
                "icaoNumber"=> "UAE7925"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1165",
                    "iataNumber"=> "S71165",
                    "icaoNumber"=> "SBI1165"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:20:00.000",
                "estimatedTime"=> "2019-03-09T17:20:00.000"
            },
            "arrival"=> {
                "iataCode"=> "VOG",
                "icaoCode"=> "URWW",
                "terminal"=> "C2",
                "scheduledTime"=> "2019-03-09T20:10:00.000",
                "estimatedTime"=> "2019-03-09T20:10:00.000"
            },
            "airline"=> {
                "name"=> "JAL",
                "iataCode"=> "JL",
                "icaoCode"=> "JAL"
            },
            "flight"=> {
                "number"=> "7189",
                "iataNumber"=> "JL7189",
                "icaoNumber"=> "JAL7189"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1165",
                    "iataNumber"=> "S71165",
                    "icaoNumber"=> "SBI1165"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:20:00.000",
                "estimatedTime"=> "2019-03-09T17:20:00.000"
            },
            "arrival"=> {
                "iataCode"=> "VOG",
                "icaoCode"=> "URWW",
                "terminal"=> "C2",
                "scheduledTime"=> "2019-03-09T20:10:00.000",
                "estimatedTime"=> "2019-03-09T20:10:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5776",
                "iataNumber"=> "QR5776",
                "icaoNumber"=> "QTR5776"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1165",
                    "iataNumber"=> "S71165",
                    "icaoNumber"=> "SBI1165"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:20:00.000",
                "estimatedTime"=> "2019-03-09T17:20:00.000"
            },
            "arrival"=> {
                "iataCode"=> "VOG",
                "icaoCode"=> "URWW",
                "terminal"=> "C2",
                "scheduledTime"=> "2019-03-09T20:10:00.000",
                "estimatedTime"=> "2019-03-09T20:10:00.000"
            },
            "airline"=> {
                "name"=> "Singapore Airlines",
                "iataCode"=> "SQ",
                "icaoCode"=> "SIA"
            },
            "flight"=> {
                "number"=> "1980",
                "iataNumber"=> "SQ1980",
                "icaoNumber"=> "SIA1980"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1165",
                    "iataNumber"=> "S71165",
                    "icaoNumber"=> "SBI1165"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:20:00.000",
                "estimatedTime"=> "2019-03-09T17:20:00.000"
            },
            "arrival"=> {
                "iataCode"=> "VOG",
                "icaoCode"=> "URWW",
                "terminal"=> "C2",
                "scheduledTime"=> "2019-03-09T20:10:00.000",
                "estimatedTime"=> "2019-03-09T20:10:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "1165",
                "iataNumber"=> "S71165",
                "icaoNumber"=> "SBI1165"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "1",
                "scheduledTime"=> "2019-03-09T17:25:00.000"
            },
            "arrival"=> {
                "iataCode"=> "FRA",
                "icaoCode"=> "EDDF",
                "terminal"=> "1",
                "gate"=> "B20A",
                "scheduledTime"=> "2019-03-09T19:00:00.000"
            },
            "airline"=> {
                "name"=> "Lufthansa",
                "iataCode"=> "LH",
                "icaoCode"=> "DLH"
            },
            "flight"=> {
                "number"=> "1445",
                "iataNumber"=> "LH1445",
                "icaoNumber"=> "DLH1445"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:30:00.000",
                "estimatedTime"=> "2019-03-09T17:30:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T19:10:00.000",
                "estimatedTime"=> "2019-03-09T19:10:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7871",
                "iataNumber"=> "EK7871",
                "icaoNumber"=> "UAE7871"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "43",
                    "iataNumber"=> "S743",
                    "icaoNumber"=> "SBI43"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:30:00.000",
                "estimatedTime"=> "2019-03-09T17:30:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T19:10:00.000",
                "estimatedTime"=> "2019-03-09T19:10:00.000"
            },
            "airline"=> {
                "name"=> "JAL",
                "iataCode"=> "JL",
                "icaoCode"=> "JAL"
            },
            "flight"=> {
                "number"=> "7171",
                "iataNumber"=> "JL7171",
                "icaoNumber"=> "JAL7171"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "43",
                    "iataNumber"=> "S743",
                    "icaoNumber"=> "SBI43"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:30:00.000",
                "estimatedTime"=> "2019-03-09T17:30:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T19:10:00.000",
                "estimatedTime"=> "2019-03-09T19:10:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5720",
                "iataNumber"=> "QR5720",
                "icaoNumber"=> "QTR5720"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "43",
                    "iataNumber"=> "S743",
                    "icaoNumber"=> "SBI43"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:30:00.000",
                "estimatedTime"=> "2019-03-09T17:30:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T19:10:00.000",
                "estimatedTime"=> "2019-03-09T19:10:00.000"
            },
            "airline"=> {
                "name"=> "Singapore Airlines",
                "iataCode"=> "SQ",
                "icaoCode"=> "SIA"
            },
            "flight"=> {
                "number"=> "1909",
                "iataNumber"=> "SQ1909",
                "icaoNumber"=> "SIA1909"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "43",
                    "iataNumber"=> "S743",
                    "icaoNumber"=> "SBI43"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:30:00.000",
                "estimatedTime"=> "2019-03-09T17:30:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T19:10:00.000",
                "estimatedTime"=> "2019-03-09T19:10:00.000"
            },
            "airline"=> {
                "name"=> "Montenegro Airlines",
                "iataCode"=> "YM",
                "icaoCode"=> "MGX"
            },
            "flight"=> {
                "number"=> "4544",
                "iataNumber"=> "YM4544",
                "icaoNumber"=> "MGX4544"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "43",
                    "iataNumber"=> "S743",
                    "icaoNumber"=> "SBI43"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:30:00.000",
                "estimatedTime"=> "2019-03-09T17:30:00.000"
            },
            "arrival"=> {
                "iataCode"=> "LED",
                "icaoCode"=> "ULLI",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T19:10:00.000",
                "estimatedTime"=> "2019-03-09T19:10:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "43",
                "iataNumber"=> "S743",
                "icaoNumber"=> "SBI43"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:35:00.000",
                "estimatedTime"=> "2019-03-09T17:35:00.000"
            },
            "arrival"=> {
                "iataCode"=> "UFA",
                "icaoCode"=> "UWUU",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T21:40:00.000",
                "estimatedTime"=> "2019-03-09T21:40:00.000"
            },
            "airline"=> {
                "name"=> "Aegean Airlines",
                "iataCode"=> "A3",
                "icaoCode"=> "AEE"
            },
            "flight"=> {
                "number"=> "3572",
                "iataNumber"=> "A33572",
                "icaoNumber"=> "AEE3572"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "97",
                    "iataNumber"=> "S797",
                    "icaoNumber"=> "SBI97"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:35:00.000",
                "estimatedTime"=> "2019-03-09T17:35:00.000"
            },
            "arrival"=> {
                "iataCode"=> "UFA",
                "icaoCode"=> "UWUU",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T21:40:00.000",
                "estimatedTime"=> "2019-03-09T21:40:00.000"
            },
            "airline"=> {
                "name"=> "Royal Air Maroc",
                "iataCode"=> "AT",
                "icaoCode"=> "RAM"
            },
            "flight"=> {
                "number"=> "9035",
                "iataNumber"=> "AT9035",
                "icaoNumber"=> "RAM9035"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "97",
                    "iataNumber"=> "S797",
                    "icaoNumber"=> "SBI97"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:35:00.000",
                "estimatedTime"=> "2019-03-09T17:35:00.000"
            },
            "arrival"=> {
                "iataCode"=> "UFA",
                "icaoCode"=> "UWUU",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T21:40:00.000",
                "estimatedTime"=> "2019-03-09T21:40:00.000"
            },
            "airline"=> {
                "name"=> "British Airways",
                "iataCode"=> "BA",
                "icaoCode"=> "BAW"
            },
            "flight"=> {
                "number"=> "8803",
                "iataNumber"=> "BA8803",
                "icaoNumber"=> "BAW8803"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "97",
                    "iataNumber"=> "S797",
                    "icaoNumber"=> "SBI97"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:35:00.000",
                "estimatedTime"=> "2019-03-09T17:35:00.000"
            },
            "arrival"=> {
                "iataCode"=> "UFA",
                "icaoCode"=> "UWUU",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T21:40:00.000",
                "estimatedTime"=> "2019-03-09T21:40:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7921",
                "iataNumber"=> "EK7921",
                "icaoNumber"=> "UAE7921"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "97",
                    "iataNumber"=> "S797",
                    "icaoNumber"=> "SBI97"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:35:00.000",
                "estimatedTime"=> "2019-03-09T17:35:00.000"
            },
            "arrival"=> {
                "iataCode"=> "UFA",
                "icaoCode"=> "UWUU",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T21:40:00.000",
                "estimatedTime"=> "2019-03-09T21:40:00.000"
            },
            "airline"=> {
                "name"=> "JAL",
                "iataCode"=> "JL",
                "icaoCode"=> "JAL"
            },
            "flight"=> {
                "number"=> "7185",
                "iataNumber"=> "JL7185",
                "icaoNumber"=> "JAL7185"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "97",
                    "iataNumber"=> "S797",
                    "icaoNumber"=> "SBI97"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:35:00.000",
                "estimatedTime"=> "2019-03-09T17:35:00.000"
            },
            "arrival"=> {
                "iataCode"=> "UFA",
                "icaoCode"=> "UWUU",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T21:40:00.000",
                "estimatedTime"=> "2019-03-09T21:40:00.000"
            },
            "airline"=> {
                "name"=> "El Al",
                "iataCode"=> "LY",
                "icaoCode"=> "ELY"
            },
            "flight"=> {
                "number"=> "8919",
                "iataNumber"=> "LY8919",
                "icaoNumber"=> "ELY8919"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "97",
                    "iataNumber"=> "S797",
                    "icaoNumber"=> "SBI97"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:35:00.000",
                "estimatedTime"=> "2019-03-09T17:35:00.000"
            },
            "arrival"=> {
                "iataCode"=> "UFA",
                "icaoCode"=> "UWUU",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T21:40:00.000",
                "estimatedTime"=> "2019-03-09T21:40:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5768",
                "iataNumber"=> "QR5768",
                "icaoNumber"=> "QTR5768"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "97",
                    "iataNumber"=> "S797",
                    "icaoNumber"=> "SBI97"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:35:00.000",
                "estimatedTime"=> "2019-03-09T17:35:00.000"
            },
            "arrival"=> {
                "iataCode"=> "UFA",
                "icaoCode"=> "UWUU",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T21:40:00.000",
                "estimatedTime"=> "2019-03-09T21:40:00.000"
            },
            "airline"=> {
                "name"=> "Singapore Airlines",
                "iataCode"=> "SQ",
                "icaoCode"=> "SIA"
            },
            "flight"=> {
                "number"=> "1935",
                "iataNumber"=> "SQ1935",
                "icaoNumber"=> "SIA1935"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "97",
                    "iataNumber"=> "S797",
                    "icaoNumber"=> "SBI97"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:35:00.000",
                "estimatedTime"=> "2019-03-09T17:35:00.000"
            },
            "arrival"=> {
                "iataCode"=> "UFA",
                "icaoCode"=> "UWUU",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T21:40:00.000",
                "estimatedTime"=> "2019-03-09T21:40:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "97",
                "iataNumber"=> "S797",
                "icaoNumber"=> "SBI97"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KIV",
                "icaoCode"=> "LUKK",
                "scheduledTime"=> "2019-03-09T18:30:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "4537",
                "iataNumber"=> "S74537",
                "icaoNumber"=> "SBI4537"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Air Moldova",
                    "iataCode"=> "9U",
                    "icaoCode"=> "MLD"
                },
                "flight"=> {
                    "number"=> "172",
                    "iataNumber"=> "9U172",
                    "icaoNumber"=> "MLD172"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KIV",
                "icaoCode"=> "LUKK",
                "scheduledTime"=> "2019-03-09T18:30:00.000"
            },
            "airline"=> {
                "name"=> "Air Moldova",
                "iataCode"=> "9U",
                "icaoCode"=> "MLD"
            },
            "flight"=> {
                "number"=> "172",
                "iataNumber"=> "9U172",
                "icaoNumber"=> "MLD172"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:40:00.000",
                "estimatedTime"=> "2019-03-09T17:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "PEZ",
                "icaoCode"=> "UWPP",
                "scheduledTime"=> "2019-03-09T19:10:00.000",
                "estimatedTime"=> "2019-03-09T19:10:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7976",
                "iataNumber"=> "EK7976",
                "icaoNumber"=> "UAE7976"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "255",
                    "iataNumber"=> "S7255",
                    "icaoNumber"=> "SBI255"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:40:00.000",
                "estimatedTime"=> "2019-03-09T17:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "PEZ",
                "icaoCode"=> "UWPP",
                "scheduledTime"=> "2019-03-09T19:10:00.000",
                "estimatedTime"=> "2019-03-09T19:10:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5766",
                "iataNumber"=> "QR5766",
                "icaoNumber"=> "QTR5766"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "255",
                    "iataNumber"=> "S7255",
                    "icaoNumber"=> "SBI255"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:40:00.000",
                "estimatedTime"=> "2019-03-09T17:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "PEZ",
                "icaoCode"=> "UWPP",
                "scheduledTime"=> "2019-03-09T19:10:00.000",
                "estimatedTime"=> "2019-03-09T19:10:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "255",
                "iataNumber"=> "S7255",
                "icaoNumber"=> "SBI255"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:45:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SVX",
                "icaoCode"=> "USSS",
                "scheduledTime"=> "2019-03-09T22:05:00.000"
            },
            "airline"=> {
                "name"=> "Belavia",
                "iataCode"=> "B2",
                "icaoCode"=> "BRU"
            },
            "flight"=> {
                "number"=> "467",
                "iataNumber"=> "B2467",
                "icaoNumber"=> "BRU467"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Ural Airlines",
                    "iataCode"=> "U6",
                    "icaoCode"=> "SVR"
                },
                "flight"=> {
                    "number"=> "267",
                    "iataNumber"=> "U6267",
                    "icaoNumber"=> "SVR267"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:45:00.000"
            },
            "arrival"=> {
                "iataCode"=> "SVX",
                "icaoCode"=> "USSS",
                "scheduledTime"=> "2019-03-09T22:05:00.000"
            },
            "airline"=> {
                "name"=> "Ural Airlines",
                "iataCode"=> "U6",
                "icaoCode"=> "SVR"
            },
            "flight"=> {
                "number"=> "267",
                "iataNumber"=> "U6267",
                "icaoNumber"=> "SVR267"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:45:00.000",
                "estimatedTime"=> "2019-03-09T17:45:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KZN",
                "icaoCode"=> "UWKD",
                "terminal"=> "1A",
                "scheduledTime"=> "2019-03-09T19:20:00.000",
                "estimatedTime"=> "2019-03-09T19:20:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7861",
                "iataNumber"=> "EK7861",
                "icaoNumber"=> "UAE7861"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "79",
                    "iataNumber"=> "S779",
                    "icaoNumber"=> "SBI79"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:45:00.000",
                "estimatedTime"=> "2019-03-09T17:45:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KZN",
                "icaoCode"=> "UWKD",
                "terminal"=> "1A",
                "scheduledTime"=> "2019-03-09T19:20:00.000",
                "estimatedTime"=> "2019-03-09T19:20:00.000"
            },
            "airline"=> {
                "name"=> "AZAL Azerbaijan Airlines",
                "iataCode"=> "J2",
                "icaoCode"=> "AHY"
            },
            "flight"=> {
                "number"=> "6079",
                "iataNumber"=> "J26079",
                "icaoNumber"=> "AHY6079"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "79",
                    "iataNumber"=> "S779",
                    "icaoNumber"=> "SBI79"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:45:00.000",
                "estimatedTime"=> "2019-03-09T17:45:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KZN",
                "icaoCode"=> "UWKD",
                "terminal"=> "1A",
                "scheduledTime"=> "2019-03-09T19:20:00.000",
                "estimatedTime"=> "2019-03-09T19:20:00.000"
            },
            "airline"=> {
                "name"=> "JAL",
                "iataCode"=> "JL",
                "icaoCode"=> "JAL"
            },
            "flight"=> {
                "number"=> "7175",
                "iataNumber"=> "JL7175",
                "icaoNumber"=> "JAL7175"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "79",
                    "iataNumber"=> "S779",
                    "icaoNumber"=> "SBI79"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:45:00.000",
                "estimatedTime"=> "2019-03-09T17:45:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KZN",
                "icaoCode"=> "UWKD",
                "terminal"=> "1A",
                "scheduledTime"=> "2019-03-09T19:20:00.000",
                "estimatedTime"=> "2019-03-09T19:20:00.000"
            },
            "airline"=> {
                "name"=> "El Al",
                "iataCode"=> "LY",
                "icaoCode"=> "ELY"
            },
            "flight"=> {
                "number"=> "8997",
                "iataNumber"=> "LY8997",
                "icaoNumber"=> "ELY8997"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "79",
                    "iataNumber"=> "S779",
                    "icaoNumber"=> "SBI79"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:45:00.000",
                "estimatedTime"=> "2019-03-09T17:45:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KZN",
                "icaoCode"=> "UWKD",
                "terminal"=> "1A",
                "scheduledTime"=> "2019-03-09T19:20:00.000",
                "estimatedTime"=> "2019-03-09T19:20:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5742",
                "iataNumber"=> "QR5742",
                "icaoNumber"=> "QTR5742"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "79",
                    "iataNumber"=> "S779",
                    "icaoNumber"=> "SBI79"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:45:00.000",
                "estimatedTime"=> "2019-03-09T17:45:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KZN",
                "icaoCode"=> "UWKD",
                "terminal"=> "1A",
                "scheduledTime"=> "2019-03-09T19:20:00.000",
                "estimatedTime"=> "2019-03-09T19:20:00.000"
            },
            "airline"=> {
                "name"=> "Singapore Airlines",
                "iataCode"=> "SQ",
                "icaoCode"=> "SIA"
            },
            "flight"=> {
                "number"=> "1929",
                "iataNumber"=> "SQ1929",
                "icaoNumber"=> "SIA1929"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "79",
                    "iataNumber"=> "S779",
                    "icaoNumber"=> "SBI79"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T17:45:00.000",
                "estimatedTime"=> "2019-03-09T17:45:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KZN",
                "icaoCode"=> "UWKD",
                "terminal"=> "1A",
                "scheduledTime"=> "2019-03-09T19:20:00.000",
                "estimatedTime"=> "2019-03-09T19:20:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "79",
                "iataNumber"=> "S779",
                "icaoNumber"=> "SBI79"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T18:15:00.000",
                "estimatedTime"=> "2019-03-09T18:15:00.000"
            },
            "arrival"=> {
                "iataCode"=> "VOZ",
                "icaoCode"=> "UUOO",
                "scheduledTime"=> "2019-03-09T19:30:00.000",
                "estimatedTime"=> "2019-03-09T19:30:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7931",
                "iataNumber"=> "EK7931",
                "icaoNumber"=> "UAE7931"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "233",
                    "iataNumber"=> "S7233",
                    "icaoNumber"=> "SBI233"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T18:15:00.000",
                "estimatedTime"=> "2019-03-09T18:15:00.000"
            },
            "arrival"=> {
                "iataCode"=> "VOZ",
                "icaoCode"=> "UUOO",
                "scheduledTime"=> "2019-03-09T19:30:00.000",
                "estimatedTime"=> "2019-03-09T19:30:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5794",
                "iataNumber"=> "QR5794",
                "icaoNumber"=> "QTR5794"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "233",
                    "iataNumber"=> "S7233",
                    "icaoNumber"=> "SBI233"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T18:15:00.000",
                "estimatedTime"=> "2019-03-09T18:15:00.000"
            },
            "arrival"=> {
                "iataCode"=> "VOZ",
                "icaoCode"=> "UUOO",
                "scheduledTime"=> "2019-03-09T19:30:00.000",
                "estimatedTime"=> "2019-03-09T19:30:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "233",
                "iataNumber"=> "S7233",
                "icaoNumber"=> "SBI233"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T18:30:00.000"
            },
            "arrival"=> {
                "iataCode"=> "ZRH",
                "icaoCode"=> "LSZH",
                "terminal"=> "2",
                "baggage"=> "21",
                "scheduledTime"=> "2019-03-09T20:10:00.000"
            },
            "airline"=> {
                "name"=> "SWISS",
                "iataCode"=> "LX",
                "icaoCode"=> "SWR"
            },
            "flight"=> {
                "number"=> "1327",
                "iataNumber"=> "LX1327",
                "icaoNumber"=> "SWR1327"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T18:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MSQ",
                "icaoCode"=> "UMMS",
                "scheduledTime"=> "2019-03-09T20:00:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "4503",
                "iataNumber"=> "S74503",
                "icaoNumber"=> "SBI4503"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Belavia",
                    "iataCode"=> "B2",
                    "icaoCode"=> "BRU"
                },
                "flight"=> {
                    "number"=> "988",
                    "iataNumber"=> "B2988",
                    "icaoNumber"=> "BRU988"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T18:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MSQ",
                "icaoCode"=> "UMMS",
                "scheduledTime"=> "2019-03-09T20:00:00.000"
            },
            "airline"=> {
                "name"=> "Belavia",
                "iataCode"=> "B2",
                "icaoCode"=> "BRU"
            },
            "flight"=> {
                "number"=> "988",
                "iataNumber"=> "B2988",
                "icaoNumber"=> "BRU988"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T18:40:00.000"
            },
            "arrival"=> {
                "iataCode"=> "BKK",
                "icaoCode"=> "VTBS",
                "scheduledTime"=> "2019-03-10T07:30:00.000"
            },
            "airline"=> {
                "name"=> "Thai Airways International",
                "iataCode"=> "TG",
                "icaoCode"=> "THA"
            },
            "flight"=> {
                "number"=> "975",
                "iataNumber"=> "TG975",
                "icaoNumber"=> "THA975"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T18:50:00.000",
                "estimatedTime"=> "2019-03-09T18:50:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KRR",
                "icaoCode"=> "URKK",
                "scheduledTime"=> "2019-03-09T21:15:00.000",
                "estimatedTime"=> "2019-03-09T21:15:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7988",
                "iataNumber"=> "EK7988",
                "icaoNumber"=> "UAE7988"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1149",
                    "iataNumber"=> "S71149",
                    "icaoNumber"=> "SBI1149"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T18:50:00.000",
                "estimatedTime"=> "2019-03-09T18:50:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KRR",
                "icaoCode"=> "URKK",
                "scheduledTime"=> "2019-03-09T21:15:00.000",
                "estimatedTime"=> "2019-03-09T21:15:00.000"
            },
            "airline"=> {
                "name"=> "JAL",
                "iataCode"=> "JL",
                "icaoCode"=> "JAL"
            },
            "flight"=> {
                "number"=> "7191",
                "iataNumber"=> "JL7191",
                "icaoNumber"=> "JAL7191"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1149",
                    "iataNumber"=> "S71149",
                    "icaoNumber"=> "SBI1149"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T18:50:00.000",
                "estimatedTime"=> "2019-03-09T18:50:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KRR",
                "icaoCode"=> "URKK",
                "scheduledTime"=> "2019-03-09T21:15:00.000",
                "estimatedTime"=> "2019-03-09T21:15:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5657",
                "iataNumber"=> "QR5657",
                "icaoNumber"=> "QTR5657"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1149",
                    "iataNumber"=> "S71149",
                    "icaoNumber"=> "SBI1149"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T18:50:00.000",
                "estimatedTime"=> "2019-03-09T18:50:00.000"
            },
            "arrival"=> {
                "iataCode"=> "KRR",
                "icaoCode"=> "URKK",
                "scheduledTime"=> "2019-03-09T21:15:00.000",
                "estimatedTime"=> "2019-03-09T21:15:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "1149",
                "iataNumber"=> "S71149",
                "icaoNumber"=> "SBI1149"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "gate"=> "13",
                "scheduledTime"=> "2019-03-09T18:50:00.000"
            },
            "arrival"=> {
                "iataCode"=> "FRA",
                "icaoCode"=> "EDDF",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T20:25:00.000"
            },
            "airline"=> {
                "name"=> "Lufthansa",
                "iataCode"=> "LH",
                "icaoCode"=> "DLH"
            },
            "flight"=> {
                "number"=> "1447",
                "iataNumber"=> "LH1447",
                "icaoNumber"=> "DLH1447"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T18:55:00.000",
                "estimatedTime"=> "2019-03-09T18:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "GOJ",
                "icaoCode"=> "UWGG",
                "scheduledTime"=> "2019-03-09T20:10:00.000",
                "estimatedTime"=> "2019-03-09T20:10:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7823",
                "iataNumber"=> "EK7823",
                "icaoNumber"=> "UAE7823"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1",
                    "iataNumber"=> "S71",
                    "icaoNumber"=> "SBI1"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T18:55:00.000",
                "estimatedTime"=> "2019-03-09T18:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "GOJ",
                "icaoCode"=> "UWGG",
                "scheduledTime"=> "2019-03-09T20:10:00.000",
                "estimatedTime"=> "2019-03-09T20:10:00.000"
            },
            "airline"=> {
                "name"=> "JAL",
                "iataCode"=> "JL",
                "icaoCode"=> "JAL"
            },
            "flight"=> {
                "number"=> "7179",
                "iataNumber"=> "JL7179",
                "icaoNumber"=> "JAL7179"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1",
                    "iataNumber"=> "S71",
                    "icaoNumber"=> "SBI1"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T18:55:00.000",
                "estimatedTime"=> "2019-03-09T18:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "GOJ",
                "icaoCode"=> "UWGG",
                "scheduledTime"=> "2019-03-09T20:10:00.000",
                "estimatedTime"=> "2019-03-09T20:10:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5796",
                "iataNumber"=> "QR5796",
                "icaoNumber"=> "QTR5796"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1",
                    "iataNumber"=> "S71",
                    "icaoNumber"=> "SBI1"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T18:55:00.000",
                "estimatedTime"=> "2019-03-09T18:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "GOJ",
                "icaoCode"=> "UWGG",
                "scheduledTime"=> "2019-03-09T20:10:00.000",
                "estimatedTime"=> "2019-03-09T20:10:00.000"
            },
            "airline"=> {
                "name"=> "Singapore Airlines",
                "iataCode"=> "SQ",
                "icaoCode"=> "SIA"
            },
            "flight"=> {
                "number"=> "1901",
                "iataNumber"=> "SQ1901",
                "icaoNumber"=> "SIA1901"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "1",
                    "iataNumber"=> "S71",
                    "icaoNumber"=> "SBI1"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T18:55:00.000",
                "estimatedTime"=> "2019-03-09T18:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "GOJ",
                "icaoCode"=> "UWGG",
                "scheduledTime"=> "2019-03-09T20:10:00.000",
                "estimatedTime"=> "2019-03-09T20:10:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "1",
                "iataNumber"=> "S71",
                "icaoNumber"=> "SBI1"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T19:00:00.000"
            },
            "arrival"=> {
                "iataCode"=> "HAN",
                "icaoCode"=> "VVNB",
                "terminal"=> "2",
                "scheduledTime"=> "2019-03-10T07:55:00.000"
            },
            "airline"=> {
                "name"=> "Vietnam Airlines",
                "iataCode"=> "VN",
                "icaoCode"=> "HVN"
            },
            "flight"=> {
                "number"=> "64",
                "iataNumber"=> "VN64",
                "icaoNumber"=> "HVN64"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T19:05:00.000",
                "estimatedTime"=> "2019-03-09T19:05:00.000"
            },
            "arrival"=> {
                "iataCode"=> "VRN",
                "icaoCode"=> "LIPX",
                "scheduledTime"=> "2019-03-09T20:40:00.000",
                "estimatedTime"=> "2019-03-09T20:40:00.000"
            },
            "airline"=> {
                "name"=> "Air Italy",
                "iataCode"=> "IG",
                "icaoCode"=> "ISS"
            },
            "flight"=> {
                "number"=> "9693",
                "iataNumber"=> "IG9693",
                "icaoNumber"=> "ISS9693"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "S7 Airlines",
                    "iataCode"=> "S7",
                    "icaoCode"=> "SBI"
                },
                "flight"=> {
                    "number"=> "693",
                    "iataNumber"=> "S7693",
                    "icaoNumber"=> "SBI693"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T19:05:00.000",
                "estimatedTime"=> "2019-03-09T19:05:00.000"
            },
            "arrival"=> {
                "iataCode"=> "VRN",
                "icaoCode"=> "LIPX",
                "scheduledTime"=> "2019-03-09T20:40:00.000",
                "estimatedTime"=> "2019-03-09T20:40:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "693",
                "iataNumber"=> "S7693",
                "icaoNumber"=> "SBI693"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T19:10:00.000",
                "estimatedTime"=> "2019-03-09T19:10:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MUC",
                "icaoCode"=> "EDDM",
                "terminal"=> "1",
                "scheduledTime"=> "2019-03-09T20:25:00.000",
                "estimatedTime"=> "2019-03-09T20:25:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "797",
                "iataNumber"=> "S7797",
                "icaoNumber"=> "SBI797"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T19:25:00.000"
            },
            "arrival"=> {
                "iataCode"=> "IKT",
                "icaoCode"=> "UIII",
                "scheduledTime"=> "2019-03-10T06:05:00.000"
            },
            "airline"=> {
                "name"=> "Belavia",
                "iataCode"=> "B2",
                "icaoCode"=> "BRU"
            },
            "flight"=> {
                "number"=> "405",
                "iataNumber"=> "B2405",
                "icaoNumber"=> "BRU405"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Ural Airlines",
                    "iataCode"=> "U6",
                    "icaoCode"=> "SVR"
                },
                "flight"=> {
                    "number"=> "105",
                    "iataNumber"=> "U6105",
                    "icaoNumber"=> "SVR105"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T19:25:00.000"
            },
            "arrival"=> {
                "iataCode"=> "IKT",
                "icaoCode"=> "UIII",
                "scheduledTime"=> "2019-03-10T06:05:00.000"
            },
            "airline"=> {
                "name"=> "Ural Airlines",
                "iataCode"=> "U6",
                "icaoCode"=> "SVR"
            },
            "flight"=> {
                "number"=> "105",
                "iataNumber"=> "U6105",
                "icaoNumber"=> "SVR105"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T19:30:00.000",
                "estimatedTime"=> "2019-03-09T19:30:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T21:55:00.000",
                "estimatedTime"=> "2019-03-09T21:55:00.000"
            },
            "airline"=> {
                "name"=> "Emirates",
                "iataCode"=> "EK",
                "icaoCode"=> "UAE"
            },
            "flight"=> {
                "number"=> "7972",
                "iataNumber"=> "EK7972",
                "icaoNumber"=> "UAE7972"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1029",
                    "iataNumber"=> "GH1029",
                    "icaoNumber"=> "GLP1029"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T19:30:00.000",
                "estimatedTime"=> "2019-03-09T19:30:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T21:55:00.000",
                "estimatedTime"=> "2019-03-09T21:55:00.000"
            },
            "airline"=> {
                "name"=> "Qatar Airways",
                "iataCode"=> "QR",
                "icaoCode"=> "QTR"
            },
            "flight"=> {
                "number"=> "5696",
                "iataNumber"=> "QR5696",
                "icaoNumber"=> "QTR5696"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1029",
                    "iataNumber"=> "GH1029",
                    "icaoNumber"=> "GLP1029"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T19:30:00.000",
                "estimatedTime"=> "2019-03-09T19:30:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T21:55:00.000",
                "estimatedTime"=> "2019-03-09T21:55:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "1029",
                "iataNumber"=> "S71029",
                "icaoNumber"=> "SBI1029"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Globus",
                    "iataCode"=> "GH",
                    "icaoCode"=> "GLP"
                },
                "flight"=> {
                    "number"=> "1029",
                    "iataNumber"=> "GH1029",
                    "icaoNumber"=> "GLP1029"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T19:30:00.000",
                "estimatedTime"=> "2019-03-09T19:30:00.000"
            },
            "arrival"=> {
                "iataCode"=> "AER",
                "icaoCode"=> "URSS",
                "scheduledTime"=> "2019-03-09T21:55:00.000",
                "estimatedTime"=> "2019-03-09T21:55:00.000"
            },
            "airline"=> {
                "name"=> "Globus",
                "iataCode"=> "GH",
                "icaoCode"=> "GLP"
            },
            "flight"=> {
                "number"=> "1029",
                "iataNumber"=> "GH1029",
                "icaoNumber"=> "GLP1029"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T19:45:00.000"
            },
            "arrival"=> {
                "iataCode"=> "HTA",
                "icaoCode"=> "UIAA",
                "scheduledTime"=> "2019-03-10T08:10:00.000"
            },
            "airline"=> {
                "name"=> "Ural Airlines",
                "iataCode"=> "U6",
                "icaoCode"=> "SVR"
            },
            "flight"=> {
                "number"=> "93",
                "iataNumber"=> "U693",
                "icaoNumber"=> "SVR93"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T19:50:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MSQ",
                "icaoCode"=> "UMMS",
                "scheduledTime"=> "2019-03-09T21:10:00.000"
            },
            "airline"=> {
                "name"=> "S7 Airlines",
                "iataCode"=> "S7",
                "icaoCode"=> "SBI"
            },
            "flight"=> {
                "number"=> "4437",
                "iataNumber"=> "S74437",
                "icaoNumber"=> "SBI4437"
            },
            "codeshared"=> {
                "airline"=> {
                    "name"=> "Belavia",
                    "iataCode"=> "B2",
                    "icaoCode"=> "BRU"
                },
                "flight"=> {
                    "number"=> "956",
                    "iataNumber"=> "B2956",
                    "icaoNumber"=> "BRU956"
                }
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T19:50:00.000"
            },
            "arrival"=> {
                "iataCode"=> "MSQ",
                "icaoCode"=> "UMMS",
                "scheduledTime"=> "2019-03-09T21:10:00.000"
            },
            "airline"=> {
                "name"=> "Belavia",
                "iataCode"=> "B2",
                "icaoCode"=> "BRU"
            },
            "flight"=> {
                "number"=> "956",
                "iataNumber"=> "B2956",
                "icaoNumber"=> "BRU956"
            }
        },
        {
            "type"=> "departure",
            "status"=> "scheduled",
            "departure"=> {
                "iataCode"=> "DME",
                "icaoCode"=> "UUDD",
                "scheduledTime"=> "2019-03-09T19:55:00.000"
            },
            "arrival"=> {
                "iataCode"=> "ARH",
                "icaoCode"=> "ULAA",
                "scheduledTime"=> "2019-03-09T21:50:00.000"
            },
            "airline"=> {
                "name"=> "Nordavia Regional Airlines",
                "iataCode"=> "5N",
                "icaoCode"=> "AUL"
            },
            "flight"=> {
                "number"=> "118",
                "iataNumber"=> "5N118",
                "icaoNumber"=> "AUL118"
            }
        }
    ]
    return example

    return Rails.cache.fetch('flights', expires_in: 10.minutes, force: false) do
      uri = URI.parse('https://aviation-edge.com/v2/public/timetable?key=85177b-cf6156&iataCode=DME&type=departure')
      http = Net::HTTP.new(uri.host, uri.port)
      request = Net::HTTP::Get.new(uri.request_uri)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request['Accept'] = 'application/json'
      response = http.request(request)
      JSON.parse(response.body)
    end
  end
end
