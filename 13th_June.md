# 13th June
## What have we covered today?
### Introduction to stylometry
* How to compare corpora? How to divide corpus into representative samples?
* Craig's Zeta and its implementation in oppose() function of 'stylo' package:
  * words preferred - words consistently used only in the primary set,
  * words avoided - words consistently used only in the secondary set,
  * markers.
* Experiments with stoplists (more on that tomorrow)

### The reading
#### From the coursepack
* Craig, H., and Kinney, A. F. “Methods.” in Shakespeare, Computers, and the Mystery of Authorship, Cambridge University Press, 2009, p. 15-40.
* Burrows, J. “All the Way Through: Testing for Authorship in Different Frequency Strata.” Literary and Linguistic Computing, vol. 22, no. 1, Apr. 2007, pp. 27–47.
* Hoover, D. L. “Teasing Out Authorship and Style with T-Tests and Zeta”. DH2010 Book of Abstracts.

#### From the coursepack - documentation of functions we used today:
* [Short reminder](https://computationalstylistics.github.io/stylo_nutshell/#running-oppose)
* Eder, M., Kestemont, M. and Rybicki, J. ‘Stylo’: a package for stylometric analyses (a manual). 2015. [Click.](https://sites.google.com/site/computationalstylistics/stylo/stylo_howto.pdf?attredirects=1) - pages 26-27.
* [CRAN documentation](https://cran.r-project.org/web/packages/stylo/stylo.pdf) - pages 39-41.
* Eder, M., Kestemont, M. and Rybicki, J. “Stylometry with R: A Package for Computational Text Analysis.” The R Journal, vol. 8, no. 1, 2016, pp. 107–21. [Click.](https://journal.r-project.org/archive/2016/RJ-2016-007/RJ-2016-007.pdf) 

#### Extras
* Jan's paper on gender differences (the one with yelling):  
Rybicki, J. “Vive La Différence: Tracing the (Authorial) Gender Signal by Multivariate Analysis of Word Frequencies.” Digital Scholarship in the Humanities, vol. 31, no. 4, Dec. 2016, pp. 746–61, doi:10.1093/llc/fqv023.
* Detailed insight into comparing corpora:  
Kilgarriff, Adam. “Comparing Corpora. International Journal of Corpus Linguistics, vol. 6, no. 1, 2001, pp. 97–133.

## Cool links to check out
[Additional function to add extra table with frequencies](https://github.com/JoannaBy/DHSI-Stylometry/blob/master/stylo.excelify.table.R) - might be very useful if you're having problems browsing through your results in Excel - thank you Iain!  
[AntConc](http://www.laurenceanthony.net/software.html) - freeware for easy text analysis.  

## Homework
Think about an authorship case study you'd like to do tomorrow. We'll be learning classify() and rolling.classify(), which are methods for examining influences on the author in detail. While we'll be able to provide you with data for experiments, you now know it's even more fun if you do your own thing.  
You will need:  
* 1 (or more) text you want to examine. It can be an anonymous work or a suspected collaborative work,
* collection of texts by at least 2 potential authors,
  * note that the number of words for each of them should be roughly equal, so e.g. 5 texts of 10,000 words each for each of the authors is fine, but 5 of 10,000 i 10 of 100 - not.
