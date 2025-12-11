# Instructions to run the Notebook

## Move to the root directory and run:
```docker build -t stock-movements:1.0 .```

```docker run -it -p 8888:8888 -v "Current working directory"/workspace:/workspace stock-movements:1.0```

### Find the link that looks like ```http://127.0.0.1:8888/tree?token=12345678901234abdcd``` and open it in your browser
