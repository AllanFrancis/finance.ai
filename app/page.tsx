import { Button } from "./_components/ui/button";

export default function Home() {
  return (
    <div className="flex min-h-screen w-screen flex-col items-center justify-center gap-4">
      <h1 className="text-primary text-3xl font-bold">finance.ai</h1>
      <Button>Click me</Button>
    </div>
  );
}
