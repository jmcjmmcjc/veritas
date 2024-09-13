%{
%}


%%
[a-z] {printf("single lowercase charater\n");}
. {printf("not a lowercase charater\n");}
\n { return 0;}
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("String:");
    yylex();

    return 0;
}
