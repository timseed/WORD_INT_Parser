parser: lex.yy.c parser.tab.c
	gcc -o parser lex.yy.c parser.tab.c -ll

lex.yy.c: lexer.l parser.tab.h
	flex lexer.l

parser.tab.c parser.tab.h: parser.y
	bison -t -d parser.y

clean:
	rm -f parser lex.yy.c parser.tab.c parser.tab.h

test:
	cat test.nec | ./parser
