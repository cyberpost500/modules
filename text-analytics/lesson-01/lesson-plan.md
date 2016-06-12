# Lesson Outline
  - The INTs (HUMINT, ELINT, GEOINT, OSINT, etc.)  
  - Text Analytics  - the process of analyzing unstructured text, extracting relevant information, and transforming it into useful intelligence.  
  - Text to be analyzed: a list of songs by the Beatles   
    - How many different words did they use??  
    - Which words were used frequently?  
    - Which word was used the most?
    ```- tr [:space:] '\n' < beatles-songs.txt | grep -v "^\s*$" | sort | sed -r -e "s/\)//g" -e "s/\(//g" -e "s/,//g" | uniq -c | sort -bnr | wc -l```
  - Linux commands used: wget, tr, vi, wc, sed, cat, less, more
	
		