
# Change Log
All notable changes to this project will be documented in this file.
 
The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).
 
## [Unreleased] - 2020-01-16
 
Here we write upgrading notes. It's a team effort to make them as
straightforward as possible.
 
### Added
- Added link to Semantic Versioning in README.md
- Added this CHANGELOG.md file
 
### Changed

- In the setup chunk, added a `knitr` command to point to the directory above the folder in which the .Rmd file resides. This is designed so that all of the .Rmd files can reside in an `rmarkdown` folder (or any folder one cares to name it), but the `knitr` command functions as if the .Rmd file is located in the main project folder. This is useful to easy access folders that are routinely called in the .Rmd files, such as `data` for input or `html` where the finished R Markdown reports can reside. 
 
### Fixed

- Updated README.md text to reflect changes
 
## [0.3] - 2019-05-22
  
### Added

- Convert metadata from .txt to .yml
- Add Rmd with shell script to replace audgendb_template on Mac OS X
 
### Changed
 
### Fixed

- Minor edits

## [0.2] - 2019-03-07
  
### Added

- better data input section & add kable function
- add useful functions
 
### Changed
 
### Fixed

- Minor edits
 
## [0.1] - 2015-09-16
 
### Added

- Initial release with basic structure of page.
  
### Changed

### Fixed
