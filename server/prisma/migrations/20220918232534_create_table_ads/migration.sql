-- DropIndex
DROP INDEX "Game_id_key";

-- CreateTable
CREATE TABLE "Ad" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "gameId" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "discord" TEXT NOT NULL,
    "yearsPlaying" INTEGER NOT NULL,
    "weekDays" TEXT NOT NULL,
    "hourEnd" INTEGER NOT NULL,
    "hourStart" INTEGER NOT NULL,
    "useVoiceChannel" BOOLEAN NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "Ad_gameId_fkey" FOREIGN KEY ("gameId") REFERENCES "Game" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
