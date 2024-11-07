/*
  Warnings:

  - Added the required column `userId` to the `Transction` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Transction" ADD COLUMN     "userId" TEXT NOT NULL;
