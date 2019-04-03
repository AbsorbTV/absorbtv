#[cfg(test)]
use mockito;

#[cfg(not(test))]
let url = "https://api.twitter.com";

#[cfg(test)]
let url = &mockito::server_url();
