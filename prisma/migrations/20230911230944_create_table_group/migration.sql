-- CreateEnum
CREATE TYPE "group_type" AS ENUM ('pc', 'kg', 'Veic', 'pla');

-- CreateTable
CREATE TABLE "groups" (
    "id" TEXT NOT NULL,
    "group_name" TEXT NOT NULL,
    "group_type" "group_type" NOT NULL,

    CONSTRAINT "groups_pkey" PRIMARY KEY ("id")
);
