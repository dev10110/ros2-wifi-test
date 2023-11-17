from launch import LaunchDescription
from launch_ros.actions import Node

def node(i):
    return Node(
            package='ping',
            namespace=f'pi{i}',
            executable='ping',
            name=f'ping_pi{i}', 
            parameters=[
                {"ping_rate_hz": 100.0}
                ]
            )

def generate_launch_description():
    return LaunchDescription([ node(i) for i in [2,3,5]])
