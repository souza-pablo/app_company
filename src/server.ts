import fastify from "fastify";
import { PrismaClient } from "@prisma/client";

const app = fastify();

const prisma = new PrismaClient();

app
  .listen({
    port: 3333,
  })
  .then(() => {
    console.log("HTTP server running on http://localhost:3333");
  });

app.get("/groups", async () => {
  return await prisma.group.findMany();
});

app.get("/storages", async () => {
  return await prisma.storage.findMany();
});

app.get("/products", async () => {
  return await prisma.product.findMany();
});
