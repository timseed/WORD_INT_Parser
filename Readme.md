# Bison and Flex to parse STRINGS and INTs 

This is a simple project to hopefully allow you to understand how to write your own syntax parser. 

It should build using

    make 

And to run 

    ./parser 

Try the input of

    AA BB 32 DD 

It should correctly identify these objects. 

You now could try and extend it to recognize 

  - dates 
  - floating Point numbers 

It is up to you. 

#Debugging 

Should you want to see what is going on 'under the hood' - then uncomment yydebug=1 

# Developed and Compiled

Using MacOS. Bison and Flex from *brew*. 
