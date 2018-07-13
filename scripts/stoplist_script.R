library(stylo)

parsed.corpus = load.corpus.and.parse(files = "all", corpus.dir = "corpus", markup.type = "plain",
language = "English", encoding = "UTF-8")

frequency.list = make.frequency.list(parsed.corpus)

# put the name of your stoplist file here
stoplist = scan("stoplist.txt", character(), quote = "") 

new.list = delete.stop.words(frequency.list, stop.words = stoplist)

my.table.of.frequencies=make.table.of.frequencies(parsed.corpus, new.list, relative=FALSE)

results = stylo(frequencies = my.table.of.frequencies) 

results$features.actually.used

results$table.with.all.freqs

write.csv(results$table.with.all.freqs, file = "my_frequencies.csv")
