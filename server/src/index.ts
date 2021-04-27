import express from "express";
import morgan from "morgan";
import cors from "cors";
import { createProxyMiddleware } from "http-proxy-middleware";

const PORT = process.env.PORT || 3000;
const oxfordApiBaseUrl = "https://od-api.oxforddictionaries.com/api/v2";

const app = express();

app.use(morgan("dev"));
app.use(cors());

app.get("/", (_, res) => {
  res.send("Hello World");
});

app.use(
  "/api/word-search",
  createProxyMiddleware({
    target: `${oxfordApiBaseUrl}/search/en-us`,
    changeOrigin: true,
    pathRewrite: {
      ["^/api/word-search"]: "",
    },
  })
);

app.use(
  "/api/word-entries",
  createProxyMiddleware({
    target: `${oxfordApiBaseUrl}/entries/en-us`,
    changeOrigin: true,
    pathRewrite: {
      ["^/api/word-entries"]: "",
    },
  })
);

app.listen(PORT, () => {
  console.log(`Server is running in http://localhost:${PORT}`);
});
