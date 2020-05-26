gen day = date(date, "DMY")
drop date
rename day date
format date %td
tsset date


graph twoway (scatter ftse100_return mean_surprise) (lfit ftse100_return mean_surprise)
graph twoway (scatter gilt20 surprise) (lfit gilt20 surprise)
graph twoway (scatter ftse100 surprise) (lfit ftse100 surprise)
graph twoway (scatter bond surprise) (lfit bond surprise)
graph twoway (scatter eri surprise) (lfit eri surprise)

clear
cd "C:\AAAA\Coursework\Project\AA FINAL DATA"


foreach var in sonia_diff tbill_diff gilt25_r_diff gilt25_n_diff gilt5_r_diff gilt5_n_diff gilt10_r_diff gilt10_n_diff gilt20_r_diff gilt20_n_diff bond_return ftse100_return ftse250_return eri_return{
	
	reg `var' mean_surprise, nocons robust
	outreg2 using cal_results.xls, append
}





clear
