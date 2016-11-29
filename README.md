Lesson Module Repository
========================

The [module repository](https://github.com/cyberpost500/modules/) will hold the
content of any lessons we (the Post Advisors) produce at the explorer post.

Lessons are written up in a langauge called Markdown.  To convert any given
Markdown file from the repository into a PDF, use `pandoc` with the `xelatex`
engine, preferably with a Unicode font so that none of the glyphs are missing
from the resulting document.

For example:

    pandoc -V geometry:margin=0.5in --variable mainfont="DejaVu Sans" --variable \
    sansfont="DejaVu Sans" --variable monofont="DejaVu Sans Mono" \
    --latex-engine=xelatex  live-boot.mkd -o live-boot.pdf --highlight-style=tango \
    --toc -N

PDFS (and HTML)
---------------
The bit about Pandoc and Xelatex confusing?  Yeah, it kind of is.  Here's a
running list of the modules already exported to PDF (and HTML):

* Live Boot Module [txt](live-boot/live-boot.mkd) [pdf](live-boot/live-boot.pdf) [html](live-boot/live-boot.html)
* Text Analytics
    + Lesson 1 [txt](text-analytics/lesson-01/lesson-plan.md) [pdf](text-analytics/lesson-01/lesson-plan.pdf) [html](text-analytics/lesson-01/lesson-plan.html)
    + Lesson 2 [txt](text-analytics/lesson-02/lesson-plan.md) [pdf](text-analytics/lesson-02/lesson-plan.pdf) [html](text-analytics/lesson-02/lesson-plan.html)
* Python [txt](python/python.mkd) [pdf](python/python.pdf) [html](python/python.html)
* Git [txt](git/git.mkd) [pdf](git/git.pdf) [html](git/git.html)
* Python Games
    + Lesson 1 [txt](python-games/python-games.mkd) [pdf](python-games/python-games.pdf) [html](python/python-games.html)
    + Lesson 2 [txt](python-games/python-games-2.mkd) [pdf](python-games/python-games-2.pdf) [html](python-games/python-games-2.html)
    + Lesson 3 [txt](python-games/python-games-3.mkd) [pdf](python-games/python-games-3.pdf) [html](python-games/python-games-3.html)
    + Project File [tar only](python-games/project.tar)

