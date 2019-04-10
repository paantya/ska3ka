all : ps.pdf

ps.pdf : ps.tex ps.kdx ps.adx ps.tdx

	pdflatex ps.tex

ps.kdx : ps.tex 
	./mksbkdx ps

ps.adx : ps.tex 
	./mksbadx ps

ps.tdx : ps.tex 
	./mksbtdx ps

ps.tex : 
	latex ps.tex

