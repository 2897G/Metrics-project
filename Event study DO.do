clear

cd "C:\AAAA\Coursework\Project\AA FINAL DATA"
use "Event study DATA.dta"

*gen day = date(date, "DMY")
*drop date
*rename day date
*format date %td
*tsset date


estudy sonia_diff tbill_diff gilt25_r_diff gilt25_n_diff gilt5_r_diff gilt5_n_diff gilt10_r_diff gilt10_n_diff gilt20_r_diff gilt20_n_diff bond_return ftse100_return ftse250_return eri_return, datevar(date) evdate(06102011) dateformat("DMY") lb1(0) ub1(0) lb2(0) ub2(1) lb3(0) ub3(4) lb4(5) ub4(9) modtype("HMM") eswubound(-17) diagn("GRANK") suppress("group") showpvalues output("results06102011")
estudy sonia_diff tbill_diff gilt25_r_diff gilt25_n_diff gilt5_r_diff gilt5_n_diff gilt10_r_diff gilt10_n_diff gilt20_r_diff gilt20_n_diff bond_return ftse100_return ftse250_return eri_return, datevar(date) evdate(09022012) dateformat("DMY") lb1(0) ub1(0) lb2(0) ub2(1) lb3(0) ub3(4) lb4(5) ub4(9) modtype("HMM") eswubound(-17) diagn("GRANK") suppress("group") showpvalues output("results09022012")
estudy sonia_diff tbill_diff gilt25_r_diff gilt25_n_diff gilt5_r_diff gilt5_n_diff gilt10_r_diff gilt10_n_diff gilt20_r_diff gilt20_n_diff bond_return ftse100_return ftse250_return eri_return, datevar(date) evdate(05072012) dateformat("DMY") lb1(0) ub1(0) lb2(0) ub2(1) lb3(0) ub3(4) lb4(5) ub4(9) modtype("HMM") eswubound(-17) diagn("GRANK") suppress("group") showpvalues output("results05072012")
estudy sonia_diff tbill_diff gilt25_r_diff gilt25_n_diff gilt5_r_diff gilt5_n_diff gilt10_r_diff gilt10_n_diff gilt20_r_diff gilt20_n_diff bond_return ftse100_return ftse250_return eri_return, datevar(date) evdate(08112012) dateformat("DMY") lb1(0) ub1(0) lb2(0) ub2(1) lb3(0) ub3(4) lb4(5) ub4(9) modtype("HMM") eswubound(-22) diagn("GRANK") suppress("group") showpvalues output("results08112012")
estudy sonia_diff tbill_diff gilt25_r_diff gilt25_n_diff gilt5_r_diff gilt5_n_diff gilt10_r_diff gilt10_n_diff gilt20_r_diff gilt20_n_diff bond_return ftse100_return ftse250_return eri_return, datevar(date) evdate(07032013) dateformat("DMY") lb1(0) ub1(0) lb2(0) ub2(1) lb3(0) ub3(4) lb4(5) ub4(9) modtype("HMM") eswubound(-17) diagn("GRANK") suppress("group") showpvalues output("results07032013")
estudy sonia_diff tbill_diff gilt25_r_diff gilt25_n_diff gilt5_r_diff gilt5_n_diff gilt10_r_diff gilt10_n_diff gilt20_r_diff gilt20_n_diff bond_return ftse100_return ftse250_return eri_return, datevar(date) evdate(14072016) dateformat("DMY") lb1(0) ub1(0) lb2(0) ub2(1) lb3(0) ub3(4) lb4(5) ub4(9) modtype("HMM") eswubound(-20) diagn("GRANK") suppress("group") showpvalues output("results14072016")
estudy sonia_diff tbill_diff gilt25_r_diff gilt25_n_diff gilt5_r_diff gilt5_n_diff gilt10_r_diff gilt10_n_diff gilt20_r_diff gilt20_n_diff bond_return ftse100_return ftse250_return eri_return, datevar(date) evdate(04082016) dateformat("DMY") lb1(0) ub1(0) lb2(0) ub2(1) lb3(0) ub3(4) lb4(5) ub4(9) modtype("HMM") eswubound(-14) diagn("GRANK") suppress("group") showpvalues output("results04082016")
estudy sonia_diff tbill_diff gilt25_r_diff gilt25_n_diff gilt5_r_diff gilt5_n_diff gilt10_r_diff gilt10_n_diff gilt20_r_diff gilt20_n_diff bond_return ftse100_return ftse250_return eri_return, datevar(date) evdate(26032020) dateformat("DMY") lb1(0) ub1(0) lb2(0) ub2(1) lb3(0) ub3(4) lb4(5) ub4(9) modtype("HMM") eswubound(-37) diagn("GRANK") suppress("group") showpvalues output("results26032020")


sktest sonia_diff tbill_diff gilt1_diff gilt2_diff gilt5_diff gilt10_diff gilt20_diff bond_return ftse100_return ftse250_return eri_return
swilk sonia_diff tbill_diff gilt1_diff gilt2_diff gilt5_diff gilt10_diff gilt20_diff bond_return ftse100_return ftse250_return eri_return
sfrancia sonia_diff tbill_diff gilt1_diff gilt2_diff gilt5_diff gilt10_diff gilt20_diff bond_return ftse100_return ftse250_return eri_return

reg sonia_diff
estat hettest, iid
reg tbill_diff
estat hettest, iid
reg gilt1_diff
estat hettest, iid
reg gilt2_diff
estat hettest, iid
reg gilt5_diff
estat hettest, iid
reg gilt10_diff
estat hettest, iid
reg gilt20_diff
estat hettest, iid
reg bond_return
estat hettest, iid
reg ftse100_return
estat hettest, idd
reg ftse250_return
estat hettest, iid
reg eri_return
estat hettest, iid





estudy gilt10_r_diff, datevar(date) evdate(06102011) dateformat("DMY") lb(0) ub(1) modtype("HMM") eswubound(-17) diagn("GRANK") showpvalues
estudy gilt10_r_diff, datevar(date) evdate(09022012) dateformat("DMY") lb(0) ub(1) modtype("HMM") eswubound(-17) diagn("GRANK") showpvalues
estudy gilt10_r_diff, datevar(date) evdate(05072012) dateformat("DMY") lb(0) ub(1) modtype("HMM") eswubound(-17) diagn("GRANK") showpvalues
estudy gilt10_r_diff, datevar(date) evdate(08112012) dateformat("DMY") lb(0) ub(1) modtype("HMM") eswubound(-22) diagn("GRANK") showpvalues
estudy gilt10_r_diff, datevar(date) evdate(07032013) dateformat("DMY") lb(0) ub(1) modtype("HMM") eswubound(-17) diagn("GRANK") showpvalues
estudy gilt10_r_diff, datevar(date) evdate(14072016) dateformat("DMY") lb(0) ub(1) modtype("HMM") eswubound(-20) diagn("GRANK") showpvalues
estudy gilt10_r_diff, datevar(date) evdate(04082016) dateformat("DMY") lb(0) ub(1) modtype("HMM") eswubound(-14) diagn("GRANK") showpvalues
estudy gilt10_r_diff, datevar(date) evdate(26032020) dateformat("DMY") lb(0) ub(1) modtype("HMM") eswubound(-37) diagn("GRANK") showpvalues





