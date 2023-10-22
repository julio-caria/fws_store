-- CreateTable
CREATE TABLE "Category" (
    "ID" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "slug" TEXT NOT NULL,
    "imageURL" TEXT NOT NULL,

    CONSTRAINT "Category_pkey" PRIMARY KEY ("ID")
);

-- CreateTable
CREATE TABLE "Product" (
    "ID" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "slug" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "basePrice" DECIMAL(8,2) NOT NULL,
    "imageURL" TEXT NOT NULL,
    "categoryId" TEXT NOT NULL,
    "discountPercentage" INTEGER NOT NULL DEFAULT 0,

    CONSTRAINT "Product_pkey" PRIMARY KEY ("ID")
);

-- AddForeignKey
ALTER TABLE "Product" ADD CONSTRAINT "Product_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES "Category"("ID") ON DELETE RESTRICT ON UPDATE CASCADE;
