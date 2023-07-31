# Bard-Proxy
Proxy for Bard LLM

## How to get your bard key

Access from <a ref="https://bard.google.com/">Bard</a> 

<p align="left">
  <img src="./assets/bard_key.png" width="600px" />
</p>


## Quick Start

### Method 1: Quick Start by Docker (recommended, in 5 seconds)

```commandline
# use your own bard key 'YOUR-BARD-KEY' instead.

docker run -d --name bard_proxy -p 8671:8671 -e BARD_PROXY_API_KEY=YOUR-BARD-KEY shinexy/bard_proxy
```

### Method 2: Start In Current Project
1. clone current project into your local dir.
2. set your bard key in .env file
3. launch python project `python main.py`


## verify

> curl -X POST -H "Content-Type: application/json" -d '{"input": "hello"}' http://localhost:8671/api/bard/v1/chat/completions
