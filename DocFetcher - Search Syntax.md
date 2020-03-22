-   **Boolean operators**: The default operator is  `OR`, i.e. if you enter  `dog cat`, DocFetcher will search for documents containing one or both words. To search for documents which contain both words, enter  `dog AND cat`. To exclude a word, use the operator  `NOT`  or "-" (minus character) in front of it.
-   **Required terms**: To indicate that the document to search for must contain a specific term, use the '+' operator, like this:  +dog cat.  
    
-   **Phrase search**: To search for  `dog cat`  in that particular order, type in  `"dog cat"`  (with the quotation marks).
-   **Search in particular fields**: Currently, the fields "contents", "filename", "title" and "author" are available. The "contents" field is the default search scope, but, for example, if you want to get to a document whose title contains  `dog`, enter this:  `title:dog`. For a document with "dog" and/or "cat" in its title, enter:  `title:"dog cat"`.
-   **Wildcards**: A question mark ('?') in a search string stands for one unknown character, an asterisk ('*') is for an unknown number of unknown characters. Example:  `Luc*`  may yield  `Luc`,  `Lucy`,  `Lucene`, etc., whereas  `Luc?`  will only yield  `Lucy`. Search strings must not start with ? or *.  
    
-   **Boosting terms**: You can assign custom weights to words, thus increasing or decreasing the level of matching for a particular document if the weighted word occurs in it. This allows you to influence the relevance sorting of the result page. Example:  `dog^4 cat`  will bring up the documents with "dog" in it on the top of the result page.
---
DocFetcher 1.1.18  

# Introduction

DocFetcher is an Open Source desktop search application: It allows you to search the contents of files on your computer. - You can think of it as Google for your local files.

**Index-based search**: Since searching in the documents directly would be impractically slow for a larger number of documents, DocFetcher requires that you create  _indexes_  for the folders you want to search in. These indexes allow DocFetcher to quickly look up files by keyword, similar to how you would use the index in the back of a book. Creating an index might take some time, depending on the number and sizes of the indexed files. However, this needs to be done only once for each folder; afterwards you can search in the indexed folders as many times as you want.

**Creating an index**: To create an index, right-click on the  `Search Scope`  area on the left and select  `Create Index From > Folder`. Now choose a folder to be indexed. For starters, this should be a small one with not too many files in it, like, say, 50? After selecting the folder, a configuration window pops up. The default configuration should suffice, so just click on the  `Run`  button and wait until DocFetcher has finished indexing the documents. (An alternative way of creating an index is to paste a directory from the clipboard into the  `Search Scope`  area.)

**Searching**: Enter one or more words to search for in the text field above the result pane (the table with the column headers) and press the  `Enter`  key. The search results will be displayed in the result pane, sorted by descending score.

_If you are reading this manual inside DocFetcher, following the instructions in the next paragraph will make the manual disappear. To restore it, click on the  `'?'`  button on the top right. You can also open the manual in your default web browser by clicking on the  `Open in external browser`  button directly above this pane._

**Result pane and preview pane**: Below the result pane (or to the right of it, depending on the current GUI layout), you can find the preview pane. If you select a file on the result pane, the preview pane will show a text-only preview of the file's contents. Notable features:

-   **_Highlighting_**: By default, the search terms you've entered will be highlighted, and you can jump from one occurrence to the previous or next using the up and down buttons.
-   **_Built-in web browser_**: In case of HTML files, you can switch between the text-only view and a simple built-in web browser. (Note: The latter is not available on some Linux variants.)

One shortcut you might find useful: Press  `Ctrl+F`  or  `Alt+F`  to move the focus back to the search field. To open a file in an external program, double-click on it in the result pane.

**Sorting**: You can change the sorting of the results by clicking on any of the result pane's column headers. For example, to sort the results by filename, click on the  `Filename`  header. Clicking the same header twice will sort by the corresponding criterion in reversed order. You can also change the order of the columns via drag and drop: For example, if you want  `Filename`  to be the first column, just drag the  `Filename`  column header to the left.

**Filtering**: On the left of the GUI, you can see various controls for filtering the results: (1) You can specify a minimum and/or maximum filesize in the  `Minimum / Maximum Filesize`  control. (2) The  `Document Types`  list allows you to filter the results by type. (3) By unchecking items in the  `Search Scope`  area, you can filter the results by location.

**Index updates**: If files in the indexed folders are added, removed or modified, the corresponding indexes have to be updated, otherwise your search results might be out of date. Fortunately, updating an index is virtually always much faster than creating it from scratch, since only the changes have to be processed. Also, DocFetcher can update its indexes automatically in two ways:

1.  **_DocFetcher itself_**: If DocFetcher is running and the  _folder watching_  for the modified folder is enabled, DocFetcher detects the changes and updates its indexes immediately.
2.  **_DocFetcher daemon_**: If DocFetcher isn't running, the changes are recorded by a small daemon program that runs in the background; the affected indexes will then be updated the next time DocFetcher starts. (Note: The daemon is currently not available on Mac OS X, unfortunately.)

Some caveats: If you are using the portable version of DocFetcher and want the daemon to be run, you must install it manually by adding the daemon executable to your operating system's list of startup programs. Also, neither DocFetcher nor the daemon can detect changes on network shares.  
So, in those cases where the indexes can't be updated automatically, you'll have to do it yourself: In the  `Search Scope`  area, select one or more indexes to be updated, then either click on  `Update Index`  in the  `Search Scope`  context menu, or press the  `F5`  key.

----------

# Advanced Usage

**Query syntax**: With DocFetcher, you can do much more than simple word lookup. For example, you can use wildcards to search for words with a common start, like so:  `wiki*`. To search for a certain phrase (i.e. a sequence of words in a specific order), surround the phrase with quotation marks:  `"the quick brown fox"`. But that's barely the start. For an overview of all the supported contructs, see the  [query syntax section](http://www.waldoavenuerestorationbranch.org/docs/RSPhelp/DocFetcher/help/English/DocFetcher_Manual_files/Query_Syntax.html).

**Preferences**: On the top right of the user interface, you'll find an icon depicting two cogwheels. Click on it to open the Preferences dialog. Additional settings for more advanced usage can be accessed via the "Advanced Settings" link at the lower left of the Preferences dialog.

**Portable document repository**: The portable version of DocFetcher allows you create a bundle containing DocFetcher, your documents and the associated indexes, and then freely move this bundle around — even from one operating system to another, e.g. from Windows to Linux and vice versa. One important thing to keep in mind when using the portable version is that the indexes must be created with  _relative paths_. Click  [here](http://www.waldoavenuerestorationbranch.org/docs/RSPhelp/DocFetcher/help/English/DocFetcher_Manual_files/Portable_Repositories.html)  for more information about portable document repositories. By the way, if you've been using DocFetcher 1.0.3 and earlier, note that you're not required to put your documents into the DocFetcher folder anymore.

**Indexing configuration options**: For a detailed discussion of all those options on the indexing configuration window, click  [here](http://www.waldoavenuerestorationbranch.org/docs/RSPhelp/DocFetcher/help/English/DocFetcher_Manual_files/Indexing_Options.html). You can also reach this manual page directly from the configuration window by clicking on the  `Help`  button at the bottom of the window. Perhaps the most interesting configuration options are:

-   **_Customizable file extensions_**: The file extensions for plain text files and zip archives are fully customizable. This is particularly useful for indexing source code files.
-   **_File exclusion_**: You can exclude certain files from indexing based on regular expressions.
-   **_Mime type detection_**: Without mime type detection, DocFetcher will just look at a file's extension (e.g.  `'.doc'`) to determine its file type. With mime type detection, DocFetcher will also peek into the file's contents to see if it can find any better type info. This is slower than just checking the file extension, but it's useful for files that have the wrong file extension.
-   **_HTML pairing_**: By default, DocFetcher treats an HTML file and its associated folder (e.g. a file  `foo.html`  and a folder  `foo_files`) as a single document. The main purpose of this is to make all the "clutter" inside the HTML folders disappear from the search results.

**Regular expressions**: Both the file exclusion and the mime type detection rely on so-called  _regular expressions_. These are user-defined patterns that DocFetcher will match against filenames or filepaths. For example, to exclude all files starting with the word "journal", you can use this regular expression:  `journal.*`. Note that this is slightly different from DocFetcher's query syntax, where you would omit the dot:  `journal*`. If you want to know more about regular expressions, read this  [brief introduction](http://www.waldoavenuerestorationbranch.org/docs/RSPhelp/DocFetcher/help/English/DocFetcher_Manual_files/Regular_Expressions.html).

**Release notification**: DocFetcher does not (and should not?) automatically check for updates. If you  _do_  wish to be notified of new releases, there are  [a couple of ways](http://www.waldoavenuerestorationbranch.org/docs/RSPhelp/DocFetcher/help/English/DocFetcher_Manual_files/Release_Notification.html)  to set this up.

----------

# Caveats and Common Gotchas

**Raising the memory limit**: DocFetcher, like all Java programs, has a fixed limit on how much memory it's allowed to use, known as the  _Java heap size_. This memory limit must be set on startup, and DocFetcher currently chooses a default value of 256 MB. If you try to index a very, very large number of files, and/or if some of the indexed files are really huge (which is not uncommon with PDF files), then chances are DocFetcher will hit that memory limit. If this ever happens, you might want to  [raise the memory limit](http://www.waldoavenuerestorationbranch.org/docs/RSPhelp/DocFetcher/help/English/DocFetcher_Manual_files/Memory_Limit.html).

**Don't index system folders**: In contrast to other desktop search applications, DocFetcher was not designed for indexing system folders such as  `C:`or  `C:\Windows`. Doing so is discouraged for the following reasons:

1.  **_Slowdown_**: The files in system folders tend to be modified very frequently. If the folder watching is turned on, this will cause DocFetcher to update its indexes all the time, slowing down your computer.
2.  **_Memory issues_**: DocFetcher needs to keep tiny representations of your files in memory. Because of this, and because system folders usually contain a very large number of files, DocFetcher will be more likely to run out of memory if you index system folders.
3.  **_Waste of resources, worse search results_**: Apart from these technical reasons, indexing system folders is most likely a waste of indexing time and disk space, and it will also pollute your search results with unneeded system files. So, for the best results in the least amount of time, just index what you need.

**Unicode support**: DocFetcher has full Unicode support for all document formats. In case of plain text files, DocFetcher has to use  [certain heuristics](http://www-archive.mozilla.org/projects/intl/UniversalCharsetDetection.html)  to guess the correct encoding, since plain text files don't contain any explicit encoding information.

**Archive support**: DocFetcher currently supports the following archive formats: zip and derived formats, 7z, rar and the whole tar.* family. Additionally, executable zip and 7z archives are supported as well, but not executable rar archives. DocFetcher will treat all archives as if they were ordinary folders, and it can also handle an arbitrarily deep nesting of archives (e.g. a zip archive containing a 7z archive containing a rar archive...).  
With that said, it should be noted that support for zip and 7z archives is best in terms of robustness and speed. On the other hand, indexing of tar.gz, tar.bz2 and similar formats tends to be less efficient. This is due to the fact that these formats don't have an internal "summary" of the archive contents, which forces DocFetcher to unpack the entire archive rather than only individual archive entries. Bottom line: If you have the choice, compress your files either as zip or 7z archives for maximum compatibility with DocFetcher.

**The DocFetcher daemon is innocent**: If you suspect that the DocFetcher daemon is slowing down your computer or causing crashes, you're probably wrong. As a matter of fact, the daemon is a very simple program with low memory footprint and CPU usage, and it doesn't do much besides watching folders. If you're still not convinced, just rename the daemon executables so they won't start automatically, or try the portable version of DocFetcher, where the daemon is deactivated by default.

----------

# Manual Subpages

-   [Query syntax](http://www.waldoavenuerestorationbranch.org/docs/RSPhelp/DocFetcher/help/English/DocFetcher_Manual_files/Query_Syntax.html)
-   [Portable document repositories](http://www.waldoavenuerestorationbranch.org/docs/RSPhelp/DocFetcher/help/English/DocFetcher_Manual_files/Portable_Repositories.html)
-   [Indexing options](http://www.waldoavenuerestorationbranch.org/docs/RSPhelp/DocFetcher/help/English/DocFetcher_Manual_files/Indexing_Options.html)
-   [Regular expressions](http://www.waldoavenuerestorationbranch.org/docs/RSPhelp/DocFetcher/help/English/DocFetcher_Manual_files/Regular_Expressions.html)
-   [Release notification](http://www.waldoavenuerestorationbranch.org/docs/RSPhelp/DocFetcher/help/English/DocFetcher_Manual_files/Release_Notification.html)
-   [How to raise the memory limit](http://www.waldoavenuerestorationbranch.org/docs/RSPhelp/DocFetcher/help/English/DocFetcher_Manual_files/Memory_Limit.html)
-   [How to raise the folder watch limit (Linux)](http://www.waldoavenuerestorationbranch.org/docs/RSPhelp/DocFetcher/help/English/DocFetcher_Manual_files/Watch_Limit.html)
-   [Preferences](http://www.waldoavenuerestorationbranch.org/docs/RSPhelp/DocFetcher/help/English/DocFetcher_Manual_files/Preferences.html)

# Further Information

For more information, have a look at our  [wiki](http://docfetcher.sourceforge.net/wiki/doku.php). If you have any questions, feel free to visit our  [forum](http://sourceforge.net/projects/docfetcher/forums/forum/702424). Bug reports can be submitted on our  [bug tracker](http://sourceforge.net/tracker/?group_id=197779&atid=962834).

DocFetcher Manual – Copyright (c) 2007-2016 DocFetcher Development Team

---
# Query Syntax

This page gives an overview of the available query syntax, going from "basic" to "advanced". The query syntax is provided by Apache Lucene, DocFetcher's underlying search engine, and it's described in a more technical manner on Lucene's  [query syntax page](http://lucene.apache.org/java/3_4_0/queryparsersyntax.html).

## Boolean Operators

DocFetcher supports the boolean operators  `OR`,  `AND`  and  `NOT`. If words are concatenated  _without_  boolean operators, DocFetcher will by default treat them as if they were concatenated with  `OR`. If you don't like that, you can go to the  [preferences](http://www.waldoavenuerestorationbranch.org/docs/RSPhelp/DocFetcher/help/English/DocFetcher_Manual_files/Preferences.html)  and set  `AND`  as the default.

Instead of  `OR`,  `AND`  and  `NOT`, you can also use  `||`,  `&&`  and  `'-'`  (minus symbol), respectively. You can use  _parentheses_  to group certain expressions. Here are some examples:

Query

Resulting documents contain...

`dog OR cat`

either  `dog`, or  `cat`, or both

`dog AND cat`

both  `dog`  and  `cat`

`dog cat`

(by default equivalent to the query  `dog OR cat`)

`dog NOT cat`

`dog`, but not  `cat`

`-dog cat`

`cat`, but not  `dog`

`(dog OR cat) AND mouse`

`mouse`, and either  `dog`  or  `cat`, or both

## Searching is case-insensitive

DocFetcher does not distinguish between lowercase and uppercase characters, so it doesn't matter if the words you enter are completely lowercase, or completely uppercase, or a mix of both. The only exceptions are the keywords  `OR`,  `AND`,  `NOT`  and  `TO`, which must always be entered in uppercase. (For the  `TO`  keyword, see the 'range searches' section below.)

## Phrase Searches and Required Terms

To search for a phrase (i.e. a sequence of words), put the phrase in double quotes. To indicate that the documents to search for must contain a particular word, put a  `'+'`  in front of the word. Of course you can combine these constructs with boolean operators and parentheses. Again, some examples:

Query

Resulting documents contain...

`"dog cat mouse"`

the words  `dog`,  `cat`  and  `mouse`, in that particular order

`+dog cat`

definitely  `dog`, and maybe also  `cat`

`"dog cat" AND mouse`

the phrase  `dog cat`, and the word  `mouse`

`+dog +cat`

(equivalent to the query  `dog AND cat`)

## Wildcards

Question marks (`'?'`) and asterisks (`'*'`) can be used to indicate that some characters are unknown. The question mark stands for exactly one unknown character, while the asterisk stands for zero or more unknown characters. Examples:

Query

Resulting documents contain...

`luc?`

`lucy`,  `luca`, ...

`luc*`

`luc`,  `lucy`,  `luck`,  `lucene`, ...

`*ene*`

`lucene`,  `energy`,  `generator`, ...

Note: If wildcards are used as the first character of a word, the search tends to be slower on average. This is due to how the index is structured: It's as if you tried to look up someone's phone number, and you only know that person's first name. So, in the example above, searching for  `*ene*`  will probably be slower than the other searches because  `*ene*`  starts with a wildcard.

## Fuzzy Searches

Fuzzy searches allow you to search for words  _similar_  to a given word. For example, if you search for  `roam~`, DocFetcher will find documents containing words like  `foam`  and  `roams`.

Additionally, you can append a similarity threshold between 0 and 1, like so:  `roam~0.8`. The higher the threshold, the higher the similarity of the returned matches. Leaving out the threshold is the same as using the default value of 0.5.

## Proximity Searches

Proximity searches allow you to find words that are within a specific distance away from each other. To do a proximity search, put a tilde (`'~'`) at the end of a phrase, followed by a distance value. — Note that this is syntactically similar to fuzzy searches. For example, to search for documents containing  `wikipedia`  and  `lucene`  within 10 words of each other, type in:  `"wikipedia lucene"~10`

## Boosting Terms

You can influence the relevance sorting of the results by assigning custom weights to words. Example: If you enter  `dog^4 cat`  instead of just  `dog cat`, documents containing  `dog`  will receive a higher score and therefore move closer to the top of the results.

Although the boost factor must be positive, it can be less than 1 (e.g. 0.2). If no boost factor is specified, the default value 1 is used.

## Field Searches

By default, DocFetcher will search in all the textual data it is capable of extracting, i.e. the contents, the filenames and the metadata of the documents. However, you can also restrict your searches to the filename and/or certain metadata fields. For example, to search for documents whose titles contain  `wikipedia`, enter:  `title:wikipedia`. This may be combined with phrase search, e.g.  `title:"dog cat"`, or with parentheses, e.g.  `title:(dog cat)`. In fact, if you omit the quotes and parentheses, only  `dog`  will be matched against the title, not  `cat`.

Which fields are available generally depends on the document format, but you can use this as a rule of thumb:

-   _Files_: filename, title, author
-   _Emails_: subject, sender, recipients

## Range Searches

DocFetcher allows searching for words that are lexicographically  _between_  two other words. For example, the word  `beta`  lies between  `alpha`  and  `gamma`. So, if you want to list all documents that contain words between  `alpha`  and  `gamma`, type in:  `[alpha TO gamma]`.

When using the square brackets, the range query is  _inclusive_, i.e.  `alpha`  and  `gamma`  are included in the results. To do an  _exclusive_  range search, use curly brackets instead:  `{alpha TO gamma}`

You may combine range searches and field searches as follows:  `title:{alpha TO gamma}`. This will restrict the range search to the title field.

---
# Regular Expressions

This page is meant to be a very brief introduction to regular expressions. It is by no means exhaustive, since regular expressions basically represent an entire pattern matching language. If you want to dig deeper, you can find a ton of information about it on the internet; just search for 'regular expression tutorial' or 'regular expression introduction' or something like that.

## Matching all Microsoft Excel files:  `.*\.xlsx?`

In regular expressions (often abbreviated to "regex"), certain characters have a special meaning. For example, the  **_dot_**  (`'.'`) stands for exactly one unknown character. So you could, for instance, use the regex  `h.llo`  to match strings like  `hallo`  or  `hello`, but also  `hzllo`  or  `h8llo`.

Another special character is the  **_asterisk_**  (`'*'`), which stands for "the preceding character, repeated zero or more times". So if you enter the regex  `hello*`, the following strings would match:  `hell`,  `hello`,  `helloo`,  `hellooo`, and so on.

As a consequence of these rules, if the dot and the asterisk are put together, they will match an arbitrary sequence of characters. For example, the regex  `gen.*ion`  would match:  `genion`,  `generalization`,  `generation`,  `gentrification`, and so on.

A special character similar to the asterisk is the  **_question mark_**  (`'?'`), which stands for "the preceding character, zero times or exactly once". You might also rephrase it as "the preceding character may or may not be there". Like the asterisk, it can be combined with a dot. Therefore, the regex  `hell.?`  would match:  `hell`,  `hello`,  `hells`,  `hell4`, etc.

Since characters such as the dot and the asterisk have a special meaning, if you want to match them  _literally_, you'll have to  _escape_  them. This is done by preceding them with another special character, the  **_backslash_**  (`'\'`). A typical case where the backslash is needed is matching the dot in a filename. For example, to match all files with the filename  `license.txt`, you have to use the regex  `license\.txt`  instead of just  `license.txt`  — the latter would also match, for example,  `license-txt`.

So, if we put all this together, we can write down a regex that matches all Microsoft Excel files, like so:  `.*\.xlsx?`. This regex basically says: An arbitrary sequence of characters, followed by a literal dot, followed by "xls", with an optional "x" at the end.

## Matching a sequence of digits:  `journal\d+\.doc`

Suppose you want to match all Microsoft Word files that start with "journal" and end with a timestamp, like this: "journal2007.doc". Moreover, what you  _don't_  want is to match files like "journalism.doc".

A regex like  `journal.*\.doc`  isn't going to work here because it would match "journalism.doc" as well. The first step towards the solution is to replace the dot with either  `[0-9]`  or  `\d`, which both match exactly  **_one digit_**. The expression  `[0-9]`  is actually a more general notation than  `\d`, because you can, for example, write  `[4-6]`  to match only the digits  `4`,  `5`  and  `6`. It even works for letters:  `[m-p]`  matches all lowercase letters from m through p.

So, if we combine  `\d`  with an asterisk, we can write down the regex  `journal\d*\.doc`, which will match "journal2007.doc", but not "journalism.doc". But wait, that's not quite right: Recall that the asterisk means "the preceding character, repeated  _zero_  or more times". In this case, we don't want  _zero_  digits after "journal", we want  _at least one_  — otherwise the regex would also match the file "journal.doc".

So here's another special character for you: The  **_plus_**  symbol (`'+'`) stands for "the preceding character, repeated one or more times". The final version of our regex is therefore:  `journal\d+\.doc`

---

<!--stackedit_data:
eyJoaXN0b3J5IjpbLTgxMjI5MjQ3NCwxODQ4MTI2NTk0XX0=
-->