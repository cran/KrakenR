## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----install_load, eval=FALSE-------------------------------------------------
#  # Install the development version from GitHub
#  devtools::install_github("nathanael-g-durst/KrakenR")
#  

## ----setup--------------------------------------------------------------------
# Load the package
library(KrakenR)

## ----fetching_asset_information-----------------------------------------------
# Fetch all available assets
assets_all <- getAssets()

# Fetch data for specific assets
assets_specific <- getAssets(c("BTC", "ETH", "ADA"))


## ----fetching_asset_information_example, echo=FALSE---------------------------
# Preview of asset information
knitr::kable(head(assets_all))


## ----retrieving_order_book_data-----------------------------------------------
# Fetch order book data for ADAEUR pair
order_book <- getOB("ADAEUR")

# Fetch order book data with a limit on the number of orders
order_book_limited <- getOB("ADAEUR", count = 3)


## ----retrieving_order_book_data_example, echo=FALSE---------------------------
# Preview of asset information
knitr::kable(head(order_book_limited))


## ----fetching_ohlc_data-------------------------------------------------------
# Fetch 1-minute interval OHLC data for ADAEUR
ohlc_data <- getOHLC("ADAEUR", interval = 1)

# Fetch 4-hour interval data
ohlc_data_4h <- getOHLC("ADAEUR", interval = 240)


## ----fetching_ohlc_data_example, echo=FALSE-----------------------------------
# Preview of OHLC data
knitr::kable(head(ohlc_data_4h))


## ----getting_asset_pair_information-------------------------------------------
# Fetch all available asset pairs
pairs_all <- getPairs()

# Fetch information for a specific pair
pair_info <- getPairs(c("ADAEUR", "BTCUSD"))


## ----getting_asset_pair_information_example, echo=FALSE-----------------------
# Preview of asset pair information in a simplified two-column table
data_frame <- data.frame(Column = names(pairs_all),
                         Example = as.character(pairs_all[1, ]))
knitr::kable(data_frame)


## ----fetching_spread_data-----------------------------------------------------
# Fetch spread data for ADAEUR
spread_data <- getSpreads("ADAEUR")


## ----fetching_spread_data_example, echo=FALSE---------------------------------
# Preview of spread data
knitr::kable(head(spread_data))


## ----getting_ticker_information-----------------------------------------------
# Fetch ticker information for all pairs
tickers_all <- getTickers()

# Fetch ticker information for specific pairs
tickers_specific <- getTickers(c("ADAEUR", "BTCUSD"))


## ----getting_ticker_information_example, echo=FALSE---------------------------
# Preview of asset pair information in a simplified two-column table
data_frame <- data.frame(Column = names(tickers_all),
                         Example = as.character(tickers_all[1, ]))
knitr::kable(data_frame)


## ----fetching_recent_trade_data-----------------------------------------------
# Fetch recent trades for ADAEUR
recent_trades <- getTrades("ADAEUR")

# Fetch trades since a specific timestamp
recent_trades_since <- getTrades("ADAEUR", since = "2024-10-01 12:00:00")


## ----fetching_recent_trade_data_example, echo=FALSE---------------------------
# Preview of recent trades
knitr::kable(head(recent_trades))


## ----retrieving_system_status-------------------------------------------------
# Fetch both system status and timestamp
status_info <- getStatus()

# Fetch only system status
system_status <- getStatus("status")


## ----retrieving_system_status_example, echo=FALSE-----------------------------
# Display system status
print(paste("System Status:", status_info))


## ----retrieving_server_time---------------------------------------------------
# Fetch UNIX time
server_time_unix <- getTime("unix")

# Fetch RFC 1123 time
server_time_rfc <- getTime("rfc")


## ----retrieving_server_time_example, echo=FALSE-------------------------------
# Display server times
print(paste("UNIX Time:", server_time_unix))


