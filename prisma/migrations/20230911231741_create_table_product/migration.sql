-- CreateEnum
CREATE TYPE "product_type" AS ENUM ('MP', 'PA', 'PI', 'PV', 'SC', 'SV');

-- CreateTable
CREATE TABLE "products" (
    "id" TEXT NOT NULL,
    "product_name" TEXT NOT NULL,
    "product_type" "product_type" NOT NULL,
    "storage_name" TEXT NOT NULL,

    CONSTRAINT "products_pkey" PRIMARY KEY ("id")
);
