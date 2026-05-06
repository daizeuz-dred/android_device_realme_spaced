#!/system/bin/bin/sh
# Wait for SurfaceFlinger to initialize
until [ "$(dumpsys SurfaceFlinger 2>/dev/null | wc -l)" -gt 0 ]; do
    sleep 1
done

# Disable HWC/Force GPU rendering
service call SurfaceFlinger 1008 i32 1
