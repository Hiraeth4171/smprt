#include <raylib.h>
#include <stdio.h>
#define WIDTH 800
#define HEIGHT 600

int main() {
    InitWindow(WIDTH, HEIGHT, "SMPRT");
    SetTargetFPS(60);
    while (!WindowShouldClose())
    {
        BeginDrawing();
        ClearBackground(RAYWHITE);
        DrawText("Hello, World!", 190, 200, 20, LIGHTGRAY);
        EndDrawing();
    }
    CloseWindow();
    return 0;
}
