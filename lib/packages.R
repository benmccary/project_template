# LOAD REQUIRED LIBRARIES
# Default
require(tidyverse)
require(lubridate)


# Optional
require(caret)
require(purrr)
require(lme4)
require(broom)
require(MASS)
# MASS and dplyr don't work well together
# https://stackoverflow.com/questions/24202120/dplyrselect-function-clashes-with-massselect
select <- dplyr::select

require(knitr)
require(kableExtra)
require(ggrepel)


