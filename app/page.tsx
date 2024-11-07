import { UserButton } from "@clerk/nextjs";
import { auth } from "@clerk/nextjs/server";
import { redirect } from "next/navigation";

export default async function Home() {
  const { userId } = await auth();
  if (!userId) {
    redirect("/login");
  }
  return (
    <div className="flex min-h-screen w-screen flex-col items-center justify-center gap-4">
      <h1 className="text-3xl font-bold text-primary">finance.ai</h1>
      <UserButton showName />
    </div>
  );
}
