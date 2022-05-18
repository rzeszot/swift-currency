import Currency
import XCTest

final class ISO4127Tests: XCTestCase {
    func test_afn() {
        let sut = Currency.afn

        XCTAssertEqual(sut.code, "AFN")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_eur() {
        let sut = Currency.eur

        XCTAssertEqual(sut.code, "EUR")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_all() {
        let sut = Currency.all

        XCTAssertEqual(sut.code, "ALL")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_dzd() {
        let sut = Currency.dzd

        XCTAssertEqual(sut.code, "DZD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_usd() {
        let sut = Currency.usd

        XCTAssertEqual(sut.code, "USD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_aoa() {
        let sut = Currency.aoa

        XCTAssertEqual(sut.code, "AOA")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_ars() {
        let sut = Currency.ars

        XCTAssertEqual(sut.code, "ARS")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_amd() {
        let sut = Currency.amd

        XCTAssertEqual(sut.code, "AMD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_awg() {
        let sut = Currency.awg

        XCTAssertEqual(sut.code, "AWG")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_aud() {
        let sut = Currency.aud

        XCTAssertEqual(sut.code, "AUD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_azn() {
        let sut = Currency.azn

        XCTAssertEqual(sut.code, "AZN")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_bsd() {
        let sut = Currency.bsd

        XCTAssertEqual(sut.code, "BSD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_bhd() {
        let sut = Currency.bhd

        XCTAssertEqual(sut.code, "BHD")
        XCTAssertEqual(sut.scale, 3)
    }

    func test_bdt() {
        let sut = Currency.bdt

        XCTAssertEqual(sut.code, "BDT")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_bbd() {
        let sut = Currency.bbd

        XCTAssertEqual(sut.code, "BBD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_byn() {
        let sut = Currency.byn

        XCTAssertEqual(sut.code, "BYN")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_bzd() {
        let sut = Currency.bzd

        XCTAssertEqual(sut.code, "BZD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_bmd() {
        let sut = Currency.bmd

        XCTAssertEqual(sut.code, "BMD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_inr() {
        let sut = Currency.inr

        XCTAssertEqual(sut.code, "INR")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_btn() {
        let sut = Currency.btn

        XCTAssertEqual(sut.code, "BTN")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_bob() {
        let sut = Currency.bob

        XCTAssertEqual(sut.code, "BOB")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_bov() {
        let sut = Currency.bov

        XCTAssertEqual(sut.code, "BOV")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_bam() {
        let sut = Currency.bam

        XCTAssertEqual(sut.code, "BAM")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_bwp() {
        let sut = Currency.bwp

        XCTAssertEqual(sut.code, "BWP")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_nok() {
        let sut = Currency.nok

        XCTAssertEqual(sut.code, "NOK")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_brl() {
        let sut = Currency.brl

        XCTAssertEqual(sut.code, "BRL")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_bnd() {
        let sut = Currency.bnd

        XCTAssertEqual(sut.code, "BND")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_bgn() {
        let sut = Currency.bgn

        XCTAssertEqual(sut.code, "BGN")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_bif() {
        let sut = Currency.bif

        XCTAssertEqual(sut.code, "BIF")
        XCTAssertEqual(sut.scale, 0)
    }

    func test_cve() {
        let sut = Currency.cve

        XCTAssertEqual(sut.code, "CVE")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_khr() {
        let sut = Currency.khr

        XCTAssertEqual(sut.code, "KHR")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_cad() {
        let sut = Currency.cad

        XCTAssertEqual(sut.code, "CAD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_kyd() {
        let sut = Currency.kyd

        XCTAssertEqual(sut.code, "KYD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_clp() {
        let sut = Currency.clp

        XCTAssertEqual(sut.code, "CLP")
        XCTAssertEqual(sut.scale, 0)
    }

    func test_clf() {
        let sut = Currency.clf

        XCTAssertEqual(sut.code, "CLF")
        XCTAssertEqual(sut.scale, 4)
    }

    func test_cny() {
        let sut = Currency.cny

        XCTAssertEqual(sut.code, "CNY")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_cop() {
        let sut = Currency.cop

        XCTAssertEqual(sut.code, "COP")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_cou() {
        let sut = Currency.cou

        XCTAssertEqual(sut.code, "COU")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_kmf() {
        let sut = Currency.kmf

        XCTAssertEqual(sut.code, "KMF")
        XCTAssertEqual(sut.scale, 0)
    }

    func test_cdf() {
        let sut = Currency.cdf

        XCTAssertEqual(sut.code, "CDF")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_nzd() {
        let sut = Currency.nzd

        XCTAssertEqual(sut.code, "NZD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_crc() {
        let sut = Currency.crc

        XCTAssertEqual(sut.code, "CRC")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_hrk() {
        let sut = Currency.hrk

        XCTAssertEqual(sut.code, "HRK")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_cup() {
        let sut = Currency.cup

        XCTAssertEqual(sut.code, "CUP")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_cuc() {
        let sut = Currency.cuc

        XCTAssertEqual(sut.code, "CUC")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_ang() {
        let sut = Currency.ang

        XCTAssertEqual(sut.code, "ANG")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_czk() {
        let sut = Currency.czk

        XCTAssertEqual(sut.code, "CZK")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_dkk() {
        let sut = Currency.dkk

        XCTAssertEqual(sut.code, "DKK")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_djf() {
        let sut = Currency.djf

        XCTAssertEqual(sut.code, "DJF")
        XCTAssertEqual(sut.scale, 0)
    }

    func test_dop() {
        let sut = Currency.dop

        XCTAssertEqual(sut.code, "DOP")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_egp() {
        let sut = Currency.egp

        XCTAssertEqual(sut.code, "EGP")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_svc() {
        let sut = Currency.svc

        XCTAssertEqual(sut.code, "SVC")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_ern() {
        let sut = Currency.ern

        XCTAssertEqual(sut.code, "ERN")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_szl() {
        let sut = Currency.szl

        XCTAssertEqual(sut.code, "SZL")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_etb() {
        let sut = Currency.etb

        XCTAssertEqual(sut.code, "ETB")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_fkp() {
        let sut = Currency.fkp

        XCTAssertEqual(sut.code, "FKP")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_fjd() {
        let sut = Currency.fjd

        XCTAssertEqual(sut.code, "FJD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_gmd() {
        let sut = Currency.gmd

        XCTAssertEqual(sut.code, "GMD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_gel() {
        let sut = Currency.gel

        XCTAssertEqual(sut.code, "GEL")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_ghs() {
        let sut = Currency.ghs

        XCTAssertEqual(sut.code, "GHS")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_gip() {
        let sut = Currency.gip

        XCTAssertEqual(sut.code, "GIP")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_gtq() {
        let sut = Currency.gtq

        XCTAssertEqual(sut.code, "GTQ")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_gbp() {
        let sut = Currency.gbp

        XCTAssertEqual(sut.code, "GBP")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_gnf() {
        let sut = Currency.gnf

        XCTAssertEqual(sut.code, "GNF")
        XCTAssertEqual(sut.scale, 0)
    }

    func test_gyd() {
        let sut = Currency.gyd

        XCTAssertEqual(sut.code, "GYD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_htg() {
        let sut = Currency.htg

        XCTAssertEqual(sut.code, "HTG")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_hnl() {
        let sut = Currency.hnl

        XCTAssertEqual(sut.code, "HNL")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_hkd() {
        let sut = Currency.hkd

        XCTAssertEqual(sut.code, "HKD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_huf() {
        let sut = Currency.huf

        XCTAssertEqual(sut.code, "HUF")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_isk() {
        let sut = Currency.isk

        XCTAssertEqual(sut.code, "ISK")
        XCTAssertEqual(sut.scale, 0)
    }

    func test_idr() {
        let sut = Currency.idr

        XCTAssertEqual(sut.code, "IDR")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_irr() {
        let sut = Currency.irr

        XCTAssertEqual(sut.code, "IRR")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_iqd() {
        let sut = Currency.iqd

        XCTAssertEqual(sut.code, "IQD")
        XCTAssertEqual(sut.scale, 3)
    }

    func test_ils() {
        let sut = Currency.ils

        XCTAssertEqual(sut.code, "ILS")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_jmd() {
        let sut = Currency.jmd

        XCTAssertEqual(sut.code, "JMD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_jpy() {
        let sut = Currency.jpy

        XCTAssertEqual(sut.code, "JPY")
        XCTAssertEqual(sut.scale, 0)
    }

    func test_jod() {
        let sut = Currency.jod

        XCTAssertEqual(sut.code, "JOD")
        XCTAssertEqual(sut.scale, 3)
    }

    func test_kzt() {
        let sut = Currency.kzt

        XCTAssertEqual(sut.code, "KZT")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_kes() {
        let sut = Currency.kes

        XCTAssertEqual(sut.code, "KES")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_kpw() {
        let sut = Currency.kpw

        XCTAssertEqual(sut.code, "KPW")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_krw() {
        let sut = Currency.krw

        XCTAssertEqual(sut.code, "KRW")
        XCTAssertEqual(sut.scale, 0)
    }

    func test_kwd() {
        let sut = Currency.kwd

        XCTAssertEqual(sut.code, "KWD")
        XCTAssertEqual(sut.scale, 3)
    }

    func test_kgs() {
        let sut = Currency.kgs

        XCTAssertEqual(sut.code, "KGS")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_lak() {
        let sut = Currency.lak

        XCTAssertEqual(sut.code, "LAK")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_lbp() {
        let sut = Currency.lbp

        XCTAssertEqual(sut.code, "LBP")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_lsl() {
        let sut = Currency.lsl

        XCTAssertEqual(sut.code, "LSL")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_zar() {
        let sut = Currency.zar

        XCTAssertEqual(sut.code, "ZAR")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_lrd() {
        let sut = Currency.lrd

        XCTAssertEqual(sut.code, "LRD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_lyd() {
        let sut = Currency.lyd

        XCTAssertEqual(sut.code, "LYD")
        XCTAssertEqual(sut.scale, 3)
    }

    func test_chf() {
        let sut = Currency.chf

        XCTAssertEqual(sut.code, "CHF")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_mop() {
        let sut = Currency.mop

        XCTAssertEqual(sut.code, "MOP")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_mkd() {
        let sut = Currency.mkd

        XCTAssertEqual(sut.code, "MKD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_mga() {
        let sut = Currency.mga

        XCTAssertEqual(sut.code, "MGA")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_mwk() {
        let sut = Currency.mwk

        XCTAssertEqual(sut.code, "MWK")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_myr() {
        let sut = Currency.myr

        XCTAssertEqual(sut.code, "MYR")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_mvr() {
        let sut = Currency.mvr

        XCTAssertEqual(sut.code, "MVR")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_mru() {
        let sut = Currency.mru

        XCTAssertEqual(sut.code, "MRU")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_mur() {
        let sut = Currency.mur

        XCTAssertEqual(sut.code, "MUR")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_mxn() {
        let sut = Currency.mxn

        XCTAssertEqual(sut.code, "MXN")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_mxv() {
        let sut = Currency.mxv

        XCTAssertEqual(sut.code, "MXV")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_mdl() {
        let sut = Currency.mdl

        XCTAssertEqual(sut.code, "MDL")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_mnt() {
        let sut = Currency.mnt

        XCTAssertEqual(sut.code, "MNT")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_mad() {
        let sut = Currency.mad

        XCTAssertEqual(sut.code, "MAD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_mzn() {
        let sut = Currency.mzn

        XCTAssertEqual(sut.code, "MZN")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_mmk() {
        let sut = Currency.mmk

        XCTAssertEqual(sut.code, "MMK")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_nad() {
        let sut = Currency.nad

        XCTAssertEqual(sut.code, "NAD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_npr() {
        let sut = Currency.npr

        XCTAssertEqual(sut.code, "NPR")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_nio() {
        let sut = Currency.nio

        XCTAssertEqual(sut.code, "NIO")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_ngn() {
        let sut = Currency.ngn

        XCTAssertEqual(sut.code, "NGN")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_omr() {
        let sut = Currency.omr

        XCTAssertEqual(sut.code, "OMR")
        XCTAssertEqual(sut.scale, 3)
    }

    func test_pkr() {
        let sut = Currency.pkr

        XCTAssertEqual(sut.code, "PKR")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_pab() {
        let sut = Currency.pab

        XCTAssertEqual(sut.code, "PAB")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_pgk() {
        let sut = Currency.pgk

        XCTAssertEqual(sut.code, "PGK")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_pyg() {
        let sut = Currency.pyg

        XCTAssertEqual(sut.code, "PYG")
        XCTAssertEqual(sut.scale, 0)
    }

    func test_pen() {
        let sut = Currency.pen

        XCTAssertEqual(sut.code, "PEN")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_php() {
        let sut = Currency.php

        XCTAssertEqual(sut.code, "PHP")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_pln() {
        let sut = Currency.pln

        XCTAssertEqual(sut.code, "PLN")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_qar() {
        let sut = Currency.qar

        XCTAssertEqual(sut.code, "QAR")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_ron() {
        let sut = Currency.ron

        XCTAssertEqual(sut.code, "RON")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_rub() {
        let sut = Currency.rub

        XCTAssertEqual(sut.code, "RUB")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_rwf() {
        let sut = Currency.rwf

        XCTAssertEqual(sut.code, "RWF")
        XCTAssertEqual(sut.scale, 0)
    }

    func test_shp() {
        let sut = Currency.shp

        XCTAssertEqual(sut.code, "SHP")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_wst() {
        let sut = Currency.wst

        XCTAssertEqual(sut.code, "WST")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_stn() {
        let sut = Currency.stn

        XCTAssertEqual(sut.code, "STN")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_sar() {
        let sut = Currency.sar

        XCTAssertEqual(sut.code, "SAR")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_rsd() {
        let sut = Currency.rsd

        XCTAssertEqual(sut.code, "RSD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_scr() {
        let sut = Currency.scr

        XCTAssertEqual(sut.code, "SCR")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_sll() {
        let sut = Currency.sll

        XCTAssertEqual(sut.code, "SLL")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_sle() {
        let sut = Currency.sle

        XCTAssertEqual(sut.code, "SLE")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_sgd() {
        let sut = Currency.sgd

        XCTAssertEqual(sut.code, "SGD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_sbd() {
        let sut = Currency.sbd

        XCTAssertEqual(sut.code, "SBD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_sos() {
        let sut = Currency.sos

        XCTAssertEqual(sut.code, "SOS")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_ssp() {
        let sut = Currency.ssp

        XCTAssertEqual(sut.code, "SSP")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_lkr() {
        let sut = Currency.lkr

        XCTAssertEqual(sut.code, "LKR")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_sdg() {
        let sut = Currency.sdg

        XCTAssertEqual(sut.code, "SDG")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_srd() {
        let sut = Currency.srd

        XCTAssertEqual(sut.code, "SRD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_sek() {
        let sut = Currency.sek

        XCTAssertEqual(sut.code, "SEK")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_che() {
        let sut = Currency.che

        XCTAssertEqual(sut.code, "CHE")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_chw() {
        let sut = Currency.chw

        XCTAssertEqual(sut.code, "CHW")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_syp() {
        let sut = Currency.syp

        XCTAssertEqual(sut.code, "SYP")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_twd() {
        let sut = Currency.twd

        XCTAssertEqual(sut.code, "TWD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_tjs() {
        let sut = Currency.tjs

        XCTAssertEqual(sut.code, "TJS")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_tzs() {
        let sut = Currency.tzs

        XCTAssertEqual(sut.code, "TZS")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_thb() {
        let sut = Currency.thb

        XCTAssertEqual(sut.code, "THB")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_top() {
        let sut = Currency.top

        XCTAssertEqual(sut.code, "TOP")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_ttd() {
        let sut = Currency.ttd

        XCTAssertEqual(sut.code, "TTD")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_tnd() {
        let sut = Currency.tnd

        XCTAssertEqual(sut.code, "TND")
        XCTAssertEqual(sut.scale, 3)
    }

    func test_try() {
        let sut = Currency.try

        XCTAssertEqual(sut.code, "TRY")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_tmt() {
        let sut = Currency.tmt

        XCTAssertEqual(sut.code, "TMT")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_ugx() {
        let sut = Currency.ugx

        XCTAssertEqual(sut.code, "UGX")
        XCTAssertEqual(sut.scale, 0)
    }

    func test_uah() {
        let sut = Currency.uah

        XCTAssertEqual(sut.code, "UAH")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_aed() {
        let sut = Currency.aed

        XCTAssertEqual(sut.code, "AED")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_usn() {
        let sut = Currency.usn

        XCTAssertEqual(sut.code, "USN")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_uyu() {
        let sut = Currency.uyu

        XCTAssertEqual(sut.code, "UYU")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_uyi() {
        let sut = Currency.uyi

        XCTAssertEqual(sut.code, "UYI")
        XCTAssertEqual(sut.scale, 0)
    }

    func test_uyw() {
        let sut = Currency.uyw

        XCTAssertEqual(sut.code, "UYW")
        XCTAssertEqual(sut.scale, 4)
    }

    func test_uzs() {
        let sut = Currency.uzs

        XCTAssertEqual(sut.code, "UZS")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_vuv() {
        let sut = Currency.vuv

        XCTAssertEqual(sut.code, "VUV")
        XCTAssertEqual(sut.scale, 0)
    }

    func test_ves() {
        let sut = Currency.ves

        XCTAssertEqual(sut.code, "VES")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_ved() {
        let sut = Currency.ved

        XCTAssertEqual(sut.code, "VED")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_vnd() {
        let sut = Currency.vnd

        XCTAssertEqual(sut.code, "VND")
        XCTAssertEqual(sut.scale, 0)
    }

    func test_yer() {
        let sut = Currency.yer

        XCTAssertEqual(sut.code, "YER")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_zmw() {
        let sut = Currency.zmw

        XCTAssertEqual(sut.code, "ZMW")
        XCTAssertEqual(sut.scale, 2)
    }

    func test_zwl() {
        let sut = Currency.zwl

        XCTAssertEqual(sut.code, "ZWL")
        XCTAssertEqual(sut.scale, 2)
    }
}
