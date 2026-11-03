Homebrew Tap
============

This is a homebrew tap for the following projects:

| Project | Description | Version | Commands |
|---------|-------------|---------|----------|
| [ai-cli-tools](https://github.com/Kuniwak/ai-cli-tools) | CLI Tools for CLI AI Agents | 3.0.1 | `stdinexec`, `stdinsubst`, `stdinsplit`, `stdinsub` |
| [pfd-tools](https://github.com/Kuniwak/pfd-tools) | Tools related to Process Flow Diagram (PFD) such as static analyzers and schedulers | 7.4.2-oss.1 | `pfdhelp`, `pfdlint`, `pfdsort`, `pfdfix`, `pfdrenum`, `pfddupmark`, `pfdcpcomp`, `pfdtable`, `pfdestcallout`, `pfdesttable`, `pfdres`, `pfdticket`, `pfdplan`, `criticalpath`, `planmaster`, `plantimeline`, `bizday`, `holidays`, `pfdquery`, `pfddiff`, `pfdrun`, `pfdrungraph`, `pfddot`, `pfddeadlock`, `pfdparse` |
| [puml-tools](https://github.com/Kuniwak/puml-tools) | A suite of tools for viewing, editing and searching PlantUML diagrams | 3.2.1 | `pumlc42seqchk`, `pumlc4bdyls`, `pumlc4fold`, `pumlhelp`, `pumlparse`, `pumlseq2c4`, `pumlseqbreak`, `pumlseqexpand`, `pumlseqfold`, `pumlseqgroupcut`, `pumlseqgroupmask`, `pumlseqgroupsplit`, `pumlseqhide`, `pumlseqmsg`, `pumlseqproj`, `pumlseqrefinement`, `pumlseqsubset`, `pumlseqtrace`, `pumltodo` |
| [puml-parallel](https://github.com/Kuniwak/puml-parallel) | A tool for composing PlantUML state diagrams in parallel with synchronization events (CSP interface parallel) | 3.9.0 | `csdfparallel`, `csdfpromote`, `csdfhide`, `csdfcomp`, `csdfparse`, `csdfevents`, `csdfrepl`, `csdfsort`, `csdfslice`, `csdflint`, `csdflivelockfree`, `csdftracechk`, `csdftranstable`, `csdfrefinement`, `csdfrepld`, `csdfreplcmd`, `obligationirc`, `csdfhelp`, `csdfbmc` |

How to install
--------------

### By Tapping the Repository

```console
$ brew tap Kuniwak/tap
$ brew install ai-cli-tools
$ brew install pfd-tools
$ brew install puml-tools
$ brew install puml-parallel
```


### By Installing the Formulae Directly

```console
$ brew install Kuniwak/tap/ai-cli-tools
$ brew install Kuniwak/tap/pfd-tools
$ brew install Kuniwak/tap/puml-tools
$ brew install Kuniwak/tap/puml-parallel
```


License
-------

[MIT License](./LICENSE)
