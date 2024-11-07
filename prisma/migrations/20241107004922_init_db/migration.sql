-- CreateEnum
CREATE TYPE "TransctionPaymentMethod" AS ENUM ('CREDIT_CARD', 'DEBIT_CARD', 'BANK_TRANSFER', 'BANK_SLIP', 'CASH', 'PIX', 'OTHER');

-- CreateEnum
CREATE TYPE "TransctionType" AS ENUM ('DEPOSIT', 'EXPENSE', 'INVESTMENT');

-- CreateEnum
CREATE TYPE "TransctionCategory" AS ENUM ('HAUSING', 'TRANSPORTATION', 'FOOD', 'ENTERNTAINMENT', 'HEALTH', 'UTILITY', 'SALARY', 'EDUCATION', 'OTHER');

-- CreateTable
CREATE TABLE "Transction" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "type" "TransctionType" NOT NULL,
    "amount" DECIMAL(10,2) NOT NULL,
    "category" "TransctionCategory" NOT NULL,
    "paymentMethod" "TransctionPaymentMethod" NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Transction_pkey" PRIMARY KEY ("id")
);
