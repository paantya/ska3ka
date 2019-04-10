all : ps.pdf

ps.pdf : ps.tex ps.adx ps.tdx
	pdflatex ps.tex

ps.adx : ps.tex 
	./mksbadx ps

ps.tdx : ps.tex 
	./mksbtdx ps

ps.tex : 
	latex ps.tex

